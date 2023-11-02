CREATE VIEW info_vendas_2023 AS
SELECT
    itens.descricao AS descricao_item,
    SUM(venda_itens.quantidade) AS numero_unidades_vendidas
FROM
    itens
JOIN
    venda_itens ON (itens.codigo = venda_itens.codigo)
JOIN
    vendas ON (venda_itens.codvenda = vendas.codigo)
WHERE
    TO_CHAR(vendas.dt_venda, 'YYYY') = '2023'
GROUP BY
    1;