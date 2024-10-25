-- DESAFIOS

--QUESTÃO 1
-- LISTE TODOS OS PRODUTOS QUE PERTENCEM À CATEGORIA DE "LATICÍNIOS"

select
	nome_produto, quantidade_estoque, preco, nome_categoria
from
	loja.produtos p
join
	loja.categorias c on p.id_categoria = c.id_categoria 
where
	c.id_categoria = 4


--QUESTÃO 2
-- ENCONTRE TODOS OS CLIENTES QUE ESTÃO LOCALIZADOS NO BRASIL

select 	
	*
from 
	loja.clientes
where 	
	pais = 'Brasil'
	
--QUESTÃO 3
-- LISTE TODOS OS PEDIDOS REALIZADOS APÓS O DIA 1° DE SETEMBRO DE 2021
	
select
	p2.id_pedido, nome_produto, quantidade, preco, unidade, data_pedido
from 
	loja.produtos p 
join
	loja.detalhes_pedidos dp on p.id_produto = dp.id_produto 
join 
	loja.pedidos p2 on dp.id_pedido = p2.id_pedido 
where
	p2.data_pedido > '20210901'
	
--QUESTÃO 4
-- MOSTRE TODOS OS PRODUTOS QUE ESTÃO COM ESTOQUE ZERO
	
select
	*
from 
	loja.produtos
where
	quantidade_estoque = 0
	
--QUESTÃO 5
-- LISTE TODOS OS PRODUTOS CUJO PREÇO É SUPERIOR A R$ 50
	
select 
	*
from 
	loja.produtos p 
where 
	preco > 50
	
--QUESTÃO 6
-- LISTE TODOS OS PRODUTOS QUE TÊM UM PREÇO ENTRE R$ 10 E R$ 50
	
select 
	*
from 
	loja.produtos p 
where 
	10 < preco and preco < 50
	

--QUESTÃO 7
-- ENCONTRE TODOS OS CLIENTES QUE ESTÃO LOCALIZADOS NA ALEMANHA, BRASIL OU FRANÇA
	
select 
	* 
from 
	loja.clientes
where 
	pais in ('Alemanha', 'Brasil', 'França')
	
	
--QUESTÃO 8
-- LISTE TODOS OS PEDIDOS REALIZADOS ENTRE 1° DE JULHO DE 2021 E 31 DE AGOSTO DE 2021
	
	
select
	p2.id_pedido, nome_produto, quantidade, preco, unidade, data_pedido
from 
	loja.produtos p 
join
	loja.detalhes_pedidos dp on p.id_produto = dp.id_produto 
join 
	loja.pedidos p2 on dp.id_pedido = p2.id_pedido 
where
	p2.data_pedido > '20210701'and p2.data_pedido < '20210831'
	
--QUESTÃO 9
-- LISTE TODOS OS PEDIDOS E O NOME DOS CLIENTES QUE FIZERAM ESSES PEDIDOS
	
select
	p2.id_pedido, nome_produto, quantidade, preco, unidade, data_pedido, nome_cliente
from 
	loja.produtos p 
join
	loja.detalhes_pedidos dp on p.id_produto = dp.id_produto 
join 
	loja.pedidos p2 on dp.id_pedido = p2.id_pedido 
join 
	loja.clientes c on p2.id_cliente = c.id_cliente 
	

--QUESTÃO 10
-- LISTE OS DETALHES DOS PEDIDOS COM OS NOME DOS PRODUTOS E A QUANTIDADE DE CADA ITEM EM CADA PEDIDO
	
select 
	id_detalhe_pedido, dp.id_pedido, dp.id_produto, quantidade, nome_produto
from 
	loja.detalhes_pedidos dp 
join
	loja.produtos p on p.id_produto = dp.id_produto 
	
	
--QUESTÃO 11
-- LISTE OS PRODUTOS E QUANTIDADES DO PEDIDO COM id_pedido = 10250
	
select 
	dp.id_pedido, nome_produto, dp.quantidade
from
	loja.produtos p 
join
	loja.detalhes_pedidos dp on p.id_produto = dp.id_produto 
where 	
	dp.id_pedido = 10250
	
--QUESTÃO 12
-- LISTE TODOS OS PEDIDOS QUE CONTÊM PRODUTOS DA CATEGORIA "CARNE/AVES"
	
select 
	p.id_pedido, p2.nome_produto, p2.unidade, dp.quantidade, p2.preco, c.nome_categoria
from
	loja.pedidos p 
join
	loja.detalhes_pedidos dp on dp.id_pedido = p.id_pedido 
join 
	loja.produtos p2 on p2.id_produto = p2.id_produto 
join 
	loja.categorias c on c.id_categoria = p2.id_categoria 
where 
	c.id_categoria = 6 
	
