--Table
--Employees
--| EmployeeID | EmployeeName | DepartmentID | Salary |
--  Requirement
--Display:
--EmployeeName
--DepartmentID
--Salary
--Dense Rank of employees within each department based on highest salary.
--If two employees have the same salary:
--They should receive the same rank.
--The next rank should NOT be skipped.


SELECT 
    EmployeeName,
    DepartmentID,
    Salary,
    DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS SalaryDenseRank
FROM Employees



