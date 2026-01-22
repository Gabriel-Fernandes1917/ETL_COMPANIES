WITH municipios AS (
    SELECT 
        codigo,
        descricao
    from {{ ref('stg_municipios') }}
)

select * from municipios