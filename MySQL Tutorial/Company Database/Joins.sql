INSERT INTO branch VALUES(4, 'Buffalo', NULL, NuLL);

-- Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch    -- INNER JOIN
ON employee.emp_id = branch.mgr_id;

-- LEFT JOIN (Includes all rows from left and matched rows from right)
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch  
ON employee.emp_id = branch.mgr_id;

-- RIGHT JOIN (Includes matched rows from left and all rows from right)
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch 
ON employee.emp_id = branch.mgr_id;