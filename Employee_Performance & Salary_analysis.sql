create database Employee_Performance ;

# use database 
use Employee_Performance ;

# show Table 
select * from employee_per ;


# KIP 
-- Find Total Salary 
select sum(Monthly_Salary) as total_Salary
from employee_per ;

# Total Department 
select count(Department) as total_Department
from employee_per ;

# total employee
select count(name) as total_employee
from employee_per ;

# total city 
select count(City) as total_city 
from employee_per ;



select * from employee_per ;

# Total employees
select count(*) as total_employee
from employee_per ;


# Average salary
select avg(Monthly_Salary) as avg_salary 
from employee_per ;


# Highest salary
select max(Monthly_Salary) 
from employee_per ;



# Lowest salary
select min(Monthly_Salary) as min_salary 
from employee_per ;



# Department-wise employee count

select Department,count(Employee_ID) as Employee_count
from employee_per 
group by Department
order by Employee_count desc;



# Department-wise average salary

select Department , avg(Monthly_Salary) as 
avg_salary
from employee_per 
group by Department ;



# Department-wise performance

select Department , avg(Performance_Score) as Performance_Score
from employee_per 
group by Department 
order by Performance_Score desc;





# Top Performers ⭐

SELECT Employee_ID, Name, Department,
       Performance_Score, Projects_Completed
FROM employee_per 
ORDER BY Performance_Score DESC
LIMIT 5;
 

# 4. Salary vs Experience Analysis

select Experience_Years , avg(Monthly_Salary) avg_salary 
from employee_per
group by Experience_Years
order by avg_salary desc 
limit 5;



# Department-wise average projects
select Department , avg(Projects_Completed) as Projects_Completed
from employee_per 
group by Department 
 order by Projects_Completed desc 
 limit 5;
 

 # Department-wise average leaves:

select Department , avg(Leaves_Taken) as Leaves_Taken
from employee_per 
group by Department
order by Leaves_Taken desc 
limit 5;
 
 
 
# Employee Performance Category

select 
	Employee_ID , 
    Name , 
    Performance_Score,
CASE 
	WHEN Performance_Score >=90 THEN "Excellent"
    WHEN Performance_Score >=80  THEN "Good "
    WHEN Performance_Score >70  THEN "Average"
    ELSE"need improvement"
END AS Performance_category 
from employee_per ;
    


# Performance > 85 and  Projects > 6 find employe name 

select Performance_Score ,
	Projects_Completed,
    Employee_ID,
    Name,
    Department,
    Monthly_Salary
from employee_per
 where
 Performance_Score > 85 
and Projects_Completed> 6
order by Projects_Completed desc ;



# Customer satisfaction 90+ असलेले employees:

select Employee_ID,
		Name ,
        Department,
        Customer_Satisfaction
from employee_per 
where Customer_Satisfaction > 90 
order by Customer_Satisfaction asc
        
    