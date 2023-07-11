
# Group the customers based on their income type and find the average of their annual income.

select Type_Income , avg(Annual_income) as Average_income from credit_card group by Type_Income;

# Find the female owners of cars and property.
SELECT Gender,
       COUNT(CASE WHEN Car_owner = 'y' THEN 1 END) AS car_owner_count,
       COUNT(CASE WHEN Propert_owner = 'y' THEN 1 END) AS property_owner_count
FROM credit_card
WHERE Gender = 'F';

# Find the male customers who are staying with their families.

Select Ind_ID,Gender,Family_Members from  credit_card where Gender = 'M' and Family_Members >=1;

# Please list the top five people having the highest income.

select Ind_ID ,Gender, Annual_income from credit_card  order by Annual_income desc limit 5 ;


# How many married people are having bad credit?
SELECT Marital_status, COUNT(*) AS bad_credit_count FROM credit_card
WHERE Marital_status = 'Married' AND label = '1' GROUP BY Marital_status;


# What is the highest education level and what is the total count?
select EDUCATION,count(EDUCATION) as total_no_education from credit_card group by EDUCATION ;

# Between married males and females, who is having more bad credit? 
SELECT Marital_status, GENDER, COUNT(*) AS bad_credit_count FROM credit_card
WHERE Marital_status = 'Married' AND label = '1' GROUP BY Marital_status, GENDER;





