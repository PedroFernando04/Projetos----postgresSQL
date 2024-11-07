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
	
	
--QUESTÃO 13
-- INSIRA UM NOVO CLIENTE CHAMADO "Casa de Produtos Naturais" LOCALIZADO NO BRASIL, NA CIDADE DE CURITIBA
insert
	into
	loja.clientes(nome_cliente,
	cidade,
	pais)
values(
'Casa de Produtos Naturais',
'Curitiba',
'Brasil'
)


--QUESTÃO 14
/* INSIRA UM NOVO PRODUTO "Doce de Leite Artesanal" NA CATEGORIA "Doces",
 COM PREÇO DE R$ 12,50 E ESTOQUE INICIAL DE 100 UNIDADES */

insert
	into
	loja.produtos(nome_produto ,
	id_categoria,
	preco,
	quantidade_estoque)
values('Doce de Leite Artesanal',
3,
12.5,
100)


--QUESTÃO 15
-- ATUALIZE O ESTOQUE DO PRODUTO "Queijo Manchego La Pastora" PARA 50 UNIDADES
	
update
	loja.produtos p
set
	quantidade_estoque = 50
where
	nome_produto = 'Queijo Manchego La Pastora'
	
	
--QUESTÃO 16
-- ATUALIZE O ENDEREÇO DO CLIENTE "Comercio Mineiro" PARA "Rua nova, 465, São Paulo"
	
update
	loja.clientes c
set
	endereco = 'Rua nova, 465, São Paulo'
where
	nome_cliente = 'Comercio Mineiro'
	

--QUESTÃO 17
-- AUMENTE O PREÇO DE TODOS OS PRODUTOS DA CATEGORIA "Laticínios" EM 10%
	
update
	loja.produtos p
set
	preco = preco + (preco / 10) 
	

--QUESTÃO 18
-- REMOVA O PRODUTO "Chocolate Belga" DA TABELA PRODUTOS
	
delete
from
	loja.produtos
where
	nome_produto = 'Chocolate Belga'


--QUESTÃO 19
-- REMOVA TODOS OS PEDIDOS FEITOS ANTES DE 1° DE JANEIRO DE 2021
	
delete
from
	loja.pedidos p
where
	data_pedido < '20210101' 
	
	
--QUESTÃO 20
-- LISTE TODOS OS CLIENTES QUE FIZERAM PEDIDOS EM 2022, COM OS DETALHES DE CONTATO
	
select distinct 
	nome_cliente, nome_contato
from
	loja.clientes c
join loja.pedidos p on
	p.id_cliente = c.id_cliente
where
	p.data_pedido between '20220101' and '20221231'

	
--QUESTÃO 21
-- LISTE TODOS OS PRODUTOS QUE AINDA NÃO FORAM VENDIDOS EM NENHUM PEDIDO
	
select
	 nome_produto
from
	loja.produtos p
full join loja.detalhes_pedidos dp on
	dp.id_produto = p.id_produto
full join loja.pedidos p2 on
	p2.id_pedido = dp.id_pedido
where
	p2.id_pedido is null

--QUESTÃO 22
-- LISTE TODOS OS PEDIDOS QUE INCLUEM PRODUTOS COM PREÇO UNITÁRIO SUPERIOR A R$ 100, EXIBINDO O NOME DO PRODUTO E O NOME DO CLIENTE
	
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
	p2.preco > 100

	
--QUETÃO 23
-- CONTE QUANTOS PRODUTOS EXISTEM EM CADA CATEGORIA
	
select
	count(p.nome_produto) as produtos,
	nome_categoria
from
	loja.produtos p
join loja.categorias c on
	c.id_categoria = p.id_categoria
group by
	c.id_categoria

--QUESTÃO 24
-- CALCULE A SOMA DE TODOS OS ITENS EM ESTOQUE
	
select
	sum(quantidade_estoque) as itens_estocados
from
	loja.produtos p
	
--QUESTÃO 25
-- CALCULE O PREÇO MÉDIO DOS PRODUTOS QUE TÊM MAIS DE 10 UNIDADES EM ESTOQUE
	
select
	avg(preco)::numeric (10,
	2) as preco_medio_10un
from
	loja.produtos p
where
	quantidade_estoque > 10
	
--QUESTÃO 26
-- ENCONTRE O MENOR VALOR DE QUANTIDADE EM ESTOQUE DE TODOS OS PRODUTOS
	
select
	min(quantidade_estoque) as menor_estoque
from
	loja.produtos
	
--QUESTÃO 27
-- ENCONTRE O MAIOR PREÇO ENTRE OS PRODUTOS DA CATEGORIA "Doces"
	
select
	max(preco) as maior_preco_doces
from
	loja.produtos p
join loja.categorias c on
	c.id_categoria = p.id_categoria
where
	nome_categoria = 'Doces'
group by
	nome_categoria

--QUESTÃO 28
-- LISTE AS CATEGORIAS QUE POSSUEM MAIS DE 5 PRODUTOS

select
	nome_categoria
from
	loja.categorias c
join loja.produtos p on
	c.id_categoria = p.id_categoria
where
	p.quantidade_estoque > 5
group by
	nome_categoria

--QUESTÃO 29
-- CONTE O NÚMERO TOTAL DE PEDIDOS REALIZADOS POR CLIENTES DE CADA PAÍS
	
select
	count(dp.id_pedido) as numero_de_pedidos,
	c.pais
from
	loja.detalhes_pedidos dp
join loja.pedidos p on
	p.id_pedido = dp.id_pedido
join loja.clientes c on
	c.id_cliente = p.id_cliente
group by
	c.pais
order by
	numero_de_pedidos
	
--QUESTÂO 30 
-- LISTE O TOTAL GASTO POR CADA CLIENTE NA CATEGORIA "Doces", CONSIDERANDO A QUANTIDADE DE PRODUTOS E O PREÇO
	
select
	c.nome_cliente,	sum(p.preco * dp.quantidade) as total_gasto_doces
from
	loja.produtos p
join loja.detalhes_pedidos dp on
	dp.id_produto = p.id_produto
join loja.pedidos p2 on
	p2.id_pedido = dp.id_pedido
join loja.clientes c on
	c.id_cliente = p2.id_cliente
join loja.categorias c2 on
	p.id_categoria = c2.id_categoria
where
	nome_categoria = 'Doces'
group by
	c.nome_cliente
order by 
	total_gasto_doces
