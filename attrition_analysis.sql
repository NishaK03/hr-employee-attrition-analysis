/*
PROJECT: HR Employee Attrition Analysis
DATASET: IBM HR Analytics Employee Attrition & Performance

BUSINESS SCENARIO:
TechNova Pvt Ltd is a hypothetical company used to frame this
portfolio project. The dataset is a public sample and does not
represent actual TechNova employees.

PURPOSE:
Use SQL to explore employee attrition patterns across departments,
income, age, job satisfaction, overtime, promotion history,
business travel, and distance from home.

NOTE:
These queries are descriptive. Associations do not establish
causation, and the high-risk subgroup query is not a predictive model.
*/

-- =========================================================
-- QUERY 1: Overall Employee Attrition
-- Business question: What proportion of employees left?
-- =========================================================

SELECT
    Attrition,
    COUNT(*) AS employee_count,
    ROUND(
        100.0 * COUNT(*) / (SELECT COUNT(*) FROM employee_attrition),
        2
    ) AS percentage_of_all_employees
FROM employee_attrition
GROUP BY Attrition;


-- =========================================================
-- QUERY 2: Attrition by Department
-- Business question: Which departments have higher attrition?
-- =========================================================

SELECT
    Department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_who_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY Department
ORDER BY attrition_rate_pct DESC;


-- =========================================================
-- QUERY 3: Average Monthly Income by Attrition
-- Business question: Does average income differ by attrition status?
-- =========================================================

SELECT
    Attrition,
    COUNT(*) AS employee_count,
    ROUND(AVG(MonthlyIncome), 2) AS average_monthly_income
FROM employee_attrition
GROUP BY Attrition;


-- =========================================================
-- QUERY 4: Attrition by Age Group
-- Business question: How does attrition vary across age groups?
-- =========================================================

SELECT
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS age_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_who_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY age_group
ORDER BY
    CASE age_group
        WHEN '18-25' THEN 1
        WHEN '26-35' THEN 2
        WHEN '36-45' THEN 3
        WHEN '46-55' THEN 4
        ELSE 5
    END;


-- =========================================================
-- QUERY 5: Attrition by Job Satisfaction
-- Business question: How does attrition vary by satisfaction rating?
-- =========================================================

SELECT
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_who_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;


-- =========================================================
-- QUERY 6: Attrition by Overtime
-- Business question: Is overtime associated with higher attrition?
-- =========================================================

SELECT
    OverTime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_who_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY OverTime
ORDER BY attrition_rate_pct DESC;


-- =========================================================
-- QUERY 7: Attrition by Years Since Last Promotion
-- Business question: Does attrition differ by promotion recency?
-- =========================================================

SELECT
    CASE
        WHEN YearsSinceLastPromotion = 0 THEN '0 years'
        WHEN YearsSinceLastPromotion BETWEEN 1 AND 2 THEN '1-2 years'
        WHEN YearsSinceLastPromotion BETWEEN 3 AND 5 THEN '3-5 years'
        ELSE '6+ years'
    END AS promotion_recency_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_who_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY promotion_recency_group
ORDER BY
    CASE promotion_recency_group
        WHEN '0 years' THEN 1
        WHEN '1-2 years' THEN 2
        WHEN '3-5 years' THEN 3
        ELSE 4
    END;


-- =========================================================
-- QUERY 8: Attrition by Business Travel Frequency
-- Business question: How does attrition vary by travel frequency?
-- =========================================================

SELECT
    BusinessTravel,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_who_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY BusinessTravel
ORDER BY attrition_rate_pct DESC;


-- =========================================================
-- QUERY 9: Attrition by Distance From Home
-- Business question: Does attrition vary by commuting distance?
-- =========================================================

SELECT
    CASE
        WHEN DistanceFromHome BETWEEN 1 AND 10 THEN 'Near (1-10)'
        WHEN DistanceFromHome BETWEEN 11 AND 20 THEN 'Medium (11-20)'
        ELSE 'Far (21+)'
    END AS distance_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_who_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY distance_group
ORDER BY
    CASE distance_group
        WHEN 'Near (1-10)' THEN 1
        WHEN 'Medium (11-20)' THEN 2
        ELSE 3
    END;


-- =========================================================
-- QUERY 10: Explore a Potential Higher-Risk Subgroup
-- Business question: How many employees meet all four conditions?
--
-- Conditions:
-- 1. Reports overtime
-- 2. Monthly income below 4000 dataset units
-- 3. Job satisfaction rating of 2 or lower
-- 4. Travels frequently for business
--
-- This is exploratory subgroup analysis, NOT a validated
-- prediction model or an employee-level risk assessment.
-- =========================================================

SELECT
    COUNT(*) AS employees_matching_conditions,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_who_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
WHERE
    OverTime = 'Yes'
    AND MonthlyIncome < 4000
    AND JobSatisfaction <= 2
    AND BusinessTravel = 'Travel_Frequently';
