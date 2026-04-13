# SQL Data Warehouse Project

Welcome to the **SQL Data Warehouse Project** repository! 🚀  
This project demonstrates a comprehensive data warehousing and analytics solution built with SQL Server, following industry best practices and the Medallion Architecture pattern.

---

## 📖 Project Overview

This project implements a modern data warehouse solution that consolidates sales data from two source systems (ERP and CRM) into a unified analytical platform. The implementation covers the complete data pipeline from raw data ingestion to actionable business insights.

### What This Project Includes:

1. **Data Architecture**: Modern Data Warehouse using Medallion Architecture (**Bronze**, **Silver**, and **Gold** layers)
2. **ETL Pipelines**: Complete extraction, transformation, and loading processes
3. **Data Modeling**: Star schema with fact and dimension tables optimized for analytics
4. **Analytics & Reporting**: Comprehensive SQL-based analysis and reporting scripts

🎯 **Skills Demonstrated:**
- SQL Development
- Data Architecture Design
- Data Engineering
- ETL Pipeline Development
- Data Modeling (Star Schema)
- Data Analytics

---

## 🏗️ Data Architecture

The architecture follows the **Medallion Architecture** pattern with three distinct layers:

![Data Architecture](docs/data_architecture.png)

### Layer Descriptions:

| Layer | Purpose | Implementation |
|-------|---------|----------------|
| **Bronze** | Raw data storage | Data ingested from CSV files into SQL Server, preserving original structure |
| **Silver** | Cleaned & standardized | Data cleansing, standardization, and quality improvements |
| **Gold** | Business-ready | Star schema model with dimension and fact tables for reporting |

---

## 📂 Repository Structure

```
sql-data-warehouse-project/
│
├── datasets/                           # Source data files
│   ├── source_crm/                     # CRM system data (CSV files)
│   └── source_erp/                     # ERP system data (CSV files)
│
├── docs/                               # Documentation & diagrams
│   ├── data_architecture.png           # Architecture diagram
│   ├── data_flow.png                   # Data flow visualization
│   ├── data_integration.png            # Data integration design
│   ├── data_model.png                  # Star schema model
│   ├── ETL.png                         # ETL process diagrams
│   ├── data_catalog.md                 # Gold layer table documentation
│   ├── naming_conventions.md           # Naming standards & guidelines
│   ├── Data Analytics Roadmap.pdf      # Analytics methodology guide
│   └── Project_Notes_Sketches.pdf      # Design notes & sketches
│
├── scripts/                            # SQL Scripts
│   ├── data warehouse scripts/         # ETL & modeling scripts
│   │   ├── bronze/                     # Bronze layer loading scripts
│   │   ├── silver/                     # Silver layer transformation scripts
│   │   ├── gold/                       # Gold layer model creation scripts
│   │   └── init_database.sql           # Database initialization
│   │
│   └── exploration and analytics scripts/  # Analytics & reporting
│       ├── 01_database_exploration.sql     # Database structure analysis
│       ├── 02_dimensions_exploration.sql   # Dimension data exploration
│       ├── 03_date_range_exploration.sql   # Temporal analysis
│       ├── 04_measures_exploration.sql     # Key metrics exploration
│       ├── 05_magnitude_analysis.sql       # Scale & magnitude analysis
│       ├── 06_ranking_analysis.sql         # Ranking queries
│       ├── 07_change_over_time_analysis.sql # Trend analysis
│       ├── 08_cumulative_analysis.sql      # Cumulative calculations
│       ├── 09_performance_analysis.sql     # Performance metrics
│       ├── 10_data_segmentation.sql        # Segmentation analysis
│       ├── 11_part_to_whole_analysis.sql   # Composition analysis
│       ├── 12_report_customers.sql         # Customer reports
│       └── 13_report_products.sql          # Product reports
│
├── tests/                              # Test scripts & validation
│
├── README.md                           # This file
├── LICENSE                             # MIT License
└── .gitignore                          # Git ignore rules
```

---

## 🛠️ Tools & Technologies Used

- **Database**: SQL Server Express
- **IDE**: SQL Server Management Studio (SSMS)
- **Diagramming**: DrawIO (for architecture & data models)
- **Version Control**: Git & GitHub
- **Source Data**: CSV files from ERP and CRM systems

