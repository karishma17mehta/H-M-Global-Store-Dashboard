# 🛍️ H&M Global Retail Store Intelligence Dashboard

A business intelligence dashboard powered by **SQL** and **Tableau**, built to analyze 4,000+ global H&M stores using data engineering, geospatial querying, and visual storytelling.

---

## 📊 Project Overview

This project combines **relational SQL modeling**, **ETL pipeline logic**, and **interactive Tableau dashboards** to support strategic decision-making across:

- **Store Format Penetration**  
- **Weekend Operational Efficiency** (based on parsed open–close durations)  
- **Proximity-Based Store Clustering**

The dashboard is live on **Tableau Public**:  
🔗 [View Dashboard](https://public.tableau.com/app/profile/karishma.mehta8733/viz/HMGlobalRetailStoreIntelligenceDashboard/Dashboard1)

---

## 📥 Download Tableau Workbook

➡️ [Click here to download the full `.twbx` dashboard](https://github.com/karishma17mehta/H-M-Global-Store-Dashboard/releases/latest)

---

## ⚙️ Tech Stack

- **SQL (MySQL Workbench)**  
  - Data modeling & normalization (3NF)
  - Geospatial queries (`ST_Distance_Sphere`)
  - Time-based calculations using `STR_TO_DATE` and `TIMEDIFF`
- **Tableau Desktop & Public**
  - Dynamic sorting with parameters
  - Symbol maps, filters, drop-downs
  - Insight annotations & storytelling
- **Data Source**:  
  [H&M Stores Dataset (Kaggle)](https://www.kaggle.com/datasets/shivamb/hm-stores-dataset)

---

## 🧠 Key Business Insights

- **Format Strategy**:  
  Flagship stores dominate mature markets like Japan, France, and Korea — ideal for brand-immersive experiences. Standard and Outlet formats are concentrated in developing regions, aligning with cost-sensitive retail strategies.

- **Operational Hours** *(Parsed Open–Close Time Based)*:  
  Cities like **Madina**, **Mecca**, and **Taif** operate with **28–29 weekend hours**, significantly above the ~22-hour global average — suggesting stronger footfall, religious or cultural shopping behavior, and potential for extended staffing or targeted promotions.

- **Store Clustering**:  
  Cities like **London**, **Tokyo**, and **Paris** show high intra-city clustering (**100+ store pairs within 10km**), revealing opportunities for hyperlocal campaigns, shared staffing, or consolidation in saturated markets.

---

## 🗃️ Project Structure

```bash
H-M-Global-Store-Dashboard/
├── sql/
│   ├── store_format_penetration.sql
│   ├── weekend_hours_actual.sql
│   └── store_clustering_query.sql
├── data/
│   ├── storeformatpenetration.csv
│   ├── openhours.csv
│   └── storeclustering_LL.csv
├── H&M_Dashboard.twbx
├── README.md
└── LICENSE
