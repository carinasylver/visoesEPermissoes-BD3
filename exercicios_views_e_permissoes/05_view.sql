CREATE MATERIALIZED VIEW info_contas_pagar AS
SELECT
    num_boleto,
    data_vencimento,
    valor,
    desconto,
    compra,
    data_lancamento
FROM
    contas_pagar;


INSERT INTO contas_pagar (numero, num_boleto, tipo, data_vencimento, data_pagamento,
valor_pago, valor, data_lancamento, compra)
values (08, 3658, 2, '2017/05/10', '2017/05/30', 7200, 7200, '2017/05/26', 104);


UPDATE contas_pagar
SET desconto = valor * 0.20
WHERE EXTRACT(YEAR FROM data_lancamento) = 2016;