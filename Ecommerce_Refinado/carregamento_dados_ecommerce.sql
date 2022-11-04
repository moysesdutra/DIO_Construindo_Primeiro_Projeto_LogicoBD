/*
Usei o site https://generatedata.com/generator para gerar os dados abaixo

*/

use ecommerce_refinado;

INSERT INTO cliente (pNome,Sobrenome,CPF,Endereco,Data_nascimento)
VALUES
  ("Zenia","Glover",5823211134,"480-1820 Nisi Av.","2022-09-22"),
  ("Fallon","Rasmussen",38309547526,"1775 Vel, Road","2022-06-25"),
  ("Ursa","Hawkins",36864235270,"Ap #342-6784 A St.","2023-08-09"),
  ("Micah","Craig",77574278332,"Ap #647-4304 Et Ave","2022-08-14"),
  ("Carl","Hunt",55091360479,"7288 Arcu. St.","2023-06-03"),
  ("Gray","Giles",88056150006,"Ap #840-4536 Dui Road","2022-10-09"),
  ("Kylie","Whitehead",70961544294,"Ap #399-3007 Nulla Ave","2023-09-14"),
  ("Cyrus","Manning",72030888755,"P.O. Box 791, 234 Risus. St.","2023-02-01"),
  ("Dean","George",53666387057,"737-1827 Amet Rd.","2022-01-30"),
  ("Leo","Holcomb",54289739974,"966-5900 Elit, Street","2023-10-14");

update cliente set nome_do_meio = substring(pnome,1,3) where idCliente >0; -- carregando um valor no campo nome do meio

-- FORNECEDORES

INSERT INTO fornecedor (Razao_social,CNPJ,cONTATO)
VALUES
  ("Sapien Aenean Limited",701405140390800,"668-1233"),
  ("Mi Limited",199461356100894,"1-972-384-4201"),
  ("Proin Vel Nisl Company",169968142904820,"266-5414"),
  ("Eleifend Non Incorporated",891006566219802,"571-1820"),
  ("Imperdiet Non Corporation",980171843595475,"1-886-211-0852"),
  ("Eros Associates",132443969841136,"1-834-248-2703"),
  ("Hendrerit Consectetuer Cursus Corp.",831826231543171,"1-731-287-4863"),
  ("Conubia Corp.",242802293908131,"322-4018"),
  ("Cursus Nunc Company",113197847741789,"1-342-669-3594"),
  ("Lacus Limited",196591826742373,"1-727-547-8833"),
  ("Quisque Fringilla Ltd",436075027439422,"1-601-479-7395"),
  ("Egestas Blandit Nam PC",944478109910625,"1-320-653-4803"),
  ("Ut Incorporated",497268439429455,"1-672-265-6338"),
  ("Malesuada Fames Ac Institute",571253152231023,"102-4575"),
  ("Eget Laoreet Posuere Corp.",847055988282857,"1-685-263-7984");
  
  
  -- produtos
  INSERT INTO Produto (ITEm_para_crianca,Categoria,Descricao,Valor,Avaliacao)
VALUES
  (false,"Vestimenta","per inceptos hymenardiet ornare.","77",6),
  (true,"Vestimenta","malesuada fringilla t. Proin velit.","89",5),
  (true,"Alimentos","odio tristique pharetnsectetuer rhoncus.","74",3),
  (false,"Brinquedos","metus. In lorem. Doulis, lacus","38",7),
  (true,"Alimentos","primis in faucibus oria Curae","96",7),
  (false,"Brinquedos","vulputate, posuere nc som.","6",3),
  (false,"Brinquedos","iaculis aliquet diastique ac,","4",10),
  (false,"Vestimenta","Suspendisse sed doltrum eu,","88",1),
  (true,"Eletronicos","vel arcu. Curabituronec","70",3),
  (true,"Alimentos","facilisis lorem tristonvtus","45",1),
  (false,"Alimentos","non quam. Pellentesqs et netus et","19",10),
  (false,"Alimentos","ligula eu enim. Etiaunt orci","22",3),
  (true,"Alimentos","eget varius ultrices, tellus","39",2),
  (false,"Vestimenta","libero. Proin sed tas eget","21",8),
  (true,"Alimentos","Suspendisse sed dolorum eu,","82",4),
  (false,"Eletronicos","Sed pharetra, felim porta elit,","27",7),
  (false,"Alimentos","a, arcu. Sed et libes","85",4),
  (true,"Alimentos","Quisque fringilla euircu. Sed eu","25",5),
  (true,"Brinquedos","euismod urna. Nullamviverra. Maecenas","92",1),
  (true,"Eletronicos","elit elit fermentum nunc.","11",6);


