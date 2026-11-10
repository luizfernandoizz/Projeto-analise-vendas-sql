USE projeto_loja;

-- VIEW - View Criada para Faturamento por produto

CREATE VIEW vw_faturamento_produtos AS
SELECT
    produtos.Nome,
    SUM(itens_pedido.quantidade * itens_pedido.preco_unitario) AS Faturamento
FROM produtos
INNER JOIN itens_pedido
    ON produtos.id_produto = itens_pedido.id_produto
GROUP BY produtos.id_produto, produtos.Nome;

SELECT *
FROM vw_faturamento_produtos
ORDER BY Faturamento DESC;