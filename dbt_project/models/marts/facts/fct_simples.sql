WITH simples AS (
    SELECT 
        *
    FROM {{ ref('int_simples')}}
)

SELECT * FROM simples