-- vendedor
INSERT INTO Vendedor (Razao_social,Endereco,eSTADO,Nome_Fantasia,Contato,CPF,CNPJ)
VALUES
  ("Orci Lobortis Augue Inc.","994-7158 Et Road","SC","Integer Vulputate Risus PC","738-8867",52319349950,NULL),
  ("Suspendisse Sagittis Corporation","356-733 Eleifend Street","PB","Eget Metus Company","398-1355",42069537506,NULL),
  ("Lectus Pede Foundation","P.O. Box 915, 4173 Vel Rd.","RS","Dui Cum Corporation","528-2819",NULL,776284306149973),
  ("Faucibus Lectus LLC","1958 Hendrerit St.","MA","Dolor Sit PC","102-5585",18684686578,NULL),
  ("Enim Condimentum Ltd","608-7690 Ac Road","PR","Eu Odio Phasellus LLC","1-371-654-5240",NULL,553045417262791),
  ("Dui Semper Inc.","Ap #871-249 Et Ave","GO","Convallis Inc.","1-905-521-7199",NULL,952545297933144),
  ("Nibh Associates","Ap #546-1323 Id Rd.","RS","Non Massa Non Corp.","115-5614",40081011516,NULL),
  ("Risus Quisque Libero Corporation","P.O. Box 639, 2496 Sapien, Street","SP","Aenean Corporation","573-0741",NULL,748916365818085),
  ("Sit Amet Inc.","354-1818 Curabitur Road","MG","Eu Inc.","1-134-820-4133",63974787908,NULL),
  ("Euismod Incorporated","P.O. Box 493, 1538 Lorem Rd.","BA","Vulputate Lacus Institute","1-561-309-4672",NULL,488213111558794),
  ("Augue Eu Limited","P.O. Box 189, 1564 Ut Street","PR","Eget Lacus Limited","1-931-958-7526",23841225087,NULL),
  ("In At Associates","Ap #752-7764 Cras St.","RS","Metus Urna Limited","1-226-467-6044",NULL,416579539268689),
  ("Lectus Pede Associates","6809 Natoque Avenue","SP","Facilisis LLC","1-547-458-3536",NULL,385580297166234),
  ("Nisi Inc.","P.O. Box 131, 7730 Nulla Ave","RJ","Rhoncus Id Institute","895-3238",13400503984,NULL),
  ("Semper Tellus LLP","Ap #404-7571 Lacus. Street","MG","Lorem Eu Industries","1-971-769-3333",NULL,534190022503711),
  ("Iaculis LLP","663-1680 Iaculis Rd.","RS","In Consectetuer PC","1-686-826-4123",57249476367,NULL),
  ("Cras Company","Ap #632-472 Ut, St.","MA","Sit Amet Corporation","1-746-989-5138",38582363062,NULL),
  ("Phasellus In Felis Incorporated","Ap #444-9672 Sem Rd.","RS","Natoque Industries","646-7355",NULL,469922090170421),
  ("Sagittis Semper Inc.","8301 Mauris Av.","PB","Dapibus Id LLP","243-3572",NULL,156747365405627),
  ("Nunc Sollicitudin Commodo Corp.","420-4307 Ornare Av.","PR","Nunc Ltd","561-0776",20897727884,NULL);

-- estoques
INSERT INTO Estoque (Local)
VALUES
  ("Juiz de Fora"),
  ("Curitiba"),
  ("Canoas"),
  ("Açailândia"),
  ("Caxias do Sul"),
  ("Balsas"),
  ("Goiânia"),
  ("Cajazeiras"),
  ("Petrolina"),
  ("São João de Meriti");


