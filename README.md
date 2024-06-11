Amazon Review Data Analysis

Project Overview
This project analyzes Amazon review data, focusing on the ratings (1-5) and comments left by users. The primary goals are to clean and preprocess the data, perform sentiment analysis, visualize the results, and build predictive models to classify review sentiments. We also implement clustering using the KMeans algorithm to explore patterns within the reviews. We aim to answer the below question which will be answered through the coding. 

  What are Amazon customer reviews sentiment analysis distibution and what can we predict the sentiment for new customer reviews will be?

  What are the top 30 most common text/review words found within all amazon customer reviews? 

  What are the top predominant keywords in the large cluster of customer reviews? 

Table of Contents
`Dataset
 Data Cleaning
 Exploratory Data Analysis
 Text Preprocessing
 Sentiment Analysis
 Data Visualization
 Modeling
 Clustering
 Results

Dataset
 
https://www.kaggle.com/datasets/arhamrumi/amazon-product-reviews
The dataset contains Amazon reviews, including ratings (1-5) and text comments. Each review includes:

ID: Record ID. 

ProductID: Product ID. 

UserID: Reviewer's user ID. 

Profile Name: Reviewer's name.  

Helpfulness Numerator: Integer value from 1 to 5.

Helpfulness Denominator: Integer value from 1 to 5.

Score: Integer value from 1 to 5.

Time: Time of review. 

Summary: Summary review of text. 

Text: Text review of the product.

Data Cleaning
Performed the following data-cleaning steps:

To follow data ethics standards, removed any personal information from the reviews info.
Calculated the count and percentage distribution of each rating (1-5).
Exploratory Data Analysis
Analyzed the distribution of ratings and comments:

Count and percentage distribution of each rating from 1 to 5.

Text Preprocessing
Cleaned the review text by:

Removing stopwords.
Normalizing text to lowercase.
Removing punctuation and special characters.
Sentiment Analysis
Defined sentiment as follows, <0 "Negative", ==0 "Neutral", >0 "Positive"
Assigned polarity (positive, neutral, negative) to sentences.
Counted the total number of positive and negative reviews.

Data Visualization
Generated visualizations to represent the sentiment analysis:

Bar chart of positive and negative review counts.
Word clouds for positive and negative reviews.

Modeling
Implemented various machine learning models to classify review sentiments:

Logistic Regression

Multinomial Naive Bayes

Multilayer Perceptron

Support Vector Machine

K-Nearest Neighbors


Clustering
Applied the KMeans clustering algorithm to explore patterns within the reviews:

Identified clusters based on review text.

Results
The project outputs various results including:

Distribution of ratings.
Sentiment analysis results (positive, neutral, negative).
Visualizations (bar charts and word clouds).
Performance metrics of machine learning models.

 Logistic Regression - 93%

 Multinomial Naive Bayes - 89%

 Multilayer Perceptron - 91%

 Support Vector Machine - 89%

 K-Nearest Neighbors - 89%

Clustering patterns.




## Setup Instructions for Sql Database

1. **Download the SQL file**:

    - Use the SQL file from reviews.sql and run it in your PgAdmin4 query tool.

2. **Download the data file**:

    - Use the Reviews.csv data file
    - UPDATE FROM 'relative/path/to/Reviews.csv' with YOUR pathway

3. **Create a `.env` file** in the root directory of your project with the following content:

    ```ini
    DB_HOST="host name"
    DB_PORT="port"
    DB_NAME=Amazon Reviews
    DB_USER="user"
    DB_PASSWORD="password"
    TABLE_NAME=reviews
    ```

    Replace all quotation parts with YOUR information. `DB_NAME` and `TABLE_NAME` will not change as they are part of the SQL database.

4. **Install the required Python packages**:

    ```sh
    pip install pandas sqlalchemy ipython python-dotenv
    ```

5. **Run the script**:

    ```sh
    python your_script.py
    ```

By ensuring that the environment variables are required and not providing fallback values in the script, you enforce that the necessary configuration is provided by whoever runs the script, making the setup more explicit and less error-prone.

### SQL Table Creation and Data Import

Here is the SQL code to create the `reviews` table and import data from the CSV file:

```sql
CREATE TABLE reviews (
    "Id" SERIAL PRIMARY KEY,
    "ProductId" VARCHAR(255),
    "UserId" VARCHAR(255),
    "ProfileName" VARCHAR(255),
    "HelpfulnessNumerator" INT,
    "HelpfulnessDenominator" INT,
    "Score" INT,
    "Time" BIGINT,
    "Summary" TEXT,
    "Text" TEXT
);

COPY reviews ("Id", "ProductId", "UserId", "ProfileName", "HelpfulnessNumerator", "HelpfulnessDenominator", "Score", "Time", "Summary", "Text")
FROM 'relative/path/to/Reviews.csv'
DELIMITER ','
CSV HEADER;
