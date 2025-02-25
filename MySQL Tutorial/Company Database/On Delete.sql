-- Uses of ON DELETE SET NULL and ON DELETE CASCADE
-- ON DELETE SET NULL is fine if the column is only a foreign key and not a primary key
-- ON DELETE CASCADE is used for columns where they are both foreing and primary key
-- as primary key cannot be set to NULL

CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(40),
  mgr_id INT,
  mgr_start_date DATE,
  FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

DELETE FROM employee
WHERE emp_id = 102;

SELECT * FROM branch;

SELECT * FROM employee;

CREATE TABLE branch_supplier (
  branch_id INT,
  supplier_name VARCHAR(40),
  supply_type VARCHAR(40),
  PRIMARY KEY(branch_id, supplier_name),
  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

DELETE FROM branch 
WHERE branch_id = 2;

SELECT * FROM branch_supplier;