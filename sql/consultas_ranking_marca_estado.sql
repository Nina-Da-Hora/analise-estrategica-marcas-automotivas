-- Visualizar as primerias linhas para identificar o conteúdo de cada colunas
SELECT *
FROM car_prices_gold
LIMIT 3;

PRAGMA table_info(car_prices_gold); -- Vefificar os tipo de dado de cada colunas 

SELECT COUNT(*) AS total_linhas     -----Verifica a quantidade de linhas total da tabela car_prices_gold
FROM car_prices_gold;

-- Etapa 4:  Mostar Particão de mercado de cada marca por estado
-- Segundo google: Market Share (Vendas da empresa / Vendas total do mercado) * 100
-- Traduzindo para o desafio market_share = vendas_marca / vendas_do_estado * 100

WITH vendas_por_marca AS (  							-- A tabela possui os dados de cada venda individual
	SELECT												-- Crie uma CTE para somar as vendas por estado e por marca
		estado,
		marca,
		CAST(SUM(preco_venda) AS FLOAT) AS vendas_marca  -- Converti para FLOAT para evitar no cálculo do market share
	FROM car_prices_gold
	GROUP BY estado, marca
)
SELECT
	estado,
	marca,
	vendas_marca,
	SUM(vendas_marca) OVER (PARTITION BY estado) AS vendas_estado,
	ROUND((vendas_marca / SUM(vendas_marca) OVER (PARTITION BY estado))*100,2) AS market_share,
	RANK() OVER(PARTITION BY estado ORDER BY vendas_marca DESC) AS raking_vendas_estado
FROM vendas_por_marca
ORDER BY estado, raking_vendas_estado;

-- Observações:
-- Em 	RANK() OVER(PARTITION BY estado ORDER BY vendas_marca DESC) AS raking_vendas_estado AS market_share:
-- Não consegui ordenar pelo ranking, então usei vendas_marca no ORDER BY, acho que fica correspondete
-- Pensei em usar subconsulta para criar a coluna vendas_marca, mas ficou estava fincando longa e me perdi, então usei a CTE