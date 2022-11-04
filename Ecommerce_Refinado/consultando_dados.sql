use ecommerce_refinado;
-- show tables;

-- calculando o valor total de cada pedido 
select  p.idpedido, p.Valor_frete,  sum(ppp.Quantidade * pd.Valor) as valor_final_pedido  from pedido p 
inner join relacao_de_produtos_por_pedido ppp on ppp.Pedido_idPedido = p.idPedido
inner join produto pd on pd.idProduto = ppp.Produto_idProduto
group by p.idpedido, p.Valor_frete
order by p.idpedido;


-- listando  as formas de pagamento cadastradas pelos clientes que já fizeram algum pedido
select p.idPedido, ct.idFormas_pagamento from pedido p 
inner join cliente c on p.Cliente_idCliente = c.idCliente
inner join cartoes_cliente ct on ct.Cliente_idCliente = c.idCliente
order by 1, 2;


/*
perguntas:
Quantos pedidos foram feitos por cada cliente?
Algum vendedor também é fornecedor?
Relação de produtos fornecedores e estoques;
Relação de nomes dos fornecedores e nomes dos produtos;
*/

-- Quantos pedidos foram feitos por cada cliente?

select concat(pNome, '  ',Nome_do_Meio,' ' , Sobrenome) as nome_cliente, count(*) as Qtd_pedidos from pedido p 
inner join cliente c on p.Cliente_idCliente = c.idCliente
group by pNome, Nome_do_Meio, Sobrenome
order by 1, 2;


-- Algum vendedor também é fornecedor?
select * from fornecedor f 
inner join vendedor v on (v.cnpj = f.cnpj);
 
 -- Relação de produtos fornecedores e estoques;
 
select distinct p.idProduto, p.Descricao, p.Categoria, f.Razao_Social, F.CNPj, d.Quantidade as qtd_fornecedor , etq.Local
from Disponibilizando d 
inner join produto p  on p.idProduto = d.Produto_idProduto
inner join fornecedor f on f.idFornecedor = d.Fornecedor_idFornecedor
inner join Produto_por_Estoque pe on pe.Produto_idProduto = d.Produto_idProduto
inner join Estoque etq on etq.idEstoque = pe.Estoque_idEstoque
;

-- Relação de nomes dos fornecedores e nomes dos produtos;

select distinct p.idProduto, p.Descricao, f.Razao_Social
from Disponibilizando d 
inner join produto p  on p.idProduto = d.Produto_idProduto
inner join fornecedor f on f.idFornecedor = d.Fornecedor_idFornecedor
;

-- Quais os 5 produtos que mais vendem em quantidade?

select ppp.Produto_idProduto, sum(ppp.Quantidade) as qtdVendido from pedido p
	inner join relacao_de_produtos_por_pedido ppp on ppp.Pedido_idPedido = p.idpedido
	where p.statuspedido <> 'Cancelado'
	group by ppp.Produto_idProduto
	order by qtdVendido desc
	limit 5;



-- listando os 5 pedidos mais caros
select  p.idpedido, p.Valor_frete,  sum(ppp.Quantidade * pd.Valor) as valor_final_pedido  from pedido p 
inner join relacao_de_produtos_por_pedido ppp on ppp.Pedido_idPedido = p.idPedido
inner join produto pd on pd.idProduto = ppp.Produto_idProduto
group by p.idpedido, p.Valor_frete
order by valor_final_pedido desc
limit 5;

-- listando os pedidos mais de 6 produtos distintos
select  p.idpedido,  concat(pNome, '  ',Nome_do_Meio,' ' , Sobrenome) as nome_cliente,   sum(ppp.Quantidade * pd.Valor) as valor_final_pedido, count(ppp.Produto_idProduto) as qtd_itens_distintos
from pedido p 
inner join cliente c on p.Cliente_idCliente = c.idCliente
inner join relacao_de_produtos_por_pedido ppp on ppp.Pedido_idPedido = p.idPedido
inner join produto pd on pd.idProduto = ppp.Produto_idProduto
group by p.idpedido,  pNome, Nome_do_Meio,Sobrenome
having count(ppp.Produto_idProduto)>6
order by valor_final_pedido desc;


-- montando subqueries para listar os dados desses produtos
 select p2.* from produto p2 
 where p2.idProduto in (
	select Produto_idProduto from (
	select ppp.Produto_idProduto, sum(ppp.Quantidade) as qtdVendido from pedido p
	inner join relacao_de_produtos_por_pedido ppp on ppp.Pedido_idPedido = p.idpedido
	where p.statuspedido <> 'Cancelado'
	group by ppp.Produto_idProduto
	order by qtdVendido desc
	limit 5)as tab1 
 ) 
;