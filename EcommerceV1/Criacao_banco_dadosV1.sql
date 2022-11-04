-- drop database ecommerceV1;-- 

-----------------------------------------------------
-- Criando o database ecommerceV1
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ecommerceV1;
USE ecommerceV1 ;

-- -----------------------------------------------------
-- Tabela Cliente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Clients (
  idClient INT NOT NULL AUTO_INCREMENT primary key,
  Fname VARCHAR(10) NULL DEFAULT NULL,
  Mint VARCHAR(3) NULL,
  Lname VARCHAR(20) NULL,
  CPF CHAR(11) NOT NULL,
  Address VARCHAR(45) NULL DEFAULT NULL,
  DataNascimento DATE NOT NULL,
  constraint UNIQUE_CPF_client UNIQUE  (CPF));

alter table clients auto_increment=1;
-- -----------------------------------------------------
-- Tabela Produto
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Product (
  idProduct INT NOT NULL AUTO_INCREMENT primary key,
  pName VARCHAR(45) not NULL,
  classificationKids bool default false,
  category enum('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis') not NULL DEFAULT 'Eletrônico',
  Avaliacao float default 0,
  size varchar(10) comment 'dimensao do produto LxAxP',
  Valor float
);
alter table Product auto_increment=1;
-- -----------------------------------------------------
-- Tabela formas de pagamento
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS payments (
  idClient int,
  idPayment int,
  typePayment enum ('Boleto','Cartão','Dois Cartões'),
  LimitAvailable float,
  DateValid char(5) not null comment 'formato mm/aa',
  primary key (idClient, idPayment)
);

-- -----------------------------------------------------
-- Tabela Pedido
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Orders (
  idOrder INT NOT NULL AUTO_INCREMENT primary key,
  Status_Order ENUM('Cancelado','Confirmado','Em processamento')  DEFAULT 'Em processamento',
  OrderDescription VARCHAR(45) NULL DEFAULT NULL,
  idOrderClient INT NOT NULL,
  ShippingCost FLOAT NULL default 10,
  paymentCash bool default false comment 'se for boleto ou dinheiro esse campo fica em true',
  CONSTRAINT fk_Order_Clients
    FOREIGN KEY (idOrderClient)
    REFERENCES Clients (idClient)  
    );
alter table Orders auto_increment=1;

desc orders;

-- -----------------------------------------------------
-- Tabela Estoque
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS productStorage (
  idStorage INT NOT NULL AUTO_INCREMENT primary key,
  quantity int default 0,
  StorageAddress VARCHAR(45) NULL DEFAULT NULL
);
alter table productStorage auto_increment=1;

-- -----------------------------------------------------
-- Tabela Fornecedor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS supplier (
  idSupplier INT NOT NULL AUTO_INCREMENT primary key,
  SocialName VARCHAR(45) NULL DEFAULT NULL,
  CNPJ char(15) NULL DEFAULT NULL,
  contact char(11) not null, 
  constraint UNIQUE_SUPPLIER UNIQUE (CNPJ) 
);

alter table supplier auto_increment=1;
-- -----------------------------------------------------
-- Tabela Terceiro - Vendedor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Seller (
  idSeller INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  SocialName VARCHAR(255) NULL DEFAULT NULL,
  AbstName varchar(255),
  CNPJ char(15) NULL DEFAULT NULL,
  CPF char(11) NULL DEFAULT NULL,
  contact char(11) not null, 
  Address VARCHAR(255),
  CONSTRAINT unique_SocialName UNIQUE (SocialName) ,
  CONSTRAINT unique_CNPJ_seller UNIQUE (CNPJ) ,
  CONSTRAINT unique_CPF_seller UNIQUE (CPF) 
  
);
alter table Seller auto_increment=1;

-- -----------------------------------------------------
-- Tabela Produtos por Vendedor (terceiro)
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ProductSeller (
  IdSeller INT NOT NULL,
  idProduct INT NOT NULL,
  ProdQuantity INT not NULL DEFAULT 1,
  PRIMARY KEY (IdSeller, idProduct),
  CONSTRAINT fk_product_seller
    FOREIGN KEY (IdSeller)
    REFERENCES Seller(idSeller),
  CONSTRAINT fk_product_product
    FOREIGN KEY (idProduct)
    REFERENCES Product (idProduct)
    );

desc ProductSeller;


-- -----------------------------------------------------
-- Tabela Relação de Produto/pedido
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS productOrder (
  idPOProduct INT NOT NULL,
  idPOorder INT NOT NULL,
  PoQuantity INT not NULL DEFAULT 1,
  POStatus ENUM('Disponível', 'Sem estoque') NOT NULL DEFAULT 'Disponível',
  PRIMARY KEY (idPOProduct, idPOorder),
  CONSTRAINT fk_ProductOrder_seller
    FOREIGN KEY (idPOProduct)
    REFERENCES Product (idProduct),
  CONSTRAINT fk_Product_items
    FOREIGN KEY (idPOorder)
    REFERENCES Orders (idOrder)
);



-- -----------------------------------------------------
-- Tabela Produtos_nos_Estoque
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS prod_storageLocation (
  idLProduct INT NOT NULL,
  idLStorage INT NOT NULL,
  Quantidade INT,
  Location varchar(45),
  PRIMARY KEY (idLProduct, idLStorage),
  CONSTRAINT fk_prod_storageLocation_Product
    FOREIGN KEY (idLProduct)
    REFERENCES Product (idProduct),
  CONSTRAINT fk_prod_storageLocation
    FOREIGN KEY (idLStorage)
    REFERENCES productStorage (idStorage)
);

-- -----------------------------------------------------
-- Tabela Fornecedor Disponibilizando um produto
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ProductSupplier (
  idPSSupplier INT NOT NULL,
  idPSProduct INT NOT NULL,
  psQuantity int not null,
  PRIMARY KEY (idPSSupplier, idPSProduct),
  CONSTRAINT fk_ProductSeller_Seller
    FOREIGN KEY (idPSSupplier)
    REFERENCES Supplier (idSupplier),
 CONSTRAINT fk_ProductSeller_Product
    FOREIGN KEY (idPSProduct)
    REFERENCES Product (idProduct)
);

show tables;