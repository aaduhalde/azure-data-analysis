# data-serverless-pipeline  
**Multi-Cloud Serverless Architecture (Azure Functions ↔ AWS S3) for E-commerce Data Pipeline**  
Implements **RFM** and **LTV** modeling for Power BI or Looker Studio dashboards, using a **zero-cost FinOps** approach.

---

## Project Goal
Build a **serverless and multi-cloud data pipeline** that integrates e-commerce data sources, processes customer behavior metrics, and delivers interactive dashboards for marketing and business decisions — **with no operational costs**.

---

## Business Context
**E-commerce: Customer Analytics and Lifetime Value (LTV) Focus**

**Business Problem:**  
The Marketing team needs to segment customers and predict their Lifetime Value (LTV) to better target advertising campaigns and optimize marketing spend.

**Technical Solution:**  
- Implement an automated data pipeline with zero operational costs.  
- Apply **RFM (Recency, Frequency, Monetary)** analysis for segmentation.  
- Calculate **LTV** and **conversion rates**.  
- Deliver insights through a **Power BI or Looker Studio dashboard** based on a star schema model.

---

## Key Metrics (Power BI / Looker Studio)
| Metric | Description | Technology |
|--------|--------------|-------------|
| **RFM Score** | Customer segmentation by Recency, Frequency, and Monetary value | T-SQL, DAX |
| **Conversion Rate** | By acquisition channel or product category | DAX, Power BI |
| **LTV (Lifetime Value)** | Predictive value estimation per customer | SQL window functions, DAX |
| **Dynamic Segmentation** | Percentile grouping by RFM score | Power BI Slicers or Looker filters |

---

## Serverless Multi-Cloud Architecture
**FinOps Approach: Using the free tiers from Azure and AWS**

```text
[Data Source]
     │
     ▼
[Azure Function]  →  Cleans and transforms data
     │
     ▼
[AWS S3 Bucket]  ↔  [Azure Blob Storage]
     │
     ▼
[Power BI Desktop / Looker Studio] → Visualization layer
