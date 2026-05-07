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

| Principais KPIS | Visualização |
| :--- | :--- |
| **Faturamento Total:** R$ 13,2M<br>**Ticket Médio:** R$ 137<br>**Total de Pedidos:** ~96 mil<br>**Total de Clientes:** ~93 mil | <img src="https://github.com/KathAlmeida/OlistPortfolio/blob/main/images/Overview.jpg?raw=true" width="450"> |

---

## 📈 Análise Temporal

| Insights e Conclusões | Visualização |
| :--- | :--- |
| Crescimento de **+340% de 2017 para 2018** *(com ressalvas)*<br><br>🔍 **Insight Principal:**<br><ul><li>Pico de faturamento em **Maio/2018 (R$ 978 mil)**</li><li>Destaque para categorias:</li><ul><li>Relógios e Presentes</li><li>Beleza e Saúde</li></ul></ul><br>**Conclusão:** Forte indício de sazonalidade (Dia das Mães). | <img src="https://github.com/KathAlmeida/OlistPortfolio/blob/main/images/analise%20temporal.jpg?raw=true" width="450"> |



---

## 👥 Análise de Clientes

| Principais Informações | Visualização |
| :--- | :--- |
| <ul><li>Apenas **3% dos clientes são recorrentes**</li><li>Frequência média: **1 compra por cliente**</li></ul><br>🔍 **Insight Principal:**<br>O negócio depende fortemente de **aquisição de novos clientes**:<ul><li>Baixa retenção</li><li>Receita não correlacionada ao ticket médio</li></ul><br>**Conclusão:** Crescimento baseado em volume, não em valor por cliente. | <img src="https://github.com/KathAlmeida/OlistPortfolio/blob/main/images/clientes.jpg?raw=true" width="450"> |

---

## 📦 Análise de Produtos

| Principais Informações | Visualização |
| :--- | :--- |
| Principais categorias por faturamento:<ul><li>**Beleza e Saúde:** 9,3%</li><li>**Relógios e Presentes:** 8,8%</li><li>**Cama, Mesa e Banho:** 7,8%</li><li>**Esporte e Lazer:** 7,2%</li><li>**Informática:** 6,7%</li></ul><br>🔍 **Insight Principal:**<br>Faturamento bem distribuído entre categorias, sem dependência crítica de um único nicho. | <img src="https://github.com/KathAlmeida/OlistPortfolio/blob/main/images/produtos.jpg?raw=true" width="450"> |

---

## 🚚 Análise Logística

| Principais Informações | Visualização |
| :--- | :--- |
| <ul><li>**93% das entregas no prazo** (~90 mil pedidos)</li></ul><br>🔍 **Insight Principal:**<br>A operação logística é eficiente no geral.<br><br>⚠️ **Pontos de atenção:**<br>Entregas acima de 20 dias concentradas em:<ul><li>**RJ:** ~2,5 mil</li><li>**SP:** ~1,8 mil</li><li>**BA, MG, RS:** ~1 mil cada</li></ul> | <img src="https://github.com/KathAlmeida/OlistPortfolio/blob/main/images/logistica.jpg?raw=true" width="450"> |

---

## ⭐ Análise de Satisfação

| Principais Informações | Visualização |
| :--- | :--- |
| <ul><li>**77% de avaliações positivas**</li></ul><br>🔍 **Insight Principal:**<br>Existe relação direta entre prazo de entrega e satisfação:<br><br>\| Prazo de Entrega \| Satisfação \|<br>\| :--- \| :--- \|<br>\| 1–10 dias \| **85%** \|<br>\| >20 dias \| **50%** \| | <img src="https://github.com/KathAlmeida/OlistPortfolio/blob/main/images/reviews.jpg?raw=true" width="450"> |
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

## 💻 Queries SQL

Algumas consultas utilizadas durante as análises:

- [Faturamento Total](./sql/06_faturamento_total.sql)
- [Clientes Únicos](./sql/12_quantidade_de_clientes_unicos.sql)
- [Receita por Tipo de Cliente](./sql/17_participacao_receita_tipo_cliente.sql)
