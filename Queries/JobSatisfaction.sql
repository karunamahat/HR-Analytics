-----Average JobSatisfaction by Department
SELECT e.Department, AVG(p.JobSatisfaction) as AverageJobSatisfaction
FROM PerformanceRating as p
INNER JOIN Employee as e
ON p.EmployeeID = e.EmployeeID
GROUP BY e.Department;

------Work Life balance distribution
SELECT s.SatisfactionLevel, WorkLifeBalance, COUNT(*) as TotalCount
FROM PerformanceRating as p
INNER JOIN SatisfiedLevel as s
ON p.WorkLifeBalance = s.SatisfactionID
GROUP BY WorkLifeBalance, SatisfactionLevel;

------Job Satisfaction vs Performance
SELECT JobSatisfaction, ManagerRating, COUNT(*) as TotalCount
FROM PerformanceRating
GROUP BY JobSatisfaction, ManagerRating;

------Top 10 Employees according to Managers and JobSatisfaction
SELECT TOP 10 p.EmployeeID, CONCAT(e.FirstName, ' ', e.LastName) AS FullName, p.ManagerRating, p.JobSatisfaction
FROM PerformanceRating as p
INNER JOIN Employee as e
ON p.EmployeeID = e.EmployeeID
WHERE ManagerRating >= 4 AND JobSatisfaction >=4
ORDER BY ManagerRating DESC, JobSatisfaction DESC;

