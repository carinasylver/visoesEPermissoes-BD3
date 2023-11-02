CREATE GROUP DeptCompras;

ALTER GROUP DeptCompras ADD USER lucas;

GRANT SELECT, INSERT, UPDATE, DELETE 
ON fornecedores
TO DeptCompras;