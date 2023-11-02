CREATE VIEW info_vendas AS
SELECT v.codigo AS cod_venda,
	   v.dt_venda,
	   v.valor_total_venda,
	   cl.nome AS cliente,
	   f.nome AS funcionario
FROM
	clientes cl
JOIN 
	vendas v ON(cl.codcliente = v.codcliente)	
JOIN 
	funcionarios f ON(f.codfunc= v.codfunc);