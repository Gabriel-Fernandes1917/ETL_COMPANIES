WITH motivos AS (
    SELECT 
        codigo,
        descricao
    from {{ ref('stg_motivos') }}
)

select * from motivos