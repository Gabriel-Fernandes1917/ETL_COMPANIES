with empresas as (
    select
        cnpj_basico,
        nome_empresarial,
        natureza_juridica,
        qualificacao_do_responsavel,
        capital_social_da_empresa,
        porte_da_empresa,
        COALESCE(NULLIF(ente_federativo_responsavel, ''), 'Não possui') as ente_federativo_responsavel
    from {{ ref('stg_empresas') }}
)

select * from empresas