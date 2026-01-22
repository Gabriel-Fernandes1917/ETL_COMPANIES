WITH municipios AS (
    SELECT 
        *
    FROM {{ ref('int_municipios')}}
)

SELECT * FROM municipios