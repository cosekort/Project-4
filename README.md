Amazon Review Data Analysis

Project Overview
This project analyzes Amazon review data, focusing on the ratings (1-5) and comments left by users. The primary goals are to clean and preprocess the data, perform sentiment analysis, visualize the results, and build predictive models to classify review sentiments. We also implement clustering using the KMeans algorithm to explore patterns within the reviews.

Table of Contents
Dataset
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

Removed any personal information from the reviews.
Calculated the count and percentage distribution of each rating (1-5).
Exploratory Data Analysis
Analyzed the distribution of ratings and comments:

Count and percentage distribution of each rating from 1 to 5.
Text Preprocessing
We cleaned the review text by:

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
 "




 "
Clustering
Applied the KMeans clustering algorithm to explore patterns within the reviews:

Identified clusters based on review text.

Results
The project outputs various results including:

Distribution of ratings.
Sentiment analysis results (positive, neutral, negative).
Visualizations (bar charts and word clouds).
Performance metrics of machine learning models.
Clustering patterns.

