WITH paises AS (
    SELECT 
        codigo,
        descricao
    FROM {{ ref('int_paises') }}
)

SELECT * FROM paises