CREATE DATABASE db_ecommerce;

USE db_ecommerce;


CREATE TABLE tb_produtos (
    id_produto INTEGER AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    PRIMARY KEY(id_produto)
);

CREATE TABLE tb_fornecedores (
	id_fornecedor INTEGER AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    PRIMARY KEY(id_fornecedor)
);

CREATE TABLE tb_pedidos (
	id_pedido INTEGER AUTO_INCREMENT NOT NULL,
    id_produto INTEGER,
    id_fornecedor INTEGER,
    data_pedido DATE NOT NULL,
    quantidade INTEGER NOT NULL,
    PRIMARY KEY(id_pedido),
    FOREIGN KEY(id_produto) REFERENCES tb_produtos(id_produto),
    FOREIGN KEY(id_fornecedor) REFERENCES tb_fornecedores(id_fornecedor)
);


