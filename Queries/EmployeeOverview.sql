--Employee Overview

-------Count of Employees
SELECT COUNT(*) as TotalEmployees FROM Employee;

-------Count of Employees by Gender
SELECT Gender, COUNT(*) AS CountofEmployeesbyGender
FROM Employee 
GROUP BY Gender
ORDER BY CountofEmployeesbyGender DESC;

--------Count of Employees by Department
SELECT Department, COUNT(*) AS CountofEmployeesbyDept
FROM Employee 
GROUP BY Department
ORDER BY CountofEmployeesbyDept DESC;

--------Count of Employees by Job Role
SELECT JobRole, COUNT(*) AS CountofEmployeesbyJobRole
FROM Employee 
GROUP BY JobRole
ORDER BY CountofEmployeesbyJobRole DESC;