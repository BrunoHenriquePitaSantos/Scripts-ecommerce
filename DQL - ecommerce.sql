USE db_ecommerce;

-- a) Consulte o produto com a quantidade em estoque mais baixa.
SELECT MIN(quantidade_estoque) FROM tb_produtos;
SELECT * FROM tb_produtos;

-- b) Consulte o produto com o preçco mais alto.
SELECT MAX(preco) FROM tb_produtos;
SELECT * FROM tb_produtos;

-- c) Conte a quantidade total de produtos cadastrados no banco de dados.
SELECT COUNT(id_produto) FROM tb_produtos;
SELECT * FROM tb_produtos;

-- d) Consulte apenas os pedidos que foram realizados na date de 02-10-2024
SELECT * FROM tb_pedidos
WHERE data_pedido = '2024-10-02';

SELECT * FROM tb_pedidos;

-- e) Ordene os nomes dos fornecedores em ordem crescente
SELECT * FROM tb_fornecedores ORDER BY nome ASC;

-- f) Ordene os nomes dos fornecedores em ordem decrescente
SELECT * FROM tb_fornecedores ORDER BY nome DESC;





