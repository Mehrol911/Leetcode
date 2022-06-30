# Write your MySQL query statement below
SELECT ful.employee_id
FROM (
    SELECT e.employee_id, name, salary
    FROM Employees as e
    LEFT JOIN Salaries as s
    USING (employee_id)
    
    UNION

    SELECT s.employee_id, name, salary
    FROM Employees as e
    RIGHT JOIN Salaries as s
    USING (employee_id)) as ful
WHERE ful.name is NULL OR ful.salary is NULL
ORDER BY ful.employee_id ASC;
