CREATE VIEW info_itens AS
SELECT
  i.codigo,
  i.descricao,
  to_char(i.valor, 'L9G999G990D99') as valor,
  i.estoque,
  f.descricao AS fornecedores,
  max(c.data) AS data_ultima_compra
FROM
  itens i
  JOIN compras_itens ci ON (i.codigo = ci.coditem)
  JOIN compras c ON (c.codigo = ci.codcompra)
  JOIN fornecedores f ON (f.codigo = c.codfornecedor)
GROUP BY
  i.codigo,
  i.descricao,
  i.valor,
  i.estoque,
  f.descricao;