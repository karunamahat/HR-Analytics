------Average annual income by JobRole
SELECT JobRole, AVG(Salary) AS AvgIncome
FROM Employee
GROUP BY JobRole
ORDER BY AvgIncome DESC;

------Income vs Attrition
SELECT Attrition, AVG(Salary) AS AvgIncome
FROM Employee
GROUP BY Attrition;

------Average annual income by Marital status
SELECT MaritalStatus, AVG(Salary) AS AvgIncome
FROM Employee
GROUP BY MaritalStatus
ORDER BY AvgIncome DESC;

