# SQL Data Warehouse (Medallion) — Portfolio Project

**One-liner:** I built a small SQL Server data warehouse (Bronze → Silver → Gold) and wrote analysis queries that answer real business questions about customers, products, and sales. This repository is a **proof of my SQL + data modeling + analysis skills**.

---

## 1) What I built
- **Architecture:** Medallion pattern  
  - **Bronze:** raw CSV ingest  
  - **Silver:** cleaning, standardization, type casting, deduplication  
  - **Gold:** star-schema for analytics (dimensions + facts)
- **Model:** `gold.dim_customers`, `gold.dim_products`, `gold.fact_sales`
- **Analytics:** segmentation, product profitability, sales trends, Top-N, “last activity” metrics
- **Evidence:** screenshots of schema and query results (dark theme)

---

## 2) What’s unique in my version
- My own **naming standards** and schema choices (e.g., `gold.dim_customers`, consistent keys and data types)
- Extra **Silver-layer validations** (trim/upper, NULL handling, dedupe, safe casts)
- Additional **business metrics** (e.g., `avg_selling_price`, product `lifespan`, simple RFM-style checks)
- Brief **commentary on results** beside each key query

---

## 3) Quickstart (5 minutes)

**Prerequisites**
- SQL Server (Express is fine)
- SSMS

**Steps**
1. Clone the repo.  
2. Run scripts in this order:
   - `scripts/bronze/` → create DB + load CSVs (check file paths first)
   - `scripts/silver/` → clean and standardize data
   - `scripts/gold/` → create dimensions/facts and populate
3. Execute analysis queries from `scripts/gold/analytics/`.
4. Browse `docs/screenshots/` for model and result previews.

> Tip: If BULK INSERT is used, verify local file paths and permissions in each Bronze script.

---

## 4) Repository structure
