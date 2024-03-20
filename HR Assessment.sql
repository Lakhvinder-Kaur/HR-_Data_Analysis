-- 1. Retrieve the total number of employees in the dataset.
-- select count(EmployeeID)'Total_number_of_Employees' from general_data;

-- 2. List all unique job roles in the dataset.
-- select distinct JobRole from general_data;

-- 3.Find the average age of employees.
-- select round(avg(age))'Average_Age' from general_data;

-- 4.Retrieve the names and ages of employees who have worked at the company for more than 5 years.
-- select Emp_Name, age from general_data where totalworkingyears >5;

-- 5. Get a count of employees grouped by their department.
-- select Department, count(EmployeeID)'No_of_Employees' from general_data group by department;

-- 6. List employees who have 'High' Job Satisfaction.
-- select Emp_Name, JobSatisfaction from general_data inner join employee_survey_data on general_data.EmployeeID=employee_survey_data.employeeID where employee_survey_data.jobsatisfaction>=4;

-- 7. Find the highest Monthly Income in the dataset.
-- select max(MonthlyIncome) as Highest_Monthly_Income from general_data;

-- 8. List employees who have 'Travel_Rarely' as their BusinessTravel type.
-- select Emp_Name, BusinessTravel from general_data where BusinessTravel = "Travel_Rarely";

-- 9. Retrieve the distinct MaritalStatus categories in the dataset.
-- select distinct Maritalstatus from general_data;

-- 10. Get a list of employees with more than 2 years of work experience but less than 4 years in their current role.
-- select Emp_Name, JobRole, TotalWorkingYears from general_data where TotalWorkingYears>2 and TotalWorkingYears<4;

-- 11. List employees who have changed their job roles within the company (JobLevel and JobRole differ from their previous job).
-- select Emp_Name, yearsatcompany, YearsSinceLastPromotion from general_data where yearsatcompany != 0 and YearsSinceLastPromotion != 0;
-- select Emp_Name, yearsatcompany, YearsSinceLastPromotion from general_data group by JobRole having count(Emp_Name)>1;

-- 12.Find the average distance from home for employees in each department.
-- select avg(distancefromhome) Dist_from_Home, Department from general_data group by department

-- 13. Retrieve the top 5 employees with the highest MonthlyIncome.
-- select emp_name, monthlyincome from general_data order by MonthlyIncome desc limit 5;

-- 14. Calculate the percentage of employees who have had a promotion in the last year.
-- SELECT SUM(YearsSinceLastPromotion=1)*100/count(*) from general_data

-- 15.List the employees with the highest and lowest EnvironmentSatisfaction.
-- select Emp_Name, EnvironmentSatisfaction from general_data inner join employee_survey_data on general_data.EmployeeID = employee_survey_data.EmployeeID where EnvironmentSatisfaction <2 or EnvironmentSatisfaction>3;

-- 16.Find the employees who have the same JobRole and MaritalStatus.
-- select distinct a.Emp_Name, a.JobRole, a.MaritalStatus from general_data a, general_data b where a.EmployeeID != b.EmployeeID and a.JobRole = b.JobRole and a.maritalstatus = b.MaritalStatus;

-- 17. List the employees with the highest TotalWorkingYears who also have a PerformanceRating of 4.
-- select Emp_Name, TotalWorkingyears, performancerating from general_data inner join manager_survey_data on general_data.EmployeeID = manager_survey_data.EmployeeID where performancerating = 4 order by TotalWorkingYears desc limit 5;

-- 18. Calculate the average Age and JobSatisfaction for each BusinessTravel type.
-- select round(avg(age)), round(avg(jobsatisfaction)), BusinessTravel from general_data inner join employee_survey_data on general_data.EmployeeID =employee_survey_data.EmployeeID group by BusinessTravel;

-- 19. Retrieve the most common EducationField among employees.
-- select count(*) Ed_Field, EducationField from general_data group by EducationField order by Ed_Field desc limit 1;

-- 20. List the employees who have worked for the company the longest but haven't had a promotion.
-- SELECT  Emp_Name, YearsAtCompany From general_data Where YearsSinceLastPromotion = 0 Order by YearsAtCompany DESC ;