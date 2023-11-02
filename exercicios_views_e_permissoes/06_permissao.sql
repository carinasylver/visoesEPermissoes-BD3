CREATE GROUP time_de_vendas;

ALTER GROUP time_de_vendas ADD USER cleber, miguel ;

GRANT SELECT, UPDATE, INSERT, DELETE
ON itens 
TO time_de_vendas;

UPDATE itens
SET valor = valor * 1.1
WHERE codigo IN (6, 7, 8);


SELECT 
	codigo, 
	valor
FROM 
	itens
ORDER BY
	codigo;
