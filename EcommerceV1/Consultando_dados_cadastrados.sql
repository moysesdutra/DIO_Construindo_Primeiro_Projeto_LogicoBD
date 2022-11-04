USE ecommerceV1 ;
-- inspecionando os dados cadastrados ----------

select * from clients c, orders o where c.idClient = o.idOrderClient;


select c.idClient, concat(c.Fname, ' ', c.Mint, ' ', c.Lname) as nome_cli, o.Status_Order, o.OrderDescription, o.idOrder 
from clients c, orders o where c.idClient = o.idOrderClient;

-- contando o numero de pedidos por cliente agrupando por status_order
select c.idClient, concat(c.Fname, ' ', c.Mint, ' ', c.Lname) as nome_cli, o.Status_Order, count(*) as qtd_pedidos 
from clients c, orders o where c.idClient = o.idOrderClient
group by c.idClient, c.Fname, c.Mint, c.Lname, o.Status_Order
order by 1, 3;

 -- mostrando os pedidos feitos pelos clientes e os seus itens
 
 select * from clients c inner join orders o on c.idClient = o.idOrderClient
						 inner join productorder p on p.idPOorder = o.idOrder;
                         
-- mostrando a quatidade de itens por pedido de cada cliente
 select  c.idClient, concat(c.Fname, ' ', c.Mint, ' ', c.Lname) as nome_cli, o.idOrder, o.Status_Order, count(*) as qtd_itens_ped ,  sum(p.PoQuantity) as num_volumes
 from clients c inner join orders o on c.idClient = o.idOrderClient
				inner join productorder p on p.idPOorder = o.idOrder
 group by  c.idClient, c.Fname, c.Mint, c.Lname, o.idOrder, o.Status_Order
 order by c.Fname;
 
 
                          
-- mostrando a quatidade de itens por pedido de cada cliente somente dos clientes com 2 ou mais pedidos com itens registrados
 select  c.idClient, concat(c.Fname, ' ', c.Mint, ' ', c.Lname) as nome_cli, o.idOrder, o.Status_Order, count(*) as qtd_itens_ped ,  sum(p.PoQuantity) as num_volumes
 from clients c inner join orders o on c.idClient = o.idOrderClient
				inner join productorder p on p.idPOorder = o.idOrder
 group by  c.idClient, c.Fname, c.Mint, c.Lname, o.idOrder, o.Status_Order
 having (count(*) >1)
 order by c.Fname;
 
 
 
 -- mostrando dados dos pedidos dos clientes que o volume comprado (numero de unidades de cada elemento do pedido) é superior a 2 
 select  c.idClient, concat(c.Fname, ' ', c.Mint, ' ', c.Lname) as nome_cli, o.idOrder, o.Status_Order, count(*) as qtd_itens_ped ,  sum(p.PoQuantity) as num_volumes
 from clients c inner join orders o on c.idClient = o.idOrderClient
				inner join productorder p on p.idPOorder = o.idOrder
 group by  c.idClient, c.Fname, c.Mint, c.Lname, o.idOrder, o.Status_Order
 having (sum(p.PoQuantity) >1)
 order by c.Fname;
 
 
  -- qual o valor  de frete pago por cada cliente em suas compras?
 select  c.idClient, concat(c.Fname, ' ', c.Mint, ' ', c.Lname) as nome_cli, o.ShippingCost
 from clients c inner join orders o on c.idClient = o.idOrderClient
 order by c.Fname;
 
 
 -- qual o valor total de frete pago por cada cliente (agrupando valor total por cliente)?
 select  c.idClient, concat(c.Fname, ' ', c.Mint, ' ', c.Lname) as nome_cli, sum(o.ShippingCost) as Total_frete
 from clients c inner join orders o on c.idClient = o.idOrderClient
 group by  c.idClient, c.Fname, c.Mint, c.Lname
 order by c.Fname;
 
 
 -- listando  o valor total  de cada ordem dos clientes (frete + (valor dos itens* suas quantidades individuais)
  select  c.idClient, concat(c.Fname, ' ', c.Mint, ' ', c.Lname) as nome_cli,  ifnull(o.ShippingCost,0) + sum( p.PoQuantity * pd.valor) as VLtot_item
 from clients c inner join orders o on c.idClient = o.idOrderClient
				inner join productorder p on p.idPOorder = o.idOrder
                inner join product pd on pd.idProduct = p.idPOProduct
group by  c.idClient, c.Fname, c.Mint, c.Lname
 order by c.Fname;
 
 
 
