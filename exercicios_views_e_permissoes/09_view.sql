CREATE VIEW info_itens_iten_val_desc AS
SELECT 
	descricao AS item,
	TO_CHAR( valor, 'L9G999G990D99') AS valor,
  desconto
FROM
	itens;