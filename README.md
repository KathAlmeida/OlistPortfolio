# 🛒 Análise de E-commerce
### Performance • Clientes • Logística • Satisfação

---

## 📌 Visão Geral

Este projeto analisa dados de um e-commerce com o objetivo de entender:

- **Performance de vendas**
- **Comportamento dos clientes**
- **Eficiência logística**
- **Impacto na satisfação**

Inicialmente focado em métricas básicas (faturamento e ticket médio), o projeto evoluiu para uma análise mais completa, incorporando múltiplas áreas do negócio.

---

## ⚠️ Escopo e Limitações dos Dados

**Período analisado:** Jan/2017 a Ago/2018

- 2016 foi removido devido ao baixo volume de dados  
- 2017 apresenta indícios de incompletude  
- Comparações entre anos devem ser feitas com cautela  

> **Decisão analítica:** priorização da qualidade e confiabilidade dos dados

---

## 🏗️ Estrutura e Preparação dos Dados

Os dados foram importados manualmente para o SQL Server Management Studio, incluindo:

- Criação de tabelas do zero  
- Definição de tipos de dados  
- Criação de chaves primárias  
- Validação de consistência entre tabelas  

### ⚠️ Desafio Técnico

Durante as análises iniciais:

> **Os valores de faturamento estavam inflados**

**Causa:** erro de tipagem (dados numéricos incorretos)

**Solução:**
- Reimportação como texto  
- Conversão controlada para decimal  

**Resultado:** garantia de integridade dos dados

---

## 📊 Visão Geral do Negócio

- **Faturamento Total:** R$ 13,2M  
- **Ticket Médio:** R$ 137  
- **Total de Pedidos:** ~96 mil  
- **Total de Clientes:** ~93 mil  

---

## 📈 Análise Temporal

Crescimento de **+340% de 2017 para 2018** *(com ressalvas)*

### 🔍 Insight Principal

- Pico de faturamento em **Maio/2018 (R$ 978 mil)**  
- Destaque para categorias:
  - Relógios e Presentes  
  - Beleza e Saúde  

**Conclusão:** forte indício de sazonalidade (Dia das Mães)

---

## 👥 Análise de Clientes

- Apenas **3% dos clientes são recorrentes**  
- Frequência média: **1 compra por cliente**

### 🔍 Insight Principal

O negócio depende fortemente de **aquisição de novos clientes**

- Baixa retenção  
- Receita não correlacionada ao ticket médio  

**Conclusão:** crescimento baseado em volume, não em valor por cliente  

---

## 📦 Análise de Produtos

Principais categorias por faturamento:

- Beleza e Saúde — 9,3%  
- Relógios e Presentes — 8,8%  
- Cama, Mesa e Banho — 7,8%  
- Esporte e Lazer — 7,2%  
- Informática — 6,7%  

### 🔍 Insight Principal

Faturamento distribuído entre categorias, sem forte dependência de uma única.

---

## 🚚 Análise Logística

- **93% das entregas no prazo (~90 mil pedidos)**  

### 🔍 Insight Principal

A operação logística é eficiente no geral.

**Pontos de atenção:**
- Entregas acima de 20 dias concentradas em:
  - RJ (~2,5 mil)  
  - SP (~1,8 mil)  
  - BA, MG, RS (~1 mil)  

---

## ⭐ Análise de Satisfação

- **77% de avaliações positivas**

### 🔍 Insight Principal

Existe relação direta entre prazo de entrega e satisfação:

| Prazo de Entrega | Satisfação |
|------------------|-----------|
| 1–10 dias        | 85%       |
| >20 dias         | 50%       |

---

## 🔗 Insight Integrado

**Logística impacta diretamente a experiência do cliente**

- Entregas rápidas → melhores avaliações  
- Entregas lentas → queda na satisfação  

---

## 💡 Conclusão

O e-commerce apresenta:

- Alto volume de vendas  
- Baixa retenção de clientes  
- Logística eficiente com pontos críticos  
- Forte impacto do prazo de entrega na satisfação  

---

## 🚀 Recomendações

- Investir em retenção de clientes  
- Melhorar prazos logísticos em regiões críticas  
- Reduzir tempo de entrega  
- Explorar sazonalidade (datas comemorativas)  

---

## 🛠️ Ferramentas

- SQL  
- Power BI 
