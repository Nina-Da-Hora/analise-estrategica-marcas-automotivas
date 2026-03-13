# 📊 Análise Estratégica de Marcas Automotivas

## 📑 Conteúdo

- 🎯 [Objetivo do Projeto](#-objetivo-do-projeto)
- 🛠️ [Tecnologias Utilizadas](#️-tecnologias-utilizadas)
- 📂 [Estrutura do Projeto](#-estrutura-do-projeto)
- 🔄 [Pipeline de Dados](#-pipeline-de-dados)
- 📈 Visualização de Dados
- 💡 Insights do Negócio
- 📉 Recomendação Estratégica
- 📦 Release

---

## 🎯 Objetivo do Projeto

Este projeto foi desenvolvido para apoiar a tomada de decisão estratégica da empresa **American Autos**, uma empresa fictícia do setor automotivo.

A empresa deseja avaliar o desempenho das marcas de veículos presentes em seu estoque para identificar marcas com **baixa performance de vendas**.

A partir da análise dos dados, o objetivo é fornecer uma **recomendação baseada em dados** para a diretoria da empresa, indicando qual marca deve ser **descontinuada do estoque** devido ao baixo desempenho no mercado.

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
## 🗂 Estrutura do Projeto
 ```
analise-estrategica-marcas-automotivas
│
├── data
│   ├── silver      → dados limpos após tratamento
│   ├── gold        → dados prontos para análise
│   └── kpis        → datasets utilizados no dashboard
│
├── notebooks       → notebooks de análise em Python
│
└── documents       → documentação e materiais do projeto
 ```
---

## 🔄 Pipeline de Dados

O projeto segue uma arquitetura inspirada no modelo **Medallion Architecture**, que organiza os dados em diferentes camadas de processamento.

Bronze → Silver → Gold

**Descrição das camadas:**

- **Bronze** – dados brutos provenientes da fonte original.
- **Silver** – dados limpos e transformados após processos de tratamento.
- **Gold** – dados preparados para análise e cálculo de métricas.
  
A partir da camada **Gold**, foram calculados os **KPIs** utilizados na análise e no desenvolvimento do **dashboard no Tableau**.

---
## 💡 Principais Insights
---
## 📊 Dashboard

---
## ⚙️ Como executar o projeto
---
## 📦 Release

Os arquivos de dados utilizados no projeto estão disponíveis na seção **Releases** deste repositório.

Conteúdo disponível:

- **car_prices_bronze.csv** – dados brutos utilizados na análise
- **car_prices_final.db** – banco de dados criado após o processo de transformação

Esses arquivos foram disponibilizados separadamente para facilitar o download e reprodução do projeto.

