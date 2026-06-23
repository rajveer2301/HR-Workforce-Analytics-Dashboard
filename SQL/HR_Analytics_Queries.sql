--  -- SELECT COUNT(*) AS TotalEmployees
-- -- FROM hr_analytics_data;
-- -- SELECT ROUND(AVG(Salary),2) AS AvgSalary
-- -- FROM hr_analytics_data;
-- SELECT ROUND(AVG(PerformanceRating),2) AS AvgPerformance
-- FROM hr_analytics_data;
-- SELECT ROUND(AVG(JobSatisfactionScore),2) AS AvgSatisfaction
-- FROM hr_analytics_data;
-- SELECT EmploymentStatus,
--        COUNT(*) AS EmployeeCount
-- FROM hr_analytics_data
-- GROUP BY EmploymentStatus;
-- SELECT Department,
--        COUNT(*) AS EmployeeCount
-- FROM hr_analytics_data
-- GROUP BY Department
-- ORDER BY EmployeeCount DESC;
SELECT Department,
       ROUND(AVG(Salary),2) AS AvgSalary
FROM hr_analytics_data
GROUP BY Department
ORDER BY AvgSalary DESC;
SELECT Department,
       ROUND(AVG(PerformanceRating),2) AS AvgPerformance
FROM hr_analytics_data
GROUP BY Department
ORDER BY AvgPerformance DESC;
SELECT Department,
       ROUND(AVG(JobSatisfactionScore),2) AS AvgSatisfaction
FROM hr_analytics_data
GROUP BY Department
ORDER BY AvgSatisfaction DESC;
SELECT Department,
       COUNT(*) AS AttritionCount
FROM hr_analytics_data
WHERE EmploymentStatus='Terminated'
GROUP BY Department
ORDER BY AttritionCount DESC;
SELECT ReasonForLeaving,
       COUNT(*) AS EmployeeCount
FROM hr_analytics_data
WHERE EmploymentStatus='Terminated'
GROUP BY ReasonForLeaving
ORDER BY EmployeeCount DESC;
SELECT Gender,
       COUNT(*) AS AttritionCount
FROM hr_analytics_data
WHERE EmploymentStatus='Terminated'
GROUP BY Gender;
SELECT RetentionRisk,
       COUNT(*) AS Employees
FROM hr_analytics_data
GROUP BY RetentionRisk;
SELECT EmployeeID,
       Department,
       JobTitle,
       Salary,
       JobSatisfactionScore,
       RetentionRisk
FROM hr_analytics_data
WHERE RetentionRisk='High';
SELECT Department,
       SUM(PromotionCount) AS TotalPromotions
FROM hr_analytics_data
GROUP BY Department
ORDER BY TotalPromotions DESC;
SELECT InternalPromotion,
       COUNT(*) AS Employees
FROM hr_analytics_data
GROUP BY InternalPromotion;
SELECT EmployeeID,
       Department,
       JobTitle,
       PerformanceRating
FROM hr_analytics_data
ORDER BY PerformanceRating DESC
LIMIT 10;
SELECT
ROUND(AVG(TrainingHours),2) AS AvgTraining,
ROUND(AVG(PerformanceRating),2) AS AvgPerformance
FROM hr_analytics_data;
SELECT EmployeeID,
       Department,
       Salary
FROM hr_analytics_data
ORDER BY Salary DESC
LIMIT 10;
SELECT EmployeeID,
       Department,
       Salary,
       DENSE_RANK() OVER(ORDER BY Salary DESC) AS SalaryRank
FROM hr_analytics_data;