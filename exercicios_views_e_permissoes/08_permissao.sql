CREATE USER funcionario WITH PASSWORD '123';

GRANT SELECT (nome, endereco, tipo_cliente)
ON clientes
TO funcionario
WITH GRANT OPTION;