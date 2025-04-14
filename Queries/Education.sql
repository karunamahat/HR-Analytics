------ Education Level Distribution
SELECT e.Education, ed.EducationLevel, COUNT(*) AS TotalCount
FROM Employee as e
INNER JOIN EducationLevel as ed
ON e.Education = ed.EducationLevelID
GROUP BY e.Education, ed.EducationLevel;

