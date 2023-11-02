CREATE VIEW info_3produtos_mais_vendidos AS
SELECT
  itens.codigo,
  itens.descricao AS descricao_item
	--SUM(venda_itens.quantidade) AS total_vendido
FROM
  itens
JOIN
  venda_itens ON (itens.codigo = venda_itens.codigo)
GROUP BY
  1, 2
ORDER BY 
  SUM(venda_itens.quantidade) DESC
LIMIT 3;