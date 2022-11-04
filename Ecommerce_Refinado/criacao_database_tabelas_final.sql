-- criacao do banco de dados para o cenario de e-commerce
DROP database IF EXISTS ecommerce_refinado;
create database ecommerce_refinado;
use ecommerce_refinado;
-- -----------------------------------------------------
-- Tabela Cliente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cliente (
  idCliente INT NOT NULL auto_increment,
  pNome VARCHAR(10) NOT NULL,
  Nome_do_Meio VARCHAR(3) NULL,
  Sobrenome VARCHAR(20) NULL,
  CPF CHAR(11)  COMMENT 'CPF  do cliente',
  Endereco VARCHAR(100) NULL COMMENT 'Atributo composto por rua, bairro, complemento, cidade e estado',
  Data_Nascimento DATE NOT NULL,
  CNPJ CHAR (15) COMMENT 'CNPJ  do cliente',
  PRIMARY KEY (idCliente),
   CONSTRAINT unique_CNPJ_CLIENTE unique(CNPJ),
  CONSTRAINT unique_CPF_CLIENTE unique(CPF),
  CONSTRAINT CK_CPF_OU_CNPJ_CLIENTE CHECK ((CNPJ IS NULL AND CPF IS NOT NULL) OR (CPF IS NULL AND CNPJ IS NOT NULL))
  );
  
alter table Cliente auto_increment=1;
-- -----------------------------------------------------
-- Tabela Cartoes_cliente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cartoes_cliente (
  idFormas_pagamento INT NOT NULL auto_increment,
  Tipo_pagamento VARCHAR(45) NOT NULL COMMENT 'Cartao credito, cartao debito',
  Cliente_idCliente INT NOT NULL,
  Numero_cartao VARCHAR(45) NOT NULL,
  Validade VARCHAR(45) NOT NULL,
  Nome_Titular VARCHAR(45) NOT NULL,
  Bandeira VARCHAR(45) NOT NULL,
  PRIMARY KEY (idFormas_pagamento, Cliente_idCliente),
  CONSTRAINT fk_Formas_pagamento_Cliente
    FOREIGN KEY (Cliente_idCliente)
    REFERENCES Cliente (idCliente));

alter table Cartoes_cliente auto_increment=1;
-- -----------------------------------------------------
-- Tabela Pedido
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Pedido (
  idPedido INT NOT NULL auto_increment,
  StatusPedido ENUM('Cancelado', 'Confirmado', 'Em processamento', 'Enviado') NOT NULL default 'Em processamento',
  Descricao VARCHAR(45) NULL,
  DataPedido DATETIME NOT NULL DEFAULT current_timestamp,
  Cliente_idCliente INT NOT NULL,
  Valor_Frete FLOAT NULL,
  Data_envio DATETIME NULL,
  codigo_rastreio VARCHAR(45) NULL,
  PRIMARY KEY (idPedido, Cliente_idCliente),
  CONSTRAINT fk_Pedido_Cliente1
    FOREIGN KEY (Cliente_idCliente)
    REFERENCES Cliente (idCliente));

alter table Pedido auto_increment=1;
-- -----------------------------------------------------
-- Tabela Produto
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Produto (
  idProduto INT NOT NULL auto_increment,
  Item_para_crianca bool not null default false,
  Categoria enum('Eletronicos','Vestimenta','Brinquedos','Alimentos') NOT NULL,
  Descricao VARCHAR(45) NOT NULL,
  Valor FLOAT NOT NULL,
  Size varchar (10) comment 'Dimensoes do produto',
  Avaliacao float default 0 comment 'Nota de avaliação dos clientes de 0 a 10',
  check (Avaliacao between 0 and 10),
  PRIMARY KEY (idProduto));

alter table Produto auto_increment=1;
-- -----------------------------------------------------
-- Tabela Fornecedor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Fornecedor (
  idFornecedor INT NOT NULL auto_increment,
  Razao_Social VARCHAR(45) NOT NULL,
  CNPJ VARCHAR(45) NOT NULL,
  Contato VARCHAR(45) NOT NULL COMMENT 'Telefone/email ou qualquer outra forma de contato com o fornecedor',
  PRIMARY KEY (idFornecedor),
  CONSTRAINT UK_CNPJ_FORNECEDOR UNIQUE INDEX (CNPJ));

alter table Fornecedor auto_increment=1;
-- -----------------------------------------------------
-- Tabela Disponibilizando
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Disponibilizando (
  Produto_idProduto INT NOT NULL,
  Fornecedor_idFornecedor INT NOT NULL,
  Quantidade int not null default 0,
  PRIMARY KEY (Produto_idProduto, Fornecedor_idFornecedor),
  CONSTRAINT fk_Produto_has_Fornecedor_Produto1
    FOREIGN KEY (Produto_idProduto)
    REFERENCES Produto (idProduto),
  CONSTRAINT fk_Produto_has_Fornecedor_Fornecedor1
    FOREIGN KEY (Fornecedor_idFornecedor)
    REFERENCES Fornecedor (idFornecedor));


-- -----------------------------------------------------
-- Tabela Estoque
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Estoque (
  idEstoque INT NOT NULL auto_increment,
  Local VARCHAR(45) NOT NULL,
  PRIMARY KEY (idEstoque));

