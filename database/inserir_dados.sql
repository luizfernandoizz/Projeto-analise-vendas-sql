USE projeto_loja;

INSERT INTO clientes (Nome, Cidade, Idade)
VALUES
('Joao', 'Campinas', 25),
('Maria', 'São Paulo', 30),
('Pedro', 'Maceió', 22),
('Ana', 'Campinas', 28),
('Carlos', 'Santos', 35);

INSERT INTO produtos (Nome, Categoria, preco)
VALUES
('Notebook', 'Eletrônicos', 3500.00),
('Mouse', 'Acessórios', 89.90),
('Teclado', 'Acessórios', 150.00),
('Monitor', 'Eletrônicos', 1200.50),
('Cadeira', 'Móveis', 750.00);

INSERT INTO pedidos (id_cliente, data_pedido)
VALUES
(1, '2026-11-01'),
(2, '2026-11-02'),
(3, '2026-11-03'),
(1, '2026-11-04'),
(4, '2026-11-05');

INSERT INTO itens_pedido (
    id_pedido,
    id_produto,
    quantidade,
    preco_unitario
)
VALUES
(1, 1, 1, 3500.00),
(1, 2, 2, 89.90),
(1, 3, 1, 150.00),
(2, 4, 1, 1200.50),
(2, 2, 1, 89.90),
(3, 5, 2, 750.00),
(4, 1, 1, 3500.00),
(5, 3, 2, 150.00);

