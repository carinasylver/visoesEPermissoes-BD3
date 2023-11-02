CREATE VIEW info_vendas_mensais AS
SELECT
    TO_CHAR(dt_venda, 'MM') AS mes,
    SUM(valor_total_venda) AS valor_total_vendas,
    SUM(quantidade) AS num_produtos_vendidos
FROM
    vendas
JOIN
    venda_itens ON (vendas.codigo = venda_itens.codvenda)
JOIN
    itens ON (venda_itens.codigo = itens.codigo)
GROUP BY
    1
ORDER BY
    mes;