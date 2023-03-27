USE credit_card_approval;

select * from credit_card_applications;

-- 1. Group the customers based on their income type and find the average of their annual income.

SELECT Type_Income, AVG(Annual_income) as avg_annual_income 
FROM credit_card_applications 
GROUP BY Type_Income;

-- 2. Find the female owners of cars and property.

SELECT * FROM credit_card_applications 
WHERE GENDER = 'F' 
AND Car_Owner = 'Y' 
AND Propert_Owner = 'Y';

-- 3. Find the male customers who are staying with their families.

SELECT * FROM credit_card_applications
WHERE GENDER = 'M' 
AND Family_Members > 1;

-- 4.  Please list the top five people having the highest income.

SELECT Ind_ID, Annual_income 
FROM credit_card_applications 
ORDER BY Annual_income DESC 
LIMIT 5;

-- 5. How many married people are having bad credit?

SELECT COUNT(*) as num_bad_credit_married 
FROM credit_card_applications
WHERE Marital_status = 'Married' AND label = 1;

-- 6. What is the highest education level and what is the total count?

SELECT EDUCATION, COUNT(*) as count_education_level 
FROM credit_card_applications 
GROUP BY EDUCATION 
ORDER BY count_education_level DESC 
LIMIT 1;

-- 7. Between married males and females, who is having more bad credit? 

SELECT GENDER, COUNT(*) as count_bad_credit 
FROM credit_card_applications 
WHERE Marital_status = 'Married' AND label = 1 
GROUP BY GENDER 
ORDER BY count_bad_credit DESC 
LIMIT 1;


