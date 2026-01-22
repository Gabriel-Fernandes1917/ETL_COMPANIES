WITH naturezas_juridicas AS (
    SELECT 
        codigo,
        descricao
    FROM {{ ref('stg_naturezas_juridicas') }}
)

SELECT * FROM naturezas_juridicas