-- pedidos
INSERT INTO Pedido (StatusPedido,Descricao,DataPedido,Cliente_idCliente,Valor_Frete,Data_envio,codigo_rastreio)
VALUES
  ("Em processamento","lectus convallis est, vitae sodales","2021-09-11 18:17:23",5,"78.80","2021-11-01 19:45:35","LV47HTUI1506347618533"),
  ("Cancelado","In","2021-08-06 11:19:34",1,"53.52","2021-10-28 13:56:12","GL6503316686526172"),
  ("Confirmado","diam","2021-08-26 23:41:10",1,"23.92","2021-10-25 08:26:05","TR824556444189251904237480"),
  ("Em processamento","dui augue eu tellus. Phasellus","2021-09-15 05:03:37",4,"21.66","2021-11-02 15:19:00","TR850441217773522649272432"),
  ("Em processamento","vehicula et, rutrum","2021-09-15 15:29:32",3,"10.93","2021-10-27 04:17:55","SI82124071776244768"),
  ("Confirmado","elit, a feugiat tellus","2021-09-05 22:18:35",6,"57.21","2021-10-27 00:32:15","PK4682764288526479700528"),
  ("Confirmado","porta elit, a feugiat tellus","2021-08-21 14:19:48",9,"33.95","2021-10-22 05:58:58","CY02823817258862603756167975"),
  ("Cancelado","vel, convallis in, cursus","2021-09-12 18:08:39",1,"13.31","2021-11-02 16:50:34","HR8936863189259445168"),
  ("Em processamento","ornare, libero","2021-09-06 07:24:38",9,"52.91","2021-10-25 22:17:07","GL5373346022066145"),
  ("Enviado","mauris ut mi. Duis risus","2021-08-26 03:57:42",8,"52.31","2021-10-21 12:44:49","GI35KDJX185634528951943"),
  ("Enviado","consequat purus. Maecenas libero est,","2021-08-23 08:50:56",10,"37.81","2021-10-26 09:04:04","MK11234507087394763"),
  ("Confirmado","velit dui, semper et, lacinia vitae,","2021-09-05 10:07:51",5,"65.93","2021-10-31 16:17:09","MR0732314601234972738647051"),
  ("Confirmado","hendrerit consectetuer, cursus et,","2021-09-05 08:33:52",8,"13.53","2021-11-01 13:44:57","GE11757711861974747874"),
  ("Enviado","et netus et","2021-09-10 08:33:04",8,"70.54","2021-10-30 15:59:01","IS137767370645726547657354"),
  ("Em processamento","penatibus et magnis","2021-09-12 17:10:18",5,"28.47","2021-10-24 01:29:08","MD2162693643943002163192"),
  ("Cancelado","Nam","2021-09-28 22:21:14",4,"24.20","2021-10-21 00:41:18","DE58486411211656027261"),
  ("Cancelado","nibh. Aliquam","2021-09-14 21:54:18",2,"1.72","2021-10-23 11:32:15","ME54766669628573308441"),
  ("Confirmado","eu dolor egestas rhoncus. Proin","2021-08-29 12:01:07",2,"76.55","2021-10-28 12:34:05","SI61465854729512173"),
  ("Cancelado","consectetuer rhoncus. Nullam velit dui,","2021-09-16 13:24:39",7,"18.04","2021-10-22 17:15:36","MC1066386420373901862591329"),
  ("Cancelado","Fusce diam nunc,","2021-09-25 18:57:45",2,"35.60","2021-10-28 14:20:43","FI0351622595579636"),
  ("Enviado","Aliquam nec","2021-08-08 12:22:27",3,"84.53","2021-10-25 13:35:23","LV18VBYK2113160881122"),
  ("Enviado","eu tellus.","2021-08-03 11:18:11",6,"18.06","2021-10-24 20:36:24","ME95434964133120741056"),
  ("Confirmado","dictum cursus. Nunc mauris","2021-08-28 03:43:37",4,"8.07","2021-10-30 21:45:14","VG4772387372146585424222"),
  ("Em processamento","ligula consectetuer rhoncus. Nullam velit","2021-08-11 22:49:25",6,"53.07","2021-10-21 00:55:11","PS274512752975254644334826791"),
  ("Confirmado","scelerisque, lorem ipsum sodales purus,","2021-09-16 10:49:32",4,"22.65","2021-10-31 08:05:28","LT120424977887428433");



