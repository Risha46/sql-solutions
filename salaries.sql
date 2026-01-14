SELECT name
FROM Employee
WHERE salary > 2000
  AND months < 10
ORDER BY employee_id ASC;
-- This query selects the names of employees from the Employee table who have a salary greater than 2000 and have worked for less than 10 months, ordering the results by employee_id in ascending order.