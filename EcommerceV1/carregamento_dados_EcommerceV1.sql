USE ecommerceV1 ;
desc clients;
insert into clients (Fname,Mint,Lname,CPF,Address,DataNascimento) values
('Maria','M'  ,'Silva'   ,'123089456','rua 1, 22, carangola, flores','1980-04-05'),
('Mateus','O' ,'Pimentel','987654321','rua all, 92, volta redonda','2000-01-09'),
('Ricardo','F','Silva'   ,'456123789','rua sdf, 38, rio de janeiro','1985-12-20'),
('Julia','S'  ,'França'  ,'321456789','rua oidff, 34, caldas novas','1980-07-09'),
('Roberta','G','Assis'   ,'123450798','rua vinte, 35, rio branco','1985-06-28'),
('Isabela','M','Cruz'    ,'123006789','rua alta, 45, guarapari','1994-01-01');

-- produtos
desc product;
--  enum('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis')
insert into product (pName, classificationKids, category, Avaliacao, size, Valor) values
('Fone de ouvido'			,false,'Eletrônico','4','','250'),
('Barbie Elsa'				,true,'Brinquedos','3','','185'),
('Body Carters'				,true,'Vestimenta','5','','79'),
('Microfone Vedo - Youtuber',false,'Eletrônico','4','','299'),
('Sofá retratil'			,false,'Móveis'	,'3','3x57x80','1897'),
('Farinha de arroz'			,false,'Alimentos','2','','11'),
('Fire Stick Amazon'		,false,'Eletrônico','3','','199');


-- ordens de venda
desc orders;
insert into orders (idOrderClient, Status_Order, OrderDescription, ShippingCost, paymentCash) values
(1,Default,'Compra via APP',null,1),
(2,Default,'Compra via APP',50,0),
(3,'Confirmado',null,null,1),
(3,Default,'Compra via APP',25,1),
(3,Default,'Compra via Site',15,0),
(3,Default,'Compra via APP',0,0),
(4,Default,'Compra via Site',150,0);

-- desse jeito o campo Status_Order fica com valor nulo. Para usar o valor padrao precisamos usar a keyword 'default'
update orders set Status_Order = default where orders.Status_Order is null and idOrderClient >0;
select * from orders;

desc productorder;
insert into productorder (idPOProduct, idPOorder, PoQuantity, POStatus) values
(1,1,2,'Disponível'),
(2,1,1,'Disponível'),
(4,1,25,'Disponível'),
(3,2,1,'Disponível');

-- inserindo dados dos armazens
desc productstorage;

insert into productstorage (StorageAddress, quantity) values
('Rio de Janeiro',1000),
('Rio de Janeiro',500),
('São Paulo',10),
('São Paulo',100),
('São Paulo',10),
('Brasília',60);


-- tabela de vinculo entre os produtos e os depositos
desc prod_storagelocation;

insert into  prod_storagelocation(idLProduct,idLStorage, Location)  values
(1,2,'RJ'),
(2,6,'GO');


desc supplier;
insert into supplier (SocialName, CNPJ, contact) values
('Almeida e Filhos',123456789123456,'21924548798'),
('Eletronicos Silva',45612378912345,'22986764542'),
('Eletronicos Valma',98745612345685,'41578971369'),
('Atcadao elétrica',159487123456789,'11148996326');


desc productsupplier;
insert into productsupplier (idPSSupplier, idPSProduct, psQuantity) values
(1,1,505),
(1,2,405),
(2,4,15),
(3,3,78),
(2,5,10);


-- cadastrando os vendedores
desc seller;


insert into seller (SocialName, AbstName, CNPJ, CPF, Address, contact) values 
('Tech electronics'	,null			,'123456789123456',null		,'RJ','21547896321'),
('Botique Durgas'	,null			,null,'45689123460'			,'SP','11945789632'),
('Kids World'		,null			,null,'12346789101'			,'SP','12654789635'),
('Moveis e tudo +','Moveis em geral','123987654123456',null		,'MG','31965754020');


-- cadastrando os produtos de cada vendedor
desc productseller;

insert into productseller (IdSeller, idProduct, ProdQuantity) values 
(13,6,80),
(14,7,10),
(16,5,3);

