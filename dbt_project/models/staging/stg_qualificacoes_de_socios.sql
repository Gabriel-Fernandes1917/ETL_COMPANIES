with qualificacoes_de_socios as (
    select
        regexp_replace(codigo, '^"|"$', '') as codigo,
        regexp_replace(descricao, '^"|"$', '') as descricao
    from {{ source('raws', 'qualificacoes_de_socios') }}
)

select * from qualificacoes_de_socios