alter table Estoque auto_increment=1;
-- -----------------------------------------------------
-- Tabela Produto_por_Estoque
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Produto_por_Estoque (
  Produto_idProduto INT NOT NULL,
  Estoque_idEstoque INT NOT NULL,
  Quantidade INT NOT NULL,
  PRIMARY KEY (Produto_idProduto, Estoque_idEstoque),
  CONSTRAINT fk_Produto_has_Estoque_Produto1
    FOREIGN KEY (Produto_idProduto)
    REFERENCES Produto (idProduto),
  CONSTRAINT fk_Produto_has_Estoque_Estoque1
    FOREIGN KEY (Estoque_idEstoque)
    REFERENCES Estoque (idEstoque));


-- -----------------------------------------------------
-- Tabela Relacao_de_produtos_por_pedido
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Relacao_de_produtos_por_pedido (
  Pedido_idPedido INT NOT NULL,
  Produto_idProduto INT NOT NULL,
  Quantidade INT NOT NULL,
  PRIMARY KEY (Pedido_idPedido, Produto_idProduto),
  CONSTRAINT fk_Pedido_has_Produto_Pedido1
    FOREIGN KEY (Pedido_idPedido)
    REFERENCES Pedido (idPedido),
  CONSTRAINT fk_Pedido_has_Produto_Produto1
    FOREIGN KEY (Produto_idProduto)
    REFERENCES Produto (idProduto));


-- -----------------------------------------------------
-- Tabela Eventos_do_pedido
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Eventos_do_pedido (
  idEventos_do_pedido INT NOT NULL auto_increment,
  Data_evento DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  Desc_evento VARCHAR(45) NOT NULL COMMENT 'descrição do evento e sua data hora de acontecimento. Exemplos:\nPedido registrado\nPagamento Evetuado\nPagamento recusado\nPedido cancelado\nPedido enviado\nPedido recebido\nPedido devolvido',
  Alerta_enviado TINYINT NULL COMMENT 'Sinaliza se esse evento já foi comunicado ao cliente, por exemplo por email, sms, whatsapp, etc',
  Pedido_idPedido INT NOT NULL,
  PRIMARY KEY (idEventos_do_pedido, Pedido_idPedido),
  CONSTRAINT fk_Eventos_do_pedido_Pedido1
    FOREIGN KEY (Pedido_idPedido)
    REFERENCES Pedido (idPedido));

alter table Eventos_do_pedido auto_increment=1;
-- -----------------------------------------------------
-- Tabela Vendedor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Vendedor (
  idVendedor INT NOT NULL auto_increment,
  Razao_social VARCHAR(45) NOT NULL,
  Endereco VARCHAR(45) NOT NULL,
  Estado char(2) not null,
  CNPJ CHAR(15) ,
  CPF CHAR(11) ,
  Contato VARCHAR(45) NOT NULL COMMENT 'Telefone/email ou qualquer outra forma de contato com o vendedor',
  Nome_Fantasia VARCHAR(45) NULL,
  CONSTRAINT CK_CPF_OU_CNPJ_VENDEDOR CHECK ((CNPJ IS NULL AND CPF IS NOT NULL) OR (CPF IS NULL AND CNPJ IS NOT NULL)),
  PRIMARY KEY (idVendedor),
  constraint UK_CPF_VENDEDOR UNIQUE (CPF),
  constraint UK_CNPJ_VENDEDOR UNIQUE (CNPJ));

alter table Vendedor auto_increment=1;
-- -----------------------------------------------------
-- Tabela Produtos_por_vendedor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Produtos_por_vendedor (
  Vendedor_idVendedor INT NOT NULL,
  Produto_idProduto INT NOT NULL,
  Quantidade INT NOT NULL,
  PRIMARY KEY (Vendedor_idVendedor, Produto_idProduto),
  CONSTRAINT fk_Vendedor_has_Produto_Vendedor1
    FOREIGN KEY (Vendedor_idVendedor)
    REFERENCES Vendedor (idVendedor),
  CONSTRAINT fk_Vendedor_has_Produto_Produto1
    FOREIGN KEY (Produto_idProduto)
    REFERENCES Produto (idProduto));


-- -----------------------------------------------------
-- Tabela Formas_pagamento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Formas_pagamento (
  idFormas_pagamento INT NOT NULL auto_increment,
  Valor_pago FLOAT NOT NULL,
  PagamentoCash bool NOT NULL COMMENT 'True quando o pagamento for dinheiro, Boleto, pix. False quando cartao de debito ou credito. Qdo selecionado cartao há um vinculo com a entidade cartoes_cliente',
  Pedido_idPedido INT NOT NULL,
  Cartoes_cliente_idFormas_pagamento INT NULL COMMENT 'Pode ser nulo se o cliente nao usar cartao para pagar',
  PRIMARY KEY (idFormas_pagamento, Pedido_idPedido),
  CONSTRAINT fk_Formas_pagamento_Pedido1
    FOREIGN KEY (Pedido_idPedido)
    REFERENCES Pedido (idPedido),
  CONSTRAINT fk_Formas_pagamento_Cartoes_cliente1
    FOREIGN KEY (Cartoes_cliente_idFormas_pagamento)
    REFERENCES Cartoes_cliente (idFormas_pagamento));
    
    alter table Formas_pagamento auto_increment=1;
