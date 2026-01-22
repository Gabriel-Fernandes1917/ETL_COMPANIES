WITH simples AS (
    SELECT 
        cnpj_basico,
        opcao_pelo_simples,
        data_de_opcao_pelo_simples,
        data_de_exclusao_do_simples,
        opcao_pelo_mei,
        data_de_opcao_pelo_mei,
        data_de_exclusao_do_mei
    FROM {{ ref('stg_simples') }}
)

SELECT * FROM simples