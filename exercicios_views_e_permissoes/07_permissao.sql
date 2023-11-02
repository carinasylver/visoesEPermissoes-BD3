CREATE USER lucas WITH PASSWORD '123';
CREATE USER joao WITH PASSWORD '123';

CREATE GROUP financeiro;

ALTER GROUP financeiro ADD USER lucas, joao;

GRANT SELECT, INSERT, UPDATE, DELETE
ON contas_pagar 
TO financeiro;