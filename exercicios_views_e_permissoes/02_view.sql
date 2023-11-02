CREATE VIEW info_cliente_telefone AS
SELECT 
	clientes.nome AS cliente,
       CASE
            WHEN fones_clientes.num_telefone IS NOT NULL THEN fones_clientes.num_telefone
            ELSE 'sem telefone'
       END AS telefone
FROM 
	clientes
LEFT JOIN fones_clientes ON (clientes.codcliente = fones_clientes.cliente);


CREATE VIEW info_cliente_telefone AS
SELECT clientes.nome  AS cliente,
       COALESCE(fones_clientes.num_telefone, 'sem telefone') AS telefone
FROM 
	clientes
LEFT JOIN fones_clientes ON (clientes.codcliente = fones_clientes.cliente);