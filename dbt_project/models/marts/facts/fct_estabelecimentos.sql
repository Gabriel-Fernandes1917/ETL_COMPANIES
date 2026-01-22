WITH estabelecimentos AS (
    SELECT 
        *
    FROM {{ ref('int_estabelecimentos')}}
)

SELECT * FROM estabelecimentos