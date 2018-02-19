# Public-Data-Projects
This repository contains projects related to the Data Analysis workflow.     

These projects demonstrate my progressive ability to use Python, R, SQL, and others.    
Python Packages used: Scikit learn, Pandas, Numpy, matplotlib, json...    
R Packages used: dplyr, ggplot, qplot, tidyr, knitr, and RColorBrewer    
Projects are in descending chronological order. (Newest at the top)    

Omitted Projects are listed at the bottom can be made available upon request. 

## Shanghai Smog
For this project, I downloaded, cleaned, and visualized roughly 6 years of Shanghai Smog data that is available for download on the US Department of State website. This project focuses on statistical analysis and visualization, and data cleaning with Python. This was a project to question a claim and also build a foundation for further research to tell a story. As a person who left Shanghai due to the pollution, this is also grounds for a future blog post that I aim to write in the near future. This project demonstrates my education on statistics and ability to draw accurate and supported claims. In addition, it was practice to use multiple programs to streamline my workflow. Data cleaning and editing were done using python and pandas, which was exported to tableau for faster visualization and exploration, and finally aggregated in a document as a final product.


## For Reddit - Subreddit Subscribers in the US
For this project, I scraped the names of the cities and states off wikipedia page for the largest cities per state using the package Beautiful Soup, used the names of the cities as inputs added on to the ends of urls to access the subreddits, and then collected the information from each subreddit for visualization. The results show the subscriber counts for major cities but is flawed because some areas are high in subscriber counts but not large in size, for example San Francisco. Another flaw is that some locations use the area for the subreddit instead of the city name, for that reason I have also omitted those variables to explicitly look only at subscribers based on cities. This project demonstrates my ability to produce projects related to companies as well as scraping the results according to the API. An example of this would be the sleep timer that would run every 10 seconds, or the use of the API for simpler collection. This project also shows the raw workflow for data cleaning, editing, and re-editing after visualization.

This is a cleaning focused, and visualization data project.

# Omitted Projects
These projects are not in this current repository but can be made available upon request.

## Wine Classification:
This project used machine learning methods to study the wine dataset downloaded from UCI's machine learning repository. The dataset was explored using data visualization, then classified using a logistic regression, which predicts the probalistic effect of the coefficients on classifying the wine as a positive or negative class. The results demonstrated that linear chemical compositions have a low impact on predicting the quality of red wines are citric acid, residual sugars, and density.

## PISA 2012 Dataset - Tableau:
For this project, I visualized a few dozen variables out of 485,000 students with 630 variable dataset. I chose this large dataset as an example of what I am able to visualize and scale up to as a result of this course in data anlysis. Since a lot of the variables were not explicitly related, this project is an example of my ability for research as well as being able to understand and draw insights from a obscure, large, and overwhelming data set. The conclusion from this visualization is that for certain east asian countries, attitude towards math has an extraneous effect on scoring academics than wealth and resource accessibility.

## WeRateDogs Analysis:
This project was done in Jupyter Notebook using Python 3.6, with a focus to encapsulate the entire data analysis workflow. WeRateDogs is a popular twitter account that gives dog ratings on photos which have often been on a greater than 10/10 scale. For this project, I demonstrated four methods of data gathering, importing from a local csv file, calling from a url using the package urllib, querying from the Twitter API using the Tweepy package, and importing a Pandas dataframe from a json text file. There were over 10 quality and tidy issues that were identified and cleaned, followed by a data visualization section. This project was an example of what could be done with the data out there, especially with finding free to use APIs.

## Diamond Data Exploration with R:
For this project, we chose data sets to explore to familiarize ourselves with R and R studio, as well as the coding functions for graphs. The goal of this project was visualization and gradually finding insights as the graphs increased in independent variables. The project is broken down into three focuses, univariate, bivariate, and trivariate plots, each to show intuitively, which types of graphs would be able to show the most relevant information. From this project, I learned the different ways of exploring the same data, whether to use boxplots, scatter graphs, or barcharts, and how to integrate multiple types of visualizations in order to get a minimally biased viewpoint. Packages that built up to this project but may not have been used were dplyr, ggplot, qplot, tidyr, knitr, and RColorBrewer.

## The Stroop Test:
This project looked at a population that were recorded for the Stroop Test. This project focused on inferencial statistics where we needed to demonstrate that we programatically and theoretically understood the statistic tests, for instance being able to create a function to calculate standard deviation, or finding the paired t-test results. The project used the Jupyter Notebook and Python 3.6 with the CSV, Math, Pretty Print, and Matplotlib Packages.

## Bike Share Analysis:
This was my first project working with data using Python. This project looked at three data sets of bike ride data from Chicago, Newyork, and San Francisco. I used Jupyter Notebook running Python 3.6 and the packages CSV, Datetime, Pretty Print, and Matplotlib. There were questions listed to guide my work flow, but the code itself was mine. The analyses were acted on dictionary arrays datums created from the CSV DictReader module.
