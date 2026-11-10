USE projeto_loja;

-- Consulta 1 - Faturamento total da loja

SELECT
    SUM(quantidade * preco_unitario) AS faturamento_total
FROM itens_pedido;
-- Consulta 2 - Produtos mais vendidos

SELECT
    produtos.Nome,
    SUM(itens_pedido.quantidade) AS total_vendido
FROM produtos
INNER JOIN itens_pedido
    ON produtos.id_produto = itens_pedido.id_produto
GROUP BY produtos.id_produto, produtos.Nome
ORDER BY total_vendido DESC;
-- Consulta 3 - Faturamento por produto

SELECT
    produtos.Nome,
    SUM(itens_pedido.quantidade * itens_pedido.preco_unitario) AS faturamento
FROM produtos
INNER JOIN itens_pedido
    ON produtos.id_produto = itens_pedido.id_produto
GROUP BY produtos.id_produto, produtos.Nome
ORDER BY faturamento DESC;

-- Consulta 4 - Faturamento por cliente

SELECT
    clientes.Nome,
    SUM(itens_pedido.quantidade * itens_pedido.preco_unitario) AS faturamento
FROM clientes
INNER JOIN pedidos
    ON clientes.id_cliente = pedidos.id_cliente
INNER JOIN itens_pedido
    ON pedidos.id_pedido = itens_pedido.id_pedido
GROUP BY clientes.id_cliente, clientes.Nome
ORDER BY faturamento DESC;

-- Consulta 5 - Quantidade de pedidos por cliente

SELECT
    clientes.Nome,
    COUNT(pedidos.id_pedido) AS total_pedidos
FROM clientes
LEFT JOIN pedidos
    ON clientes.id_cliente = pedidos.id_cliente
GROUP BY clientes.id_cliente, clientes.Nome
ORDER BY total_pedidos DESC;

-- Consulta 6 - Faturamento por pedido

SELECT
    pedidos.id_pedido,
    clientes.Nome,
    SUM(itens_pedido.quantidade * itens_pedido.preco_unitario) AS faturamento
FROM pedidos
INNER JOIN clientes
    ON pedidos.id_cliente = clientes.id_cliente
INNER JOIN itens_pedido
    ON pedidos.id_pedido = itens_pedido.id_pedido
GROUP BY pedidos.id_pedido, clientes.id_cliente, clientes.Nome
ORDER BY faturamento DESC;


