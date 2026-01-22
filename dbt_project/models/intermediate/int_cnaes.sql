WITH cnaes AS (
    SELECT 
        codigo,
        descricao
    from {{ ref('stg_cnaes') }}
)

select * from cnaes