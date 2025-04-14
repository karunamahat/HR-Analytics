-----Overall Attrition Rate
SELECT COUNT(*) AS AttritionDist, Attrition 
FROM Employee 
GROUP BY Attrition;

SELECT COUNT(CASE WHEN Attrition = 1 THEN 1 END)*100 / COUNT(*) AS AttritionRate  FROM Employee;

------AttritionCount by Department
SELECT Department, COUNT(*) AS TotalEmployees, COUNT(CASE WHEN Attrition = 1 THEN 1 END) AS AttritionCountbyDept
FROM Employee
GROUP BY Department;

------AttritionCount by Gender 
SELECT Gender, COUNT(*) AS TotalEmployees, COUNT(CASE WHEN Attrition = 1 THEN 1 END) AS AttritionCountbyGender
FROM Employee
GROUP BY Gender;