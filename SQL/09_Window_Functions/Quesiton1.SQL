--Table Employees
--EmployeeID | EmployeeName | DepartmentID | Salary |
-- Requirement
-- Display:
-- EmployeeName
-- DepartmentID
-- Salary
-- Rank of employees within each department, based on highest salary first.

--If two employees have the same salary, they should receive the same rank, and the next rank should be skipped.

SELECT 
    EmployeeName,
    DepartmentID,
    Salary,
    RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS SalaryRank
FROM Employees

