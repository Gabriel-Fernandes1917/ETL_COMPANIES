# Projeto de Engenharia de Dados com dbt e Impala

Este projeto tem como objetivo disponibilizar dados tratados de cadastros de **CNPJ** em um ambiente **Impala (Apache Cloudera)**, utilizando o **dbt** como ferramenta de transformação, a partir de dados públicos da Receita Federal.

O foco do projeto é aplicar boas práticas de **Analytics Engineering** em ambiente Cloudera, incluindo limpeza de dados, modelagem dimensional, testes de qualidade e documentação.

---

## 📌 Contexto

Os dados de CNPJ são disponibilizados em formato bruto no HDFS e apresentam diversos problemas comuns em ambientes corporativos, os quais necessitam de tratamento para uso analítico, tais como:
- valores nulos ou inválidos
- caracteres indesejados oriundos da ingestão bruta
- ausência de padronização
- necessidade de aplicação de regras de negócio

Este projeto simula um cenário real de engenharia de dados, desde a ingestão até a camada analítica.

---

## 🏗 Arquitetura do Projeto

O pipeline foi organizado seguindo o padrão recomendado pelo dbt:

- **staging**  
  Limpeza inicial dos dados brutos, padronização de campos e remoção de valores inválidos.

- **intermediate**  
  Aplicação de regras de negócio, validações e preparação dos dados para modelagem.

- **marts**  
  Modelagem dimensional com tabelas de **fatos** e **dimensões**, prontas para consumo analítico e ferramentas de BI.

---

## 🧱 Modelagem de Dados

- **Dimensões**
  - CNAEs
  - Empresas

- **Fatos**
  - Estabelecimentos

A modelagem segue o padrão **star schema**, facilitando consultas analíticas e integração com ferramentas de visualização de dados.

---

## 🛠 Tecnologias Utilizadas

- dbt
- Impala SQL
- Apache Cloudera
- Hue
- Modelagem dimensional

---

## ✅ Qualidade e Governança

O projeto utiliza recursos do dbt para garantir qualidade e confiabilidade dos dados, incluindo:
- testes de integridade (ex: `not null`)
- documentação de modelos e colunas

---

## ▶️ Execução do Projeto

Executar os modelos dbt:

```bash
dbt run
