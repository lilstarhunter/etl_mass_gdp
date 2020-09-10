# ETL Project Final Report
### Objective: Identifying two separate data sources to be explored, transformed, and loaded using pandas and processed for querying in PostgreSQL using SQLAlchemy and pgAdmin
### Completed By: Lauren Stein, Danny Petrella, and Jessie Lynch
---

## Part 1: Extract the data
1. Identifyed a rich dataset containing information on mass mobilizations against governments worldwide from 1990 - 2019. Data was directly export as an CSV file [Mass Mobilization Data](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/HTTWYL)
2. Identified a dataset on countries gross domestic product by country obtained through the World Bank. Data is continually collected since 1960 and exported as a CSV file [World Bank Open Data](https://data.worldbank.org/indicator/NY.GDP.MKTP.CD).


## Part 2: Transform the Data
We chose to use the postgresql database as opposed to MongoDB because the ability to utilize a relational database proved more powerful with this particular dataset. 
_Note: For country/years with NaN, we decided to leave in NaN rather than convert to 0. NaN represents a null value for which data was not collected that year by the world bank. A value of 0 would represent a 0% GDP and could complicate downstream analysis_

1. Leveraged the pandas and SQLAlchemy libraries
2. Imported csv files and converted to DataFrame
3. Cleaned the datasets for easy upload into Postgres
4. Performed a groupby aggregate function to calculate the total number of protests per year per country
5. Connected jupyter notebook to pgAdmin using SQLAlchemy

## Part 3: Load the Data 
1. Created a schema to hold the datasets (gdp and mass_protest)
2. Imported dataset via SQLAlchemy
3. Conducted final query within pgAdmin to get a single dataset containing the total number of protests per year per country with the %GDP per year per country. This will allow for time-course analysis and determine whether there is a correlation between a countries annual GDP and mass mobilization. If there is a correlation, machine learning algorithms can be applied to this dataset (while relatively small) to see whether one can predict whether a protest will occur based on a country's GDP.
