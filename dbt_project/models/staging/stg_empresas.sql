with empresas as (
    select
        regexp_replace(cnpj_basico, '^"|"$', '') as cnpj_basico,
        regexp_replace(nome_empresarial, '^"|"$', '') as nome_empresarial,
        regexp_replace(natureza_juridica, '^"|"$', '') as natureza_juridica,
        regexp_replace(qualificacao_do_responsavel, '^"|"$', '') as qualificacao_do_responsavel,
        regexp_replace(capital_social_da_empresa, '^"|"$', '') as capital_social_da_empresa,
        regexp_replace(porte_da_empresa, '^"|"$', '') as porte_da_empresa,
        regexp_replace(ente_federativo_responsavel, '^"|"$', '') as ente_federativo_responsavel
    from {{ source('raws', 'empresas') }}
)

select * from empresas