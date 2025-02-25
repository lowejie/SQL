-- Find a list of employee, branch names and client names
-- Rule: Same number of columns, Similar data types
SELECT first_name AS Names
FROM employee
UNION
SELECT branch_name
FROM branch
UNION 
SELECT client_name
FROM client;

-- Find a list of all clients & branch suppliers' names
SELECT client_name AS Company_Names, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- Find a list of all money spent or earned by the company
SELECT salary AS money_spent_or_earned
FROM employee
UNION
SELECT total_sales
FROM works_with;