### Helpful Resources:
- [SQL Server Express Download](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
- [SSMS Download](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)
- [DrawIO](https://www.drawio.com/)

---

## 🚀 Project Requirements

### Data Engineering Objectives

**Goal**: Build a modern data warehouse using SQL Server to consolidate sales data for analytical reporting.

**Key Specifications**:
- ✅ Import data from two source systems (ERP and CRM) provided as CSV files
- ✅ Implement data cleansing and quality resolution
- ✅ Integrate both sources into a unified star schema model
- ✅ Focus on current dataset (no historization required)
- ✅ Document data model for business stakeholders

### Analytics Objectives

**Goal**: Develop SQL-based analytics delivering insights into:
- 📊 **Customer Behavior** - Purchase patterns, segmentation, lifetime value
- 📦 **Product Performance** - Sales by category, trends, rankings
- 📈 **Sales Trends** - Temporal analysis, growth metrics, forecasting indicators

Detailed requirements available in the project documentation.

---

## 📊 Gold Layer Data Model

The Gold layer implements a **star schema** with the following tables:

### Dimension Tables:
- **`dim_customers`** - Customer demographics and geographic data
- **`dim_products`** - Product information with categories and attributes

### Fact Tables:
- **`fact_sales`** - Transactional sales data with foreign keys to dimensions

For detailed column descriptions and metadata, see [docs/data_catalog.md](docs/data_catalog.md).

---

## 🔧 Getting Started

### Prerequisites
1. SQL Server Express installed
2. SQL Server Management Studio (SSMS)
3. Git (for version control)

### Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd sql-data-warehouse-project
   ```

2. **Initialize the database**:
   - Run `scripts/data warehouse scripts/init_database.sql` in SSMS

3. **Load Bronze Layer**:
   - Execute scripts in `scripts/data warehouse scripts/bronze/`

4. **Transform to Silver Layer**:
   - Execute scripts in `scripts/data warehouse scripts/silver/`

5. **Build Gold Layer**:
   - Execute scripts in `scripts/data warehouse scripts/gold/`

6. **Run Analytics**:
   - Explore scripts in `scripts/exploration and analytics scripts/`

---

## 📝 Documentation

- **[Data Catalog](docs/data_catalog.md)**: Detailed description of Gold layer tables and columns
- **[Naming Conventions](docs/naming_conventions.md)**: Standards for schemas, tables, columns, and procedures
- **[Architecture Diagrams](docs/)**: Visual representations of data flow, integration, and models

---

## 🙏 Acknowledgments

This project was completed following the excellent tutorial series by **Data with Baraa**. Special thanks to:

- **[Baraa Khatib Salkini](https://linkedin.com/in/baraa-khatib-salkini)** for creating comprehensive learning materials
- **[Data with Baraa YouTube Channel](https://youtube.com/@datawithbaraa)** for free, high-quality data engineering education
- **[datawithbaraa.com](https://www.datawithbaraa.com)** for providing course materials and resources

### Original Course Resources:
- 📺 **Course Video**: [SQL Data Warehouse Project Tutorial](https://youtu.be/9GVqKuTVANE)
- 💻 **Original Data Warehouse Repository**: [github.com/DataWithBaraa/sql-data-warehouse-project](https://github.com/DataWithBaraa/sql-data-warehouse-project)
- 💻 **Original Data Analytics Repository**: [https://github.com/DataWithBaraa/sql-data-analytics-project](https://github.com/DataWithBaraa/sql-data-analytics-project)

> All courses and materials from Data with Baraa are completely free. Support the channel by subscribing, liking, and engaging with the content!

---

## 👤 About This Implementation

This repository represents my personal implementation of the SQL Data Warehouse project. While following the structure and guidance from Data with Baraa's course, this code reflects my own understanding, decisions, and learning journey in data engineering.

### What I Learned:
- Designing and implementing a multi-layer data warehouse architecture
- Building ETL pipelines with SQL Server
- Creating star schema models for analytical workloads
- Developing comprehensive SQL analytics queries
- Best practices in data modeling and naming conventions

### 🔧 Improvements & Modifications

I made several enhancements to improve code quality, consistency, and output accuracy:

#### Data Warehouse Scripts
- **Function Standardization**: Replaced `ISNULL` with `COALESCE` for better ANSI SQL compliance and consistency
- **Code Quality**: Refactored formatting and style inconsistencies throughout the ETL scripts for better readability and maintainability

#### Exploration & Analytics Scripts
- **Division Accuracy**: Fixed integer division issues by converting operands to `FLOAT` and rounding results to 2 decimal places for accurate metric calculations
- **Code Consistency**: Standardized code style and formatting across all analytical queries

#### Customer Report (`12_report_customers.sql`)
- **Column Optimization**: Removed redundant `age` column (retained `age_group` for better segmentation)
- **Logical Column Ordering**: Reorganized output columns for better readability:
  1. **Customer Info**: `customer_key`, `customer_number`, `customer_name`
  2. **Date Attributes**: `age_group`, `last_order_date`, `lifespan`, `recency`
  3. **Performance & KPIs**: `customer_performance` (VIP/Regular/New), `total_orders`, `total_sales`, `total_quantity`, `total_products`, `avg_order_value`, `avg_monthly_spend`

#### Product Report (`13_report_products.sql`)
- **Metric Refinement**: Adjusted `product_performance` calculation logic for more accurate categorization
- **Logical Column Ordering**: Reorganized output columns for better readability:
  1. **Product Info**: `product_key`, `product_name`, `category`, `subcategory`, `cost`
  2. **Date Attributes**: `last_sale_date`, `lifespan`, `recency`
  3. **Performance & KPIs**: `product_performance` (High-Performer/Mid-Range/Low-Performer), `total_orders`, `total_sales`, `total_quantity`, `total_customers`, `average_order_revenue`, `average_monthly_revenue`

---

## 🛡️ License

This project is licensed under the [MIT License](LICENSE).

**Copyright (c) 2026 Moataz-Alaa**

You are free to use, modify, and share this project with proper attribution. Please note that while my implementation is under MIT License, I acknowledge and respect the original educational content created by Data with Baraa.

---

## 📬 Connect With Me

Feel free to reach out or connect on:

- **GitHub**: [Moataz-Alaa](https://github.com/Moataz-Alaa)
- **LinkedIn**: [LinkedIn Profile](http://www.linkedin.com/in/moataz-alaa-7b914236b)

---

## 🌟 Show Your Support

If this project helped you learn about data warehousing or inspired your own projects, please consider:

- ⭐ Starring this repository
- 🔗 Sharing it with others learning data engineering
- 💡 Using it as a reference for your portfolio projects

---

**Happy Data Engineering! 🚀**