USE db_ecommerce;

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos VALUES(
'1',
'Monitor',
'Monitor de Computador',
'699.00',
'12'
);

INSERT INTO tb_produtos VALUES(
'2',
'Optical Mouse',
'Mouse optico',
'65.00',
'50'
);

INSERT INTO tb_produtos VALUES(
'3',
'GamerDesktop',
'Desktop GAMER',
'4500.00',
'20'
);

INSERT INTO tb_produtos VALUES(
'4',
'KeybordWireless',
'Teclado sem fio',
'349.00',
'32'
);

INSERT INTO tb_produtos VALUES(
'5',
'WirelessHandset',
'Fone de ouvido sem fio',
'399.00',
'42'
);

SELECT * FROM tb_fornecedores;

INSERT INTO tb_fornecedores VALUES(
'1',
'SAMSUNG',
'1123321234',
'vendas@samsung.com.br'
);

INSERT INTO tb_fornecedores VALUES(
'2',
'LOGITEC',
'1132326000',
'vendas@logitec.com.br'
);

INSERT INTO tb_fornecedores VALUES(
'3',
'DELL',
'5523234567',
'vendas@dell.com.br'
);

INSERT INTO tb_fornecedores VALUES(
'4',
'MICROSOFT',
'1143430909',
'vendas@microsoft.com.br'
);

INSERT INTO tb_fornecedores VALUES(
'5',
'APEX',
'1133314567',
'vendas@apex.com.br'
);

SELECT * FROM tb_pedidos;

INSERT INTO tb_pedidos VALUES(
'1',
'1',
'1',
'2024-10-05',
'5'
);

INSERT INTO tb_pedidos VALUES(
'2',
'2',
'2',
'2024-10-01',
'10'
);

INSERT INTO tb_pedidos VALUES(
'3',
'3',
'3',
'2024-10-04',
'4'
);

INSERT INTO tb_pedidos VALUES(
'4',
'4',
'4',
'2024-10-04',
'9'
);

INSERT INTO tb_pedidos VALUES(
'5',
'5',
'5',
'2024-10-06',
'20'
);


