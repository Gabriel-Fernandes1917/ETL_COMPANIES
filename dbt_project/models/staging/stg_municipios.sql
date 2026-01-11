with municipios as (
    select
        regexp_replace(codigo, '^"|"$', '') as codigo,
        regexp_replace(descricao, '^"|"$', '') as descricao
    from {{ source('raws', 'municipios') }}
)

select * from municipios