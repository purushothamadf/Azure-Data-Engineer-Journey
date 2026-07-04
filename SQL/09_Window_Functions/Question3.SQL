/*-- Table
--Employees
--| EmployeeID | EmployeeName | DepartmentID | Salary |
--Requirement
-- Display:
--EmployeeName
--DepartmentID
--Salary
--Show only the employee(s) who earn the highest salary in each department. */

SELECT 
    EmployeeName,
    DepartmentID,
    Salary
FROM (SELECT 
          EmployeeName,
          DepartmentID,
          Salary,
          RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS SalaryRank
      FROM Employees) AS RE
WHERE SalaryRank = 1