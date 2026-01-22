WITH paises AS (
    SELECT 
        codigo,
        descricao
    FROM {{ ref('stg_paises') }}
)

SELECT * FROM paises