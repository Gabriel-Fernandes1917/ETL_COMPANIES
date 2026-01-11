with socios as (
    select
        regexp_replace(cnpj_basico, '^"|"$', '') as cnpj_basico,
        regexp_replace(identificador_de_socio, '^"|"$', '') as identificador_de_socio,
        regexp_replace(nome_do_socio_ou_razao_social, '^"|"$', '') as nome_do_socio_ou_razao_social,
        regexp_replace(cnpj_cpf_do_socio, '^"|"$', '') as cnpj_cpf_do_socio,
        regexp_replace(qualificacao_do_socio, '^"|"$', '') as qualificacao_do_socio,
        regexp_replace(data_de_entrada_sociedade, '^"|"$', '') as data_de_entrada_sociedade,
        regexp_replace(pais, '^"|"$', '') as pais,
        regexp_replace(representante_legal, '^"|"$', '') as representante_legal,
        regexp_replace(nome_do_representante, '^"|"$', '') as nome_do_representante,
        regexp_replace(qualificacao_do_representante_legal, '^"|"$', '') as qualificacao_do_representante_legal,
        regexp_replace(faixa_etaria, '^"|"$', '') as faixa_etaria
    from {{ source('raws', 'socios') }}
)

select * from socios