WITH socios AS (
    SELECT
        cnpj_basico,
        identificador_de_socio,
        nome_do_socio_ou_razao_social,
        cnpj_cpf_do_socio,
        qualificacao_do_socio,
        data_de_entrada_sociedade,
        COALESCE(NULLIF(pais, ''), 'Não informado') as pais,
        representante_legal,
        COALESCE(NULLIF(nome_do_representante, ''), 'Não informado') as nome_do_representante,
        qualificacao_do_representante_legal,
        faixa_etaria
    FROM {{ ref('stg_socios') }}
)

SELECT * FROM socios