-- eventos do pedido ---------------------------
INSERT INTO Eventos_do_pedido (Data_evento,Desc_evento,Alerta_Enviado,Pedido_idPedido)
VALUES
  ("2021-10-22 16:38:28","Pedido saiu para entrega","0",10),
  ("2021-10-25 00:20:57","Pedido saiu para entrega","1",18),
  ("2021-10-26 07:22:23","Pedido criado","0",23),
  ("2021-10-23 07:17:57","Pedido saiu para entrega","1",8),
  ("2021-10-31 15:56:53","Pedido entregue","0",4),
  ("2021-10-26 13:08:20","Pagamento Confirmado","1",2),
  ("2021-10-23 22:40:04","Pagamento Confirmado","1",20),
  ("2021-10-25 23:29:15","Pagamento em andamento","1",21),
  ("2021-11-01 07:39:21","Pedido criado","0",19),
  ("2021-10-30 00:30:44","Pagamento em andamento","1",23),
  ("2021-10-31 13:21:23","Pagamento Confirmado","0",24),
  ("2021-10-22 17:37:17","Pedido criado","0",1),
  ("2021-10-25 21:37:05","Pagamento em andamento","0",18),
  ("2021-10-30 14:25:20","Pedido enviado a transportadora","0",8),
  ("2021-10-27 08:33:24","Pagamento em andamento","1",12),
  ("2021-10-26 07:27:06","Pedido entregue","1",8),
  ("2021-10-27 13:02:28","Pedido saiu para entrega","0",16),
  ("2021-10-30 11:45:42","Pedido entregue","0",13),
  ("2021-10-27 03:25:16","Pedido em rota de entrega","1",24),
  ("2021-10-30 11:21:44","Pagamento em andamento","0",5),
  ("2021-10-21 21:45:00","Pedido saiu para entrega","1",21),
  ("2021-10-22 22:37:56","Pedido em rota de entrega","1",12),
  ("2021-10-23 05:31:35","Pagamento em andamento","1",24),
  ("2021-10-22 01:01:11","Pedido enviado a transportadora","1",20),
  ("2021-10-28 15:37:23","Pedido em rota de entrega","0",23),
  ("2021-10-31 03:12:38","Pagamento em andamento","0",6),
  ("2021-11-01 18:27:21","Pedido em preparação","1",14),
  ("2021-10-27 18:35:47","Pedido saiu para entrega","1",10),
  ("2021-10-30 00:52:57","Pedido enviado a transportadora","1",3),
  ("2021-10-25 15:02:19","Pedido entregue","1",15),
  ("2021-10-20 18:49:05","Pedido saiu para entrega","1",21),
  ("2021-11-02 12:57:11","Pedido enviado a transportadora","1",11),
  ("2021-10-28 18:40:59","Pagamento Confirmado","1",17),
  ("2021-10-28 08:59:37","Pedido entregue","1",6),
  ("2021-11-02 01:52:07","Pedido saiu para entrega","0",2),
  ("2021-10-26 00:04:07","Pagamento em andamento","1",2),
  ("2021-11-01 05:29:52","Pagamento em andamento","0",14),
  ("2021-10-26 21:15:02","Pedido saiu para entrega","1",14),
  ("2021-10-27 16:58:57","Pedido entregue","0",13),
  ("2021-10-26 13:27:58","Pedido em rota de entrega","0",7),
  ("2021-10-27 17:46:20","Pedido em rota de entrega","0",12),
  ("2021-10-22 20:41:10","Pedido saiu para entrega","0",3),
  ("2021-10-21 04:57:56","Pagamento em andamento","1",5),
  ("2021-10-25 08:56:50","Pedido criado","0",9),
  ("2021-10-25 00:41:54","Pedido em preparação","1",11),
  ("2021-10-24 12:20:21","Pedido saiu para entrega","1",14),
  ("2021-11-01 00:35:31","Pagamento Confirmado","0",14),
  ("2021-10-27 17:59:51","Pagamento Confirmado","0",11),
  ("2021-10-28 12:44:30","Pedido saiu para entrega","0",24),
  ("2021-10-25 15:03:39","Pedido entregue","0",19),
  ("2021-10-23 23:32:25","Pagamento Confirmado","1",19),
  ("2021-10-29 02:12:43","Pedido entregue","1",23),
  ("2021-11-01 01:06:29","Pagamento Confirmado","0",24),
  ("2021-11-01 05:41:09","Pedido saiu para entrega","0",19),
  ("2021-10-23 06:44:04","Pedido criado","1",24),
  ("2021-10-28 08:09:03","Pedido enviado a transportadora","1",4),
  ("2021-11-01 22:21:58","Pedido em preparação","0",1),
  ("2021-10-31 01:12:21","Pedido entregue","1",19),
  ("2021-10-23 07:20:17","Pedido em rota de entrega","0",13),
  ("2021-10-27 19:22:06","Pedido saiu para entrega","0",8),
  ("2021-10-21 19:15:35","Pedido enviado a transportadora","0",2),
  ("2021-10-21 20:38:50","Pagamento Confirmado","0",7),
  ("2021-10-29 08:52:25","Pedido em preparação","0",4),
  ("2021-10-25 12:27:55","Pedido em rota de entrega","0",17),
  ("2021-10-28 12:57:18","Pedido em rota de entrega","1",22),
  ("2021-10-28 09:04:34","Pedido criado","1",7),
  ("2021-10-28 12:17:16","Pedido entregue","1",24),
  ("2021-10-25 05:00:06","Pagamento Confirmado","0",7),
  ("2021-10-23 01:18:46","Pedido saiu para entrega","1",11),
  ("2021-11-01 14:57:56","Pagamento em andamento","0",20),
  ("2021-10-24 23:00:35","Pedido saiu para entrega","1",22),
  ("2021-10-30 17:08:02","Pedido entregue","0",19),
  ("2021-10-30 23:31:09","Pedido entregue","0",5),
  ("2021-10-24 05:43:56","Pedido criado","0",5),
  ("2021-10-26 06:07:41","Pedido entregue","0",11),
  ("2021-10-21 23:19:22","Pedido em rota de entrega","1",14),
  ("2021-11-01 05:03:42","Pedido enviado a transportadora","1",13),
  ("2021-10-29 14:47:36","Pedido em rota de entrega","1",2),
  ("2021-10-28 21:51:09","Pedido em rota de entrega","1",24),
  ("2021-11-01 18:26:39","Pedido entregue","1",6),
  ("2021-10-27 18:05:47","Pedido entregue","1",6),
  ("2021-10-21 11:20:52","Pedido entregue","0",23),
  ("2021-10-26 19:57:11","Pedido enviado a transportadora","1",15),
  ("2021-10-26 09:22:01","Pedido criado","0",2),
  ("2021-10-31 23:32:20","Pedido enviado a transportadora","1",9),
  ("2021-10-30 09:05:58","Pedido em rota de entrega","1",22),
  ("2021-10-31 19:49:02","Pagamento em andamento","1",13),
  ("2021-10-30 04:28:06","Pedido enviado a transportadora","1",23),
  ("2021-10-29 08:18:48","Pedido saiu para entrega","0",24),
  ("2021-10-21 12:55:17","Pagamento Confirmado","0",18),
  ("2021-10-29 09:22:16","Pedido saiu para entrega","1",3),
  ("2021-11-02 00:40:44","Pedido criado","0",19),
  ("2021-11-01 09:42:16","Pedido enviado a transportadora","1",15),
  ("2021-10-31 22:26:22","Pedido saiu para entrega","1",15),
  ("2021-10-23 12:27:29","Pedido em preparação","1",12),
  ("2021-11-01 17:21:41","Pedido em rota de entrega","1",9),
  ("2021-10-24 05:44:48","Pedido criado","0",9),
  ("2021-10-29 07:41:17","Pedido saiu para entrega","0",21),
  ("2021-10-28 12:50:59","Pagamento Confirmado","1",23),
  ("2021-10-21 04:48:34","Pedido saiu para entrega","1",1),
  ("2021-10-23 02:10:07","Pagamento em andamento","1",14),
  ("2021-10-29 10:31:51","Pedido em preparação","0",10),
  ("2021-10-22 01:18:29","Pagamento Confirmado","1",4),
  ("2021-10-23 02:19:41","Pedido entregue","1",19),
  ("2021-11-01 23:55:23","Pedido enviado a transportadora","0",3),
  ("2021-11-02 15:14:31","Pagamento em andamento","0",18),
  ("2021-10-30 05:58:49","Pedido em rota de entrega","0",7),
  ("2021-10-30 08:14:48","Pedido saiu para entrega","0",20),
  ("2021-10-23 05:27:31","Pedido criado","1",25),
  ("2021-10-31 03:47:31","Pagamento Confirmado","0",18),
  ("2021-10-31 20:33:44","Pagamento em andamento","1",14),
  ("2021-10-27 13:31:21","Pedido em preparação","0",24),
  ("2021-10-24 12:36:16","Pedido criado","1",4),
  ("2021-11-02 17:33:01","Pedido criado","1",21),
  ("2021-10-31 21:19:08","Pedido em preparação","1",24),
  ("2021-10-22 11:24:54","Pedido em rota de entrega","0",8),
  ("2021-11-01 09:23:58","Pagamento Confirmado","1",23),
  ("2021-10-21 01:45:40","Pedido criado","1",3),
  ("2021-11-02 11:21:48","Pedido entregue","1",19),
  ("2021-10-24 00:48:48","Pedido em rota de entrega","0",4),
  ("2021-10-29 11:12:26","Pedido enviado a transportadora","1",12),
  ("2021-10-23 12:27:28","Pagamento Confirmado","0",9),
  ("2021-10-24 11:51:24","Pedido em preparação","1",16),
  ("2021-11-02 12:38:35","Pedido enviado a transportadora","0",13),
  ("2021-10-25 05:07:11","Pedido saiu para entrega","1",16),
  ("2021-11-01 16:02:59","Pedido criado","1",5),
  ("2021-10-31 08:39:51","Pedido enviado a transportadora","1",24),
  ("2021-10-21 19:12:36","Pedido saiu para entrega","0",8),
  ("2021-10-31 03:10:02","Pedido criado","1",7),
  ("2021-10-22 03:29:20","Pedido criado","1",17),
  ("2021-10-31 21:45:49","Pedido entregue","1",10),
  ("2021-10-30 22:48:44","Pagamento em andamento","0",25),
  ("2021-10-31 22:54:22","Pedido saiu para entrega","1",2),
  ("2021-11-01 17:37:28","Pagamento Confirmado","0",8),
  ("2021-10-22 16:08:49","Pedido criado","1",3),
  ("2021-11-01 15:57:47","Pedido enviado a transportadora","0",19),
  ("2021-11-01 13:31:37","Pedido enviado a transportadora","1",20),
  ("2021-10-23 10:15:22","Pedido criado","0",2),
  ("2021-10-31 07:16:46","Pagamento em andamento","1",1),
  ("2021-10-21 12:53:57","Pedido em preparação","1",8),
  ("2021-10-21 09:06:35","Pedido entregue","0",16),
  ("2021-10-30 14:05:18","Pagamento em andamento","0",4),
  ("2021-10-24 10:31:07","Pagamento Confirmado","1",22),
  ("2021-10-30 00:29:27","Pagamento em andamento","0",24),
  ("2021-10-29 17:59:50","Pedido entregue","0",24),
  ("2021-10-28 18:48:47","Pedido criado","0",19),
  ("2021-10-31 17:42:44","Pedido saiu para entrega","0",7),
  ("2021-10-25 10:31:36","Pedido em preparação","1",22),
  ("2021-10-31 16:33:35","Pedido enviado a transportadora","1",16),
  ("2021-10-25 16:40:25","Pedido saiu para entrega","1",4);

