# Write your MySQL query statement below
select max(salary) as SecondHighestSalary
from Employee
where salary not in (select max(salary) from employee);


# Write your MySQL query statement below
SELECT MAX(Salary) AS SecondHighestSalary
From Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee)

# Write your MySQL query statement below
SELECT MAX(salary) as SecondHighestSalary
FROM Employee
WHERE NOT salary = (SELECT MAX(salary) FROM Employee)
ORDER BY salary DESC LIMIT 1;
