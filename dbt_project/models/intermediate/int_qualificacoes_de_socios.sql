WITH qualificacoes_de_socios AS (
    SELECT 
        codigo,
        descricao
    FROM {{ ref('stg_qualificacoes_de_socios') }}
)

SELECT * FROM qualificacoes_de_socios