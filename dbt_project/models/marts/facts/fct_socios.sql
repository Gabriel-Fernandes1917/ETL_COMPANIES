WITH socios AS (
    SELECT 
        *
    FROM {{ ref('int_socios')}}
)

SELECT * FROM socios