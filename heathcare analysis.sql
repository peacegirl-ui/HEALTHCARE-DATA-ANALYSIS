create database healthcare;
use healthcare;
show tables;
SELECT * FROM `medical datasetproject`;

RENAME TABLE `medical datasetproject` TO hospital;
SHOW TABLES;

SELECT * FROM hospital;

-- Question 1: How many patients are there in the hospital?
select count(*) as total_patients
from hospital;

-- Question 2: Which region has the highest number of patients?
select region , count(*) as total_patients
from hospital 
group by region 
order by total_patients desc;

-- Question 3: Which medical condition has the highest number of patients?
SELECT Medical_Condition, COUNT(*) AS Total_Patients
FROM hospital
GROUP BY Medical_Condition
ORDER BY Total_Patients DESC;

-- Question 4: Which treatment is used most frequently among patients?
select Treatment , count(*) AS Total_patients
from hospital
group by Treatment 
order by Total_patients DESC;

--  Question 5: Most common insurance type ?
SELECT Insurance_Type, COUNT(*) AS Total_Patients
FROM hospital
GROUP BY Insurance_Type

-- Question 6: What is the average age of the patients?
 SELECT AVG(Age) AS Avg_Age
 FROM hospital;

-- Question 7: What is the average income of patients?
SELECT AVG(INCOME) AS  AVG_INCOME
FROM HOSPITAL;

-- Question 8: What is the average length of stay for patients?
SELECT AVG(Length_of_Stay)  AS Average_Length_of_Stay
FROM HOSPITAL;

-- Question 9: Which medical condition has the longest average hospital stay?
SELECT MEDICAL_CONDITION , AVG(Length_of_Stay) AS AVG_Length_of_Stay
from hospital 
group by Medical_condition 
order by AVG_Length_of_Stay DESC;

-- Question 10: What is the average income of patients in each region?
SELECT REGION , AVG(Income) AS avg_income
from hospital
group by region
order by avg_income DESC; 

-- Which admission type has the highest number of patients?
SELECT Admission_type , COUNT(*) AS TOTAL_PATIENTS 
FROM Hospital 
group by Admission_type 
order by total_patients DESC;

-- Question 12: Which smoking status has the highest number of patients?
SELECT Smoking_status , count(*) AS total_patients 
from hospital
group by Smoking_status 
order by total_patients DESC;

-- Question 13: Which insurance type has the highest average income?
SELECT Insurance_type , avg(income) AS  highest_average_income
from hospital
group by Insurance_type 
order by highest_average_income DESC;

-- Question 14: Which admission type has the highest average length of stay?

SELECT Admission_Type, AVG(Length_of_Stay) AS Average_Length_of_Stay
FROM hospital
GROUP BY Admission_type 
order by Average_Length_of_Stay DESC;