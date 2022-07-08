# Write your MySQL query statement below
select employee_id, case when employee_id % 2 = 0 or name like 'M%' then 0 else salary end as bonus from Employees order by employee_id;

SELECT employee_id,
IF (employee_id%2 AND name not like "M%", salary, 0) as bonus
FROM Employees order by employee_id;