-- produtos por pedido ------
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (14,1,35),
  (10,7,43),
  (3,1,11),
  (15,1,66),
  (12,4,68),
  (8,13,15),
  (20,12,95),
  (18,16,7),
  (2,7,16),
  (2,15,85);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (8,2,9),
  (13,8,34),
  (10,6,67),
  (11,13,60),
  (24,16,52),
  (15,10,74),
  (18,12,70),
  (16,10,23),
  (21,8,93),
  (17,2,71);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (8,10,47),
  (10,2,10),
  (7,2,42),
  (3,14,19),
  (4,2,87),
  (14,15,6),
  (4,14,26),
  (19,12,84),
  (13,5,91),
  (19,19,22);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (16,4,35),
  (16,9,17),
  (17,15,11),
  (15,9,14),
  (24,20,14),
  (20,11,5),
  (15,3,27),
  (12,3,71),
  (14,18,81),
  (23,14,6);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (10,11,12),
  (5,14,72),
  (20,1,50),
  (24,7,57),
  (7,8,93),
  (8,16,44),
  (16,1,83),
  (13,7,62),
  (4,16,40),
  (11,11,20);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (23,11,84),
  (14,9,70),
  (5,16,82),
  (3,5,7),
  (7,13,78),
  (10,13,5),
  (4,12,60),
  (19,6,65),
  (10,12,90),
  (21,13,79);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (9,18,84),
  (21,5,34),
  (25,18,53),
  (24,8,78),
  (18,8,7),
  (4,18,3),
  (15,4,66),
  (6,2,18),
  (20,8,77),
  (22,3,71);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (22,9,68),
  (13,15,81),
  (15,14,9),
  (9,15,54),
  (16,6,88),
  (12,15,74),
  (12,19,80),
  (24,6,65),
  (23,18,33),
  (2,14,2);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (5,9,13),
  (2,4,34),
  (21,11,43),
  (3,4,50),
  (4,15,22),
  (5,5,52),
  (13,17,88),
  (9,16,89),
  (10,14,57),
  (22,8,55);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (2,9,83),
  (15,5,79),
  (3,15,48),
  (12,1,2),
  (16,5,68),
  (4,17,90),
  (20,18,27),
  (1,3,47),
  (18,19,22),
  (14,4,70);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (9,7,61),
  (24,14,35),
  (21,15,76),
  (18,7,66),
  (6,16,19),
  (19,18,29),
  (6,3,90),
  (11,17,88),
  (8,1,69),
  (2,1,68);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (21,4,1),
  (2,8,18),
  (3,10,22),
  (4,3,77),
  (7,14,94),
  (15,19,45),
  (16,16,74),
  (13,4,90),
  (19,14,46),
  (24,18,85);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (16,19,90),
  (12,13,65),
  (10,18,1),
  (15,20,37),
  (2,5,46),
  (20,3,41),
  (18,6,41),
  (10,20,91),
  (6,13,95),
  (18,2,27);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (21,12,70),
  (13,12,25),
  (21,19,51),
  (15,13,40),
  (25,12,26),
  (1,6,57),
  (21,16,23),
  (19,3,46),
  (4,13,55),
  (13,6,55);
