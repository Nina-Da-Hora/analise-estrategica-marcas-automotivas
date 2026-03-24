# 📊 Análise Estratégica de Marcas Automotivas

## 📑 Conteúdo

- 🎯 [Objetivo do Projeto](#-objetivo-do-projeto)
- 📊 [Dataset](#-dataset)
- 🛠️ [Tecnologias Utilizadas](#️-tecnologias-utilizadas)
- 📂 [Estrutura do Projeto](#-estrutura-do-projeto)
- 🔄 [Pipeline de Dados](#-pipeline-de-dados)
- 🧹 [Limpeza e Tratamento de Dados](#-limpeza-e-tratamento-de-dados)
- 💡 [Principais Insights do Negócio](#-principais-insights-do-negócio)
- 📈 [Visualização de Dados](#-visualização-de-dados)
- 📉 [Recomendação Estratégica](#-recomendação-estratégica)
- ⚙️ [Como Executar o Projeto](#%EF%B8%8F-como-executar-o-projeto)
- 📦 [Release](#-release)
- 👥 [Equipe do Projeto](#-equipe-do-projeto)
---

## 🎯 Objetivo do Projeto

Este projeto foi desenvolvido para apoiar a tomada de decisão estratégica da empresa fictícia American Autos, do setor automotivo.

O objetivo é avaliar o desempenho das marcas presentes no portfólio e identificar aquelas com baixa performance de vendas.

A partir da análise dos dados, buscamos responder:

Quais marcas devem ser descontinuadas por não gerar valor proporcional ao capital investido?

---

## 📊 Dataset

O dataset contém informações sobre vendas de veículos, incluindo:

- Marca e modelo

- Estado e região

- Preço de venda e preço de mercado (MMR)

- Quilometragem

- Condição do veículo

- Data da venda

- Mês Venda

- Ano Venda


---

## 🛠️ Tecnologias Utilizadas

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas)
![SQL](https://img.shields.io/badge/SQL-003B57?style=for-the-badge&logo=postgresql)
![SQLite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)

### 📦 Bibliotecas Python

- 🟢 **NumPy** – cálculos e arrays numéricos  
- 🟢 **IPython.display** – exibição formatada de DataFrames  
- 🟢 **SQLAlchemy** – manipulação do banco de dados SQLite
---
## 📂 Estrutura do Projeto
 ```
analise-estrategica-marcas-automotivas/
│── data/
│     ├── silver/                               → dados limpos
│     ├── gold/                                 → dados prontos para análise
│     └── kpis/                                 → datasets do dashboard
│── notebooks/                                  → análises em Python
│── sql/                                        → queries SQL utilizadas
│── tableau/                                    → dashboard final
│── data_quality/                               → relatório de qualidade de dados (PDF)
│── analysis/                                   → arquivos auxiliares
│── dashboard/                                  → arquivos e imagens do dashboard com análises e insights estratégicos
│── documents/                                  → documentação e materiais de apoio
│── presentation/                               → documentação e materiais da presentação
│── README.md
└── requirements.txt
 ```
---

## 🔄 Pipeline de Dados

O projeto segue uma arquitetura inspirada no modelo Medallion Architecture:

Bronze → Silver → Gold

🔹 Camadas:

Bronze → dados brutos

- Silver → dados limpos e tratados

- Gold → dados prontos para análise

A partir da camada Gold, foram gerados os KPIs utilizados no dashboard.

---
## 🧹 Limpeza e Tratamento de Dados

Foram aplicadas diversas etapas de limpeza e validação, incluindo:

- Remoção de VIN inválidos e duplicados

- Validação de anos

- Tratamento de valores nulos e inconsistentes

- Padronização de marcas e modelos

- Análise de outliers (IQR)

- Criação de variáveis derivadas (ano e mês de venda)

O pipeline foi estruturado para garantir qualidade e consistência dos dados.

---
## 💡 Principais Insights do Negócio
A análise revelou:

- Concentração de vendas em determinadas regiões

- Sazonalidade ao longo do ano

- Alta porcentagem de vendas abaixo do valor de mercado (MMR)

- Diferenças relevantes de desempenho entre marcas

Além disso, foi aplicado o princípio de Pareto (80/20) para identificar marcas com baixa contribuição.

---
## 📈 Visualização de Dados

Os insights foram consolidados em um dashboard no Tableau, permitindo:

- Análise por região

- Comparação entre marcas

- Evolução temporal das vendas

- Identificação de oportunidades estratégicas

---
## 📉 Recomendação Estratégica

A análise evidenciou que nem todas as marcas contribuem de forma eficiente para o resultado do negócio.

Recomendações:

- ❌ Descontinuar a marca Daewoo

- ⚠️ Avaliar a descontinuação de Geo e Lotus

Essa decisão permite uma melhor alocação de recursos e aumento da eficiência operacional.

---

## ⚙️ Como Executar o Projeto

- Clonar o repositório

- Instalar as dependências (requirements.txt)

- Executar os notebooks na pasta /notebooks

---
## 📦 Release

Os arquivos de dados estão disponíveis na seção Releases:

- car_prices_bronze.csv → dados brutos

- car_prices_final.db → base transformada

---

## 👥 Equipe do Projeto
Projeto desenvolvido pelo grupo **Nina da Hora**

| Nome | Função no Projeto |
|-----|-----|
| Francielle | Product Owner |
| Gisela | Analista de Dados |
| Ingrid | Analista de Dados |
| Luana | Engenharia de Dados |
| Pâmella | Analista de Dados |
| Tatiana | Analista de Negócios |
| Vanelle| Analista BI |
| Vanessa | Engenharia de Dados|
