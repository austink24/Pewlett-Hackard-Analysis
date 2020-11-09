# Pewlett-Hackard-Analysis

## Overview of the analysis:
In this project we are asked to organized PH's data. We will capture and organize the data, turning it into a database that is eay to access and export needed data. 
The data we organized is centered around PH's employees, the departments they work in, date of birth, hire date, salaries, and job titles. We were asked to identify employees who could be retiring soon along with their titles, to help with planning to restaff those positions. 

## Results:
Tools we used to complete this request are:

- .csv files containing the data
- PostgresSQL
- VSCODE and QuickDBD
- PgAdmin

We started by reviewing the data we would use for our analysis, looking at data types and columns. We then used QBD to create the database ERD or Entity Relationhsip Diagram. Once our ERD was complete we used it to build our database using PgAdmin. We wrote PostgreSQL queries to create the tables that we would use to store our data, assigning Primary and foriegn Keys based on the structure outlined in our ERD. 

![sample_code](https://github.com/austink24/Pewlett-Hackard-Analysis/blob/main/table_code_sample.png)

After creating some 6 tables, we imported the employee data and sorted it to more specifically provid the information being requested. We used join command to combine the necessary data, then grouped it by department, and finished up by filtering out only the data needed to complete the request. The end results of joining and filtering the data in the tables is a few output files one (retiring_titles) listing the position titles and quantity of those positions that would need to be filled along with a file (mentorship_eligibilty) of employees that were identified as possible mentorship candidates that could possibly fill those future vacancies. 

![retiring_sample](https://github.com/austink24/Pewlett-Hackard-Analysis/blob/main/retiring_title_sample.png)


## Summary:

With over 80,000 possible retiring employees and only 1550 ifentified for possible mentorship PH will need to do some heavy recruiting to assure they fill the vacancies created by those who are retiring. The Retiring titles lets us see the titles that we will need to fill. 

contains two additional queries or tables that may provide more insight. (5 pt)