INSERT INTO Relacao_de_produtos_por_pedido (Pedido_idPedido,Produto_idProduto,Quantidade)
VALUES
  (20,17,63),
  (24,4,18),
  (11,14,40),
  (20,7,9),
  (17,5,54),
  (24,19,73),
  (15,11,95),
  (12,11,91),
  (12,6,16),
  (4,7,89);

-- fornecedor disponibilizando produtos

INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (10,13,44),
  (7,11,29),
  (11,14,56),
  (13,5,64),
  (2,16,60),
  (10,2,70),
  (5,7,18),
  (1,3,69),
  (7,5,22),
  (11,10,62);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (10,7,93),
  (5,11,40),
  (3,20,45),
  (12,4,85),
  (5,19,27),
  (12,15,12),
  (12,12,74),
  (13,12,79),
  (1,13,69),
  (4,4,13);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (2,9,93),
  (3,2,60),
  (13,10,38),
  (13,3,36),
  (5,17,24),
  (6,4,48),
  (11,12,74),
  (13,2,11),
  (10,14,86),
  (5,1,31);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (10,18,59),
  (5,2,18),
  (15,18,35),
  (7,12,67),
  (12,11,20),
  (10,3,55),
  (12,14,25),
  (4,11,6),
  (14,12,47),
  (1,18,92);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (10,4,29),
  (12,5,23),
  (12,2,20),
  (15,8,12),
  (9,15,38),
  (7,17,89),
  (2,2,30),
  (2,8,5),
  (15,6,9),
  (2,14,22);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (14,11,76),
  (9,20,13),
  (8,13,47),
  (1,4,53),
  (11,9,61),
  (13,11,16),
  (13,20,23),
  (1,5,69),
  (5,16,3),
  (8,1,40);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (6,6,22),
  (11,7,14),
  (9,13,15),
  (8,16,61),
  (1,20,31),
  (7,7,68),
  (1,15,76),
  (11,16,24),
  (2,5,13),
  (2,15,58);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (9,11,88),
  (1,17,25),
  (12,9,11),
  (15,12,33),
  (9,2,22),
  (13,13,25),
  (4,17,93),
  (9,8,34),
  (13,1,60),
  (5,4,2);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (6,5,54),
  (4,8,78),
  (5,12,58),
  (5,9,77),
  (8,11,24),
  (13,6,49),
  (4,7,6),
  (13,19,27),
  (3,17,44),
  (14,3,86);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (12,16,53),
  (3,8,21),
  (14,6,36),
  (5,6,19),
  (11,1,20),
  (12,7,55),
  (10,8,27),
  (2,12,57),
  (1,12,9),
  (7,6,37);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (9,14,60),
  (10,16,36),
  (3,14,25),
  (11,18,18),
  (11,15,49),
  (6,7,17),
  (9,3,73),
  (3,12,39),
  (15,3,24),
  (6,2,66);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (9,5,11),
  (9,17,1),
  (3,5,51),
  (10,19,72),
  (5,18,52),
  (7,14,74),
  (10,15,57),
  (6,16,43),
  (13,9,2),
  (13,17,66);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (8,19,79),
  (4,15,76),
  (13,15,15),
  (15,2,79),
  (6,15,14),
  (13,7,20),
  (5,15,41),
  (4,6,44),
  (8,3,28),
  (13,14,94);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (15,5,50),
  (6,10,41),
  (12,6,32),
  (6,11,32),
  (14,13,28),
  (11,8,69),
  (5,3,4),
  (11,2,81),
  (7,8,83),
  (5,13,88);
