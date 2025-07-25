# Data_Merge-with-Python
## Project Title: Data Cleaning & Merging using Python and SQL Analysis
### Objective
To demonstrate data cleaning, transformation, and merging skills by preparing multiple raw datasets for analysis. This project focused on creating a clean, analysis-ready dataset from fragmented and inconsistent data sources using Python (Pandas). The clean dataset was later structured for advanced analysis through SQL and visualization tools.
### Data Source
Kaggle: European Fashion Store Multi-Table Dataset included customer, campaign, sales, products, stock, and sales items tables.

### Tools & Technologies
* Python (Pandas): Data Cleaning, Transformation, Merging
* Jupyter Notebook: Documentation of Process and Workflow
* SQL (Post-cleaning): Analysis Preparation

### Project Workflow
#### Data Loading & Exploration (Python)
* Imported multiple CSV files representing different tables.
* Assessed data quality, structure, and column relevancy.

#### Data Cleaning (Pandas)
* Removed duplicate entries and handled missing/null values.
* Standardized naming conventions, date formats, and categorical values.
* Resolved inconsistencies across related columns (e.g., customer IDs, product names).

#### Data Merging (Pandas)
* Applied appropriate join strategies (inner, left) to create a single, clean, unified dataset.
* Carefully maintained relational integrity between tables (customers, sales, products, etc.).

#### Data Transformation (Pandas)
* Created new calculated columns for future analysis (e.g., total order value, profit margins).
* Optimized column types for efficiency and readability.

#### Exporting Cleaned Dataset
* Saved the cleaned and merged data for further SQL analysis and visualization.

### Key Insights using SQL Analysis
* A total of 300,000 transactions were recorded in the dataset.
* The total revenue generated was approximately $92.99 million.
* The average price per product was $103.25, and the average quantity purchased per transaction was 3 items.
* The top 5 cities by number of transactions were:
North Michael (448 transactions)
Jessicamouth (405)
Lake Joseph (402)
West Michael (376)
East Matthew (363)
* The top 5 countries by number of transactions were:
Congo (2,364 transactions)
Korea (2,331)
Tunisia (1,781)
Russian Federation (1,775)
Argentina (1,770)
*In terms of revenue by product category:
Home category generated $24.69 million
Books generated $23.76 million
Clothing generated $22.32 million
Electronics generated $22.21 million

### Focus Areas & Deliverables
* Structured, well-documented data cleaning process.
* Efficient data merging across multiple relational datasets.
* Clean dataset prepared for SQL queries and Power BI dashboards.
* Demonstrated understanding of merging datasets in Python.
