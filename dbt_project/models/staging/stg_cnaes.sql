with cnaes as (
    select
        regexp_replace(codigo, '^"|"$', '') as codigo,
        regexp_replace(descricao, '^"|"$', '') as descricao
    from {{ source('raws', 'cnaes') }}
)

select * from cnaes