with simples as (
    select
        regexp_replace(cnpj_basico, '^"|"$', '') as cnpj_basico,
        regexp_replace(opcao_pelo_simples, '^"|"$', '') as opcao_pelo_simples,
        regexp_replace(data_de_opcao_pelo_simples, '^"|"$', '') as data_de_opcao_pelo_simples,
        regexp_replace(data_de_exclusao_do_simples, '^"|"$', '') as data_de_exclusao_do_simples,
        regexp_replace(opcao_pelo_mei, '^"|"$', '') as opcao_pelo_mei,
        regexp_replace(data_de_opcao_pelo_mei, '^"|"$', '') as data_de_opcao_pelo_mei,
        regexp_replace(data_de_exclusao_do_mei, '^"|"$', '') as data_de_exclusao_do_mei
    from {{ source('raws', 'simples') }}
)

select * from simples