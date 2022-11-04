# Bem vindo ao projeto de  Modelagem EER para uma aplicação de *E-commerce Refinado*.

Nesse projeto desafio proposto pela DIO foi feito um modelamento de um contexto resumido de um *e-commerce*. Foi realizada um levantamento de requisitos do cliente para a aplicação, foram constituídas as entidades que fazem a persistência dos dados da aplicação. Todos os relacionamentos foram estruturados. Para a elaboração do diagrama EER foi utilizado o *MySql Workbench*.
As chaves primárias e estrangeiras também foram definidas durante a construção do diagrama.
Todos esses estudos foram feitos seguindo a trilha **Construindo seu Primeiro Projeto Lógico de Banco de Dados** do *bootcamp* **UNIMED BH :green_heart: com a DIO :muscle:** apresentado pela **Juliana Mascarenhas**.

# Arquivos e pastas

Esse estudo foi estruturado da seguinte forma:

:file_folder: **EcommerceV1**: contém os arquivos usados na primeira parte do desafio que consistiu na construção de um modelo EER para um sistema de *E-commerce* guiado pela instrutora **Juliana Mascarenhas**.

 - Arquivo criando no MySQL Workbench: **Modelo_EcommerceV1.mwb**
 -  Arquivo exportado do MySQL Workbench: **ModeloEERv1.png** (caso não tenha o software *MySQL Workbench* instalado).
 -  Arquivo com os comandos **DDL**: **Criacao_banco_dadosV1.sql** para criação do *schema* do banco de dados.
 - Arquivo com os comandos **DML**: **carregamento_dados_EcommerceV1.sql** para persistência dos dados.
 - Arquivo com os comandos **DQL**: **Consultando_dados_cadastrados.sql** para recuperação e análise dos dados persistidos no banco de dados.

:file_folder: **Ecommerce_Refinado**: contém os arquivos usados na segunda parte do desafio que consistiu no refinamento do modelo EER para o mesmo sistema de *E-commerce* com atendimento das seguintes exigências:
-   Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
-   Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
-   Entrega – Possui status e código de rastreio;

Os arquivos desenvolvidos são:
 - Arquivo criando no MySQL Workbench: **Modelo_ecommerce.mwb** )
-  Arquivo com os comandos **DDL**: **criacao_database_tabelas_final.sql** para criação do *schema* do banco de dados.
 - Arquivo com os comandos **DML**: **carregamento_dados_ecommerce.sql** para persistência dos dados.
 - Arquivo com os comandos **DQL**: **consultando_dados.sql** para recuperação e análise dos dados persistidos no banco.
 -  Arquivos exportados do MySQL Workbench: **Modelo EER refinado.png** e **Modelo EER.pdf** (caso não tenha o software *MySQL Workbench* instalado).



## As consultas elaboradas no arquivo *consultando_dados.sql* respondem aos seguintes questionamentos:

- Qual o valor total de cada pedido? 
- Quais são as formas de pagamento cadastradas pelos clientes que já fizeram algum pedido?
-  Quantos pedidos foram feitos por cada cliente?
- Algum vendedor também é fornecedor?
- Qual a relação de produtos com fornecedores e estoques?
- Qual o nome dos fornecedores e de seus produtos?
- Quais os 5 produtos que mais vendem em quantidade?
- Quais são os 5 pedidos mais caros?
- Quais são os pedidos com mais de 6 produtos distintos?


Foi também elaborada uma *subquery* para prova de conceito, aplicando as técnicas apresentadas no curso.


## Software
### MySQL Workbench 8.0 CE

## Autor

Moysés Dutra da Silva
<p>
  <a href="https://www.linkedin.com/in/moyses-dutra/" rel="nofollow noreferrer">
    <img src="https://i.stack.imgur.com/gVE0j.png" alt="linkedin"> LinkedIn
  </a> &nbsp; 
  <a href="https://github.com/moysesdutra" rel="nofollow noreferrer">
    <img src="https://i.stack.imgur.com/tskMh.png" alt="github"> Github
  </a>
</p>
  

## Licença

[MIT] <https://choosealicense.com/licenses/mit>


### English

# Welcome to the project EER applied to an E-commerce Application!

In this project proposed by DIO, a small context modeling was done on an E-commerce application.  Some interviews were carried out to identify the customer's needs.  Based on these interviews, an EER model was made.  All activities were done using the MySQL Workbench application  .  All these studies were carried out according to the trail **Construindo seu Primeiro Projeto Lógico de Banco de Dados** from the UNIMED BH 💚 bootcamp with DIO 💪 presented by  **Juliana Mascarenhas**.

# Files and Folders

This study was divided as follows:

:file_folder: **EcommerceV1**:contains the files used in the first part of the challenge that consisted of building an EER model for an *e-commerce*. Here, several entities were considered, worth mentioning the entities Product, Stock, Customer, Orders and Supplier as they guided the entire structuring of the model.

-  File created in MySQL Workbench: **Modelo_EcommerceV1.mwb**
 -  File exported from MySQL Workbench: **ModeloEERv1.png** (if the software *MySQL Workbench* is not available).
 -  File with the **DDL** commands: **Criacao_banco_dadosV1.sql** to create the  database schema.
 - File with the  **DML** commands: **carregamento_dados_EcommerceV1.sql** to populate the database with random data.
 - File with the  **DQL** commands: **Consultando_dados_cadastrados.sql** to recover data from database and perform some analysis.


:file_folder: **Ecommerce_Refinado**: contains the files used in the second part of the challenge that consisted of building an EER model for the E-commerce application with these some new requirements:

 1. The same client account do not have the both fields filled (CPF and
    CNPJ) at same time, only one of them;
 2. Payment: customers can have several payment methods registered in the system;
 3. The orders needs a tracking number and an status field;

 - File created in MySQL Workbench: **Modelo_ecommerce.mwb** .
 -  File exported from MySQL Workbench: **Modelo EER refinado.png** (if the software *MySQL Workbench* is not available).
 - File exported from MySQL Workbench: **Modelo EER.pdf** (if the software *MySQL Workbench* is not available).
 -  File created in MySQL Workbench: **EcommerceV1.mwb** (final version)
 -  File exported from MySQL Workbench: **EcommerceV1.png** (if the software *MySQL Workbench* is not available).
 -  File with the **DDL** commands: **criacao_database_tabelas_final.sql** to create the  database schema.
 - File with the  **DML** commands: **carregamento_dados_ecommerce.sql** to populate the database with random data.
 - File with the  **DQL** commands: **consultando_dados.sql** to recover data from database and perform some analysis.

## Software

### MySQL Workbench 8.0 CE

## Author

Moysés Dutra da Silva
<p>
  <a href="https://www.linkedin.com/in/moyses-dutra/" rel="nofollow noreferrer">
    <img src="https://i.stack.imgur.com/gVE0j.png" alt="linkedin"> LinkedIn
  </a> &nbsp; 
  <a href="https://github.com/moysesdutra" rel="nofollow noreferrer">
    <img src="https://i.stack.imgur.com/tskMh.png" alt="github"> Github
  </a>
</p>
  

## License

[MIT] <https://choosealicense.com/licenses/mit>