# ETL Project
## A Glance into Politics and Macroeconomics 
Extraction Transformation and Loading (ETL) project that performs data integration process on two datasets, namely 2016 US Presidential Results by County and US Unemployment Rate by County 1990-2016.

## 1. Extraction

Datasets were downloaded from kaggle.com as detailed below. All datasets are available in csv file format and one is available in json format too. Datasets have different ways of naming states, by name and by abbreviation. We scraped a table of states with their names and abbreviations from infoplease.com and 50states.com, and we decided to use infoplease because it had the American territories.

Sources links:
 * [US Unemployment Rate by County](https://www.kaggle.com/jayrav13/unemployment-by-county-us)
 * [2016 US presidential vote by county](https://www.kaggle.com/stevepalley/2016uspresidentialvotebycounty)
 * [US States abbreviations](https://www.infoplease.com/us/postal-information/state-abbreviations-and-state-postal-codes)

## 2.	Transformation

a.	Import: Three datasets were imported into a jupyter notebook. The datasets from kaggle were imported via read_csv, and the dataset from infoplease was imported via read_html.
b.	After scraping and creating a table with the states abbreviations, we mapped it into the unemployment dataframe following creation of a dictionary. After mapping,  we created new csv files and  exported them. We used these csv files for further transformation.
c.	Columns selection, rename and dropna methods. We selected columns from each dataset, and dropna values. We renamed columns for  consistency.  
d.	After cleaning both datasets we merged them.

## 3. Loading
We loaded our dataframes to a postgres database.

We created a final table and populated it using SQLAlchemy.
## 4. Test
After loading, we used information from our db for calculating correlation and covariance of the merged data, filtering by candidate.