INSERT INTO Disponibilizando (Fornecedor_idFornecedor,Produto_idProduto,Quantidade)
VALUES
  (5,5,26),
  (5,10,39),
  (6,9,13),
  (15,9,11),
  (3,15,81),
  (11,4,83),
  (14,5,64),
  (9,9,56),
  (13,4,19),
  (14,15,45);


-- produtos_por_vendedor
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (13,19,30),
  (15,8,83),
  (15,13,43),
  (12,12,66),
  (14,1,16),
  (14,13,78),
  (12,5,20),
  (4,11,16),
  (9,11,51),
  (8,2,37);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (8,14,23),
  (10,18,1),
  (9,9,75),
  (15,1,80),
  (13,18,24),
  (5,18,4),
  (15,12,31),
  (10,14,94),
  (4,14,67),
  (8,12,74);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (11,3,42),
  (8,3,91),
  (7,16,9),
  (14,19,25),
  (13,15,55),
  (3,9,33),
  (6,17,8),
  (11,4,83),
  (3,7,89),
  (4,2,75);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (8,1,18),
  (1,19,55),
  (6,19,52),
  (1,18,18),
  (7,18,35),
  (7,13,8),
  (7,15,33),
  (11,15,65),
  (15,10,86),
  (13,8,81);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (2,2,61),
  (5,12,50),
  (13,17,71),
  (6,11,77),
  (13,5,16),
  (9,18,9),
  (3,17,22),
  (12,15,61),
  (15,16,56),
  (5,11,50);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (4,18,64),
  (6,10,4),
  (10,11,89),
  (10,5,13),
  (13,2,7),
  (7,12,5),
  (8,15,3),
  (7,2,81),
  (13,9,2),
  (14,18,29);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (15,20,12),
  (5,5,56),
  (7,11,23),
  (5,10,11),
  (1,4,11),
  (2,19,52),
  (15,2,64),
  (9,19,31),
  (13,3,4),
  (7,19,94);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (1,11,60),
  (1,15,81),
  (5,15,78),
  (4,3,4),
  (7,20,29),
  (6,15,5),
  (4,13,58),
  (8,11,22),
  (11,14,29),
  (1,10,21);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (8,19,87),
  (4,5,78),
  (1,9,87),
  (2,15,17),
  (10,19,93),
  (12,8,83),
  (7,7,90),
  (2,16,69),
  (14,10,31),
  (9,10,23);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (6,6,45),
  (8,17,5),
  (11,18,71),
  (2,14,67),
  (2,6,56),
  (1,5,50),
  (8,5,14),
  (2,3,70),
  (10,1,93),
  (14,9,71);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (4,15,3),
  (12,11,21),
  (9,2,69),
  (3,1,30),
  (12,16,36),
  (4,10,9),
  (12,4,32),
  (15,5,29),
  (4,4,91),
  (12,19,68);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (9,14,74),
  (12,14,31),
  (9,4,51),
  (12,17,75),
  (13,7,31),
  (4,9,11),
  (14,15,95),
  (13,13,17),
  (2,12,12),
  (1,17,11);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (6,9,47),
  (2,4,19),
  (8,4,30),
  (5,8,27),
  (10,15,71),
  (6,16,67),
  (11,7,83),
  (9,7,46),
  (3,12,13),
  (10,9,39);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (14,11,79),
  (11,6,68),
  (6,5,14),
  (8,13,80),
  (9,8,85),
  (13,14,86),
  (10,3,49),
  (4,12,36),
  (11,10,5),
  (7,6,41);
