with estabelecimentos as (
    SELECT 
        cnpj_basico,
        cnpj_ordem,
        cnpj_dv,
        identificador_matriz_filial,
        COALESCE(NULLIF(NULLIF(nome_fantasia, ''), 'NULL'), 'Não possui') 
            AS nome_fantasia,
        situacao_cadastral,
        data_situacao_cadastral,
        motivo_situacao_cadastral,
        COALESCE(NULLIF(NULLIF(nome_da_cidade_no_exterior, ''), 'NULL'), 'Não possui') 
            AS nome_da_cidade_no_exterior,
        COALESCE(NULLIF(NULLIF(pais, ''), 'NULL'), 'Não possui') 
            AS pais,
        data_de_inicio_atividade,
        cnae_fiscal_principal,
        COALESCE(NULLIF(NULLIF(cnae_fiscal_secundaria, ''), 'NULL'), 'Não possui') 
            AS cnae_fiscal_secundaria,
        tipo_de_logradouro,
        logradouro,
        numero,
        COALESCE(NULLIF(NULLIF(complemento, ''), 'NULL'), 'Não possui') 
            AS complemento,
        bairro,
        cep,
        uf,
        municipio,
        ddd_1,
        telefone_1,
        COALESCE(NULLIF(NULLIF(ddd_2, ''), 'NULL'), 'Não possui') 
            AS ddd_2,
        COALESCE(NULLIF(NULLIF(telefone_2, ''), 'NULL'), 'Não possui') 
            AS telefone_2,
        COALESCE(NULLIF(NULLIF(correio_eletronico, ''), 'NULL'), 'Não possui') 
            AS correio_eletronico,
        COALESCE(NULLIF(NULLIF(situacao_especial, ''), 'NULL'), 'Não possui') 
            AS situacao_especial,
        COALESCE(NULLIF(NULLIF(data_da_situacao_especial, ''), 'NULL'), 'Não possui') 
            AS data_da_situacao_especial
    FROM {{ ref('stg_estabelecimentos') }}
)

select * from estabelecimentos