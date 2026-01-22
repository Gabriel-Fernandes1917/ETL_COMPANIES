WITH motivos AS (
    SELECT 
        codigo,
        descricao
    FROM {{ ref('int_motivos') }}
)

SELECT * FROM motivos