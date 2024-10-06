USE db_ecommerce;

-- 1) Consulte todos os produtos juntamente com o nome do fornecedor responsavel por cada um deles. A consulta deve retornas os campos: nome do produto, preço e nome do fornecedor.

SELECT tb_produtos.nome AS nome_produto, tb_produtos.preco, tb_fornecedores.nome AS nome_fornecedor
FROM tb_produtos
INNER JOIN tb_fornecedores ON tb_produtos.id_produto = tb_fornecedores.id_fornecedor;

-- 2) Liste todos os pedido incluindo informações sobre o produto e o fornecedor. A consulta deve retornar os campos: id_pedido, nome do produto, 
-- nome do fornecedor e data_pedido
SELECT tb_pedidos.id_pedido As id_pedido, tb_produtos.nome, tb_fornecedores.nome AS nome_fornecedor, tb_pedidos.data_pedido AS data_pedido
FROM tb_pedidos
INNER JOIN tb_produtos ON tb_pedidos.id_produto = tb_produtos.id_produto
INNER JOIN tb_fornecedores ON tb_pedidos.id_fornecedor = tb_fornecedores.id_fornecedor;

-- 3) Recupere a lista de produtos e o numero total de pedidos realizados para cada produto. A consulta deve retornar os campos: nome do produto e a 
-- quantidade total de pedidos associados.

SELECT tb_produtos.nome AS nome_do_produto, COUNT(tb_pedidos.id_pedido) AS quantidade_de_pedidos
From tb_produtos
LEFT JOIN tb_pedidos ON tb_produtos.id_produto = tb_pedidos.id_produto
GROUP BY tb_produtos.id_produto; 

-- 4) Mostre todos os produtos que tem pedidos realizados e inclua o id_pedido, nome do produto e data_pedido. A consulta deve filtrar os produtos
-- que estão realmente em estoque.

SELECT tb_pedidos.id_pedido, tb_produtos.nome AS nome_do_produto, tb_pedidos.data_pedido
FROM tb_pedidos
INNER JOIN tb_produtos ON tb_pedidos.id_produto = tb_produtos.id_produto
WHERE tb_produtos.quantidade_estoque > 0;

-- 5) Exiba uma lista de fornecedores que tem produtos cadastrados e a quantidade de cada produto diponivel em estoque.alter
-- A consulta deve retornar os campos: nome do fornecedor, nome do produto e quantidade_estoque

SELECT tb_fornecedores.nome AS nome_fornecedor, tb_produtos.nome AS nome_do_produto, tb_produtos.quantidade_estoque
FROM tb_produtos
INNER JOIN tb_fornecedores ON tb_produtos.id_produto = tb_fornecedores.id_fornecedor;

-- 6) Recupere uma lista de todos os produtos com inforamações sobre seu fornecedor, incluindo produtos que não tem pedidos associados.
-- A consulta deve retornar os campos: nome do produto, preço e nome do fornecedor, utilizando um left join.

SELECT tb_produtos.nome AS nome_produto, tb_produtos.preco, tb_fornecedores.nome AS nome_fornecedor
FROM  tb_produtos
LEFT JOIN tb_fornecedores ON tb_produtos.id_produto = tb_fornecedores.id_fornecedor;

