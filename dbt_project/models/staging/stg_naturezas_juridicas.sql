with naturezas_juridicas as (
    select
        regexp_replace(codigo, '^"|"$', '') as codigo,
        regexp_replace(descricao, '^"|"$', '') as descricao
    from {{ source('raws', 'naturezas_juridicas') }}
)

select * from naturezas_juridicas