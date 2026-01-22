with qualificacoes_de_socios as (
    select
        *
    from {{ ref('int_qualificacoes_de_socios') }}
)

select * from qualificacoes_de_socios