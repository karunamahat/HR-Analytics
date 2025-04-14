---------Average Years at Company by Department
SELECT Department, AVG(YearsAtCompany) AS AvgTenure
FROM Employee
GROUP BY Department;

---------Employees Nearing Retirement (Age > 55)
SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM Employee
WHERE Age > 55;

