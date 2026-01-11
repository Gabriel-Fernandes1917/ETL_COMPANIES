with estabelecimentos as (
    select
        regexp_replace(cnpj_basico, '^"|"$', '') as cnpj_basico,
        regexp_replace(cnpj_ordem, '^"|"$', '') as cnpj_ordem,
        regexp_replace(cnpj_dv, '^"|"$', '') as cnpj_dv,
        regexp_replace(identificador_matriz_filial, '^"|"$', '') as identificador_matriz_filial,
        regexp_replace(nome_fantasia, '^"|"$', '') as nome_fantasia,
        regexp_replace(situacao_cadastral, '^"|"$', '') as situacao_cadastral,
        regexp_replace(data_situacao_cadastral, '^"|"$', '') as data_situacao_cadastral,
        regexp_replace(motivo_situacao_cadastral, '^"|"$', '') as motivo_situacao_cadastral,
        regexp_replace(nome_da_cidade_no_exterior, '^"|"$', '') as nome_da_cidade_no_exterior,
        regexp_replace(pais, '^"|"$', '') as pais,
        regexp_replace(data_de_inicio_atividade, '^"|"$', '') as data_de_inicio_atividade,
        regexp_replace(cnae_fiscal_principal, '^"|"$', '') as cnae_fiscal_principal,
        regexp_replace(cnae_fiscal_secundaria, '^"|"$', '') as cnae_fiscal_secundaria,
        regexp_replace(tipo_de_logradouro, '^"|"$', '') as tipo_de_logradouro,
        regexp_replace(logradouro, '^"|"$', '') as logradouro,
        regexp_replace(numero, '^"|"$', '') as numero,
        regexp_replace(complemento, '^"|"$', '') as complemento,
        regexp_replace(bairro, '^"|"$', '') as bairro,
        regexp_replace(cep, '^"|"$', '') as cep,
        regexp_replace(uf, '^"|"$', '') as uf,
        regexp_replace(municipio, '^"|"$', '') as municipio,
        regexp_replace(ddd_1, '^"|"$', '') as ddd_1,
        regexp_replace(telefone_1, '^"|"$', '') as telefone_1,
        regexp_replace(ddd_2, '^"|"$', '') as ddd_2,
        regexp_replace(telefone_2, '^"|"$', '') as telefone_2,
        regexp_replace(ddd_do_fax, '^"|"$', '') as ddd_do_fax,
        regexp_replace(fax, '^"|"$', '') as fax,
        regexp_replace(correio_eletronico, '^"|"$', '') as correio_eletronico,
        regexp_replace(situacao_especial, '^"|"$', '') as situacao_especial,
        regexp_replace(data_da_situacao_especial, '^"|"$', '') as data_da_situacao_especial
    from {{ source('raws', 'estabelecimentos') }}
)

select * from estabelecimentos