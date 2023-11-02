CREATE VIEW info_itens_cod_desc_val AS
SELECT
	 codigo,
   descricao,
   valor
FROM 
	itens;


UPDATE itens
SET valor = valor * 1.10;

