# ETL Project Final Report
**Completed By:** Lauren Stein, Danny Petrella, and Jessie Lynch
**Objective:** Conduct an ETL project by identifying two separate data sources to be compiled using pandas and processed for querying in PostgreSQL using SQLAlchemy and pgAdmin
---

## Part 1: Identify Data Sources
1. Identifyied a rich dataset containing information on mass mobilizations against governments worldwide from 1990 - 2019 [Mass Mobilization Data](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/HTTWYL)
2. Identified a dataset on countries gross domestic product by country obtained through the World Bank [World Bank Open Data](https://data.worldbank.org/indicator/NY.GDP.MKTP.CD)

## Part 2: Explored, Transform and Load data using Python
We chose to use the postgresql database as opposed to MongoDB because the ability to utilize a relational database proved more powerful with this particular dataset. 
1. Leveraged the pandas and SQLAlchemy libraries
2. Imported csv files and converted to DataFrame
3. Cleaned the datasets for easy upload into Postgres
4. Performed a groupby aggregate function to calculate the total number of protests per year per country
5. Connected jupyter notebook to pgAdmin using SQLAlchemy

## Part 3: Prepare Postgres database for import
1. Created a schema to hold the datasets (gdp and mass_protest)
2. Imported dataset via SQLAlchemy
3. Conducted final query to get a single dataset containing both the total number of protests per year per country with the %GDP per year per country
