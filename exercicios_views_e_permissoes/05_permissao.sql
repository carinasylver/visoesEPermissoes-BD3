CREATE GROUP coletores;

GRANT SELECT, UPDATE, DELETE
ON contas_receber
TO coletores;

ALTER GROUP coletores ADD USER maria;