INSERT INTO Produtos_por_vendedor (Vendedor_idVendedor,Produto_idProduto,Quantidade)
VALUES
  (6,18,25),
  (3,18,27),
  (14,4,67),
  (7,5,90),
  (10,7,44),
  (6,12,36),
  (7,17,50),
  (14,5,47),
  (11,5,83),
  (10,8,42);

-- produtos por estoque
INSERT INTO Produto_por_Estoque (Estoque_idEstoque,Produto_idProduto,Quantidade)
VALUES
  (6,6,54),
  (6,11,66),
  (3,19,81),
  (8,11,26),
  (8,14,28),
  (8,2,60),
  (5,3,74),
  (1,13,70),
  (7,18,10),
  (7,6,51);
INSERT INTO Produto_por_Estoque (Estoque_idEstoque,Produto_idProduto,Quantidade)
VALUES
  (5,18,5),
  (8,10,27),
  (4,11,84),
  (8,13,91),
  (8,15,37),
  (4,12,56),
  (10,16,47),
  (7,2,67),
  (6,16,62),
  (9,5,95);
INSERT INTO Produto_por_Estoque (Estoque_idEstoque,Produto_idProduto,Quantidade)
VALUES
  (2,13,55),
  (7,17,78),
  (6,19,79),
  (7,11,77),
  (1,3,46),
  (9,16,4),
  (4,6,48),
  (3,17,26),
  (5,4,64),
  (8,16,58);
INSERT INTO Produto_por_Estoque (Estoque_idEstoque,Produto_idProduto,Quantidade)
VALUES
  (1,18,66),
  (7,15,90),
  (10,4,48),
  (6,17,9),
  (8,1,8),
  (4,10,62),
  (7,1,39),
  (7,13,21),
  (7,7,14),
  (7,12,29);
INSERT INTO Produto_por_Estoque (Estoque_idEstoque,Produto_idProduto,Quantidade)
VALUES
  (8,7,57),
  (1,12,35),
  (4,18,16),
  (10,5,81),
  (4,19,91),
  (10,7,28),
  (2,6,85),
  (10,13,91),
  (7,19,71),
  (7,20,60);

-- cartoes_cliente

INSERT INTO Cartoes_cliente (Cliente_idCliente,Numero_cartao,Validade,Nome_Titular,Bandeira,Tipo_pagamento)
VALUES
  (5,"301424745636952","10/22","Meghan Melton","Visa","cartao debito"),
  (4,"67635472327429147","09/23","Nita Romero","Mastercard","Cartao credito"),
  (5,"3626 557918 81929","02/22","Daryl Skinner","Maestro","Cartao credito"),
  (4,"670623885337346484","09/22","Paloma Brennan","Elo","Cartao credito"),
  (7,"601183 2486675559","10/22","Drew Holloway","Visa","Cartao credito"),
  (2,"647 85486 22795 830","12/21","Nola Juarez","American Express","Cartao credito"),
  (9,"3762 538973 26348","10/22","Barbara Randolph","Maestro","cartao debito"),
  (5,"6304 6323 7136 8419","03/22","Daphne Boyle","Mastercard","Cartao credito"),
  (3,"6532 9387 6838 3331","01/22","Frances Shields","Visa Electron","cartao debito"),
  (5,"491178 5374694135","10/23","Zenia Williamson","Mastercard","cartao debito"),
  (2,"402 68913 49769 267","03/23","Ignacia Johnson","American Express","Cartao credito"),
  (10,"646862 983551 6734","02/23","Mariam Gordon","Maestro","Cartao credito"),
  (10,"5287723724128732","12/22","Sigourney Solomon","American Express","cartao debito"),
  (5,"201495827428955","01/23","Kylynn Wheeler","Maestro","cartao debito"),
  (8,"2014 926436 59277","09/22","Herrod Rodriquez","Maestro","cartao debito"),
  (5,"676782659315522869","04/23","Faith Gill","Visa Electron","cartao debito"),
  (3,"552 71195 34569 530","07/23","Orlando Vargas","American Express","Cartao credito"),
  (4,"490521686878663548","01/23","Yuri Waller","Visa","cartao debito"),
  (1,"6759299725342","05/23","Jamalia George","Visa","cartao debito"),
  (2,"6486674287971266","04/23","Tyler Andrews","Mastercard","Cartao credito");



/* -------------
Até aqui foram dados aleatórios

daqui em diante sao os dados para vincular as tabelas umas com as outras respeitando as FKs
*/
insert into formas_pagamento (Valor_pago, PagamentoCash, Pedido_idPedido, Cartoes_cliente_idFormas_pagamento)
values
 (78.8, true, 1, null),
 (25414, true, 2, null),
 (8744, true, 3, null),
 (78.8, true, 3, null),
 (26000, false, 4, 2),
 (417, false, 4, 4),
 (2000, false, 4, 18),
 (9628, true, 5, null),
 (25000, false, 12, 10), 
 (780, false, 12, 14) ;
