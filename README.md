Fodd Waste Management Data Analysis Using Python And Sql

✨ 1. Overview
This project is a complete Data Analysis Pipeline focused on Food Waste Management Data. The core objective is to demonstrate proficiency in ETL (Extract, Transform, Load) processes, Python-to-SQL connectivity, and the execution of complex, actionable SQL queries. The resulting data-driven metrics aim to minimize environmental impact and reduce operational costs.

Skills Demonstrated: Python Programming, Data Wrangling (Pandas), Database Connectivity (via Python), Advanced SQL Querying (Aggregations, Joins, Window Functions), and Business Reporting.

Key Focus: Generating KPIs (Key Performance Indicators) like waste cost per category, high-waste location identification, and temporal waste comparison, entirely through SQL operations.

💾 2. Dataset
📁 Dataset Files: providers.csv, receivers.csv, food_listings.csv, claims.csv

🛠️ 3. Tools and TechnologiesCategoryTool/LibraryPurposeProgrammingPython 3.xCore scripting, pipeline orchestration, and query execution.Data TransformationPandasData cleaning, validation, and preparation for database loading.Database Connectormysql.connector / sqlalchemyEstablishing a secure connection between Python and MySQL.DatabaseMySQLStoring cleaned data and executing complex analytical queries.Reporting(Specify tool, e.g., Jupyter Notebooks, PDF)Final presentation of query results and business recommendations.

🚀 4. Project Steps & Technical Workflow
This workflow focuses specifically on the ETL process and SQL execution, demonstrating efficient database interaction.

A. Data Transformation & Loading (Python/Pandas)
Data Preparation: The raw .csv file is loaded. Data cleaning focused on handling missing values, standardizing units (e.g., converting to kilograms), and ensuring data quality before loading.

Feature Engineering: New, critical features like 'Cost per Event' and 'Day of the Week' are calculated using Pandas.

ETL to SQL: A database connection is established using a Python connector. The transformed Pandas DataFrame is then loaded directly into a designated table in the SQL database.

B. Advanced SQL Querying
KPI Generation: Analytical SQL queries (stored in a separate .sql file) are executed via the Python script to generate high-value metrics.

Analytical Highlights:

Used SUM() and GROUP BY to calculate the aggregated cost of waste by 'Reason for Waste' and 'Location'.

Employed Date Functions (e.g., MONTH(), DATE_DIFF()) to compare waste volumes across specific time periods.

Utilized HAVING clauses to flag locations or categories where waste exceeds a pre-defined threshold.

Data Retrieval: The final analytical result sets from the SQL queries are fetched back into Python for final presentation.

C. Final Reporting
Synthesized the most critical, query-derived KPIs (e.g., top 3 costliest waste items, year-over-year cost change) into an actionable report.

Provided specific, quantified recommendations based only on the SQL output.

💻 5. How to Run the Project
Follow these steps to replicate the environment and run the data pipeline:

Clone the Repository:

Bash

git clone [Your Repository URL Here]
cd food-waste-analysis
Set up Python Environment: Install the required libraries (including your MySQL connector) using the provided requirements.txt file:

Bash

pip install -r requirements.txt
Database Configuration:

Ensure your MySQL server is running.

Crucially: Set your database connection parameters (host, user, password, database name) in the configuration file (config.py or environment variables).

Execute Analysis Script: Run the main Python script. This will handle the cleaning, loading to SQL, executing the analysis queries, and outputting the results.

Bash

python run_analysis.py
