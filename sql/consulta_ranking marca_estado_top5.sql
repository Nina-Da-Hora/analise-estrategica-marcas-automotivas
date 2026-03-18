----Top 5 marcas por estado:

WITH vendas_por_marca AS ( 
    SELECT
        estado,
        marca,
        CAST(SUM(preco_venda) AS FLOAT) AS vendas_marca
    FROM car_prices_gold
    WHERE estado IS NOT NULL
      AND marca  IS NOT NULL
    GROUP BY estado, marca
),
calc AS (
    SELECT
        estado,
        marca,
        vendas_marca,
        SUM(vendas_marca) OVER (PARTITION BY estado) AS vendas_estado,
        ROUND(
          (vendas_marca / SUM(vendas_marca) OVER (PARTITION BY estado)) * 100,
          2
        ) AS market_share,
        RANK() OVER (PARTITION BY estado ORDER BY vendas_marca DESC) AS ranking_estado
    FROM vendas_por_marca
)
SELECT *
FROM calc
WHERE ranking_estado <= 5   -- código do ranking aqui
ORDER BY estado, ranking_estado, marca;
