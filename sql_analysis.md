# SQL Analysis — HR Employee Attrition

## 1. Overview

This document explains the SQL queries developed for the HR Employee Attrition Analysis project.

The purpose of the analysis is to examine employee attrition patterns and answer business questions that may help HR stakeholders investigate employee retention challenges.

The queries are stored in [/attrition_analysis.sql].

**Business scenario:** TechNova Pvt Ltd is a hypothetical company used to frame this portfolio project. The analysis uses the public IBM HR Analytics Employee Attrition & Performance sample dataset, not actual TechNova employee records.

## 2. Technical Approach

The SQL analysis uses:

- `SELECT` to retrieve and calculate relevant information.
- `COUNT()` to count employee records.
- `SUM()` and `CASE WHEN` to count employees who left.
- `AVG()` to calculate average monthly income.
- `GROUP BY` to summarize results by categories.
- `ORDER BY` to sort results for comparison.
- `ROUND()` to format calculated metrics.
- `NULLIF()` to avoid division by zero in the subgroup analysis.

Attrition rate is calculated as:

**Attrition Rate (%) = Employees Who Left ÷ Total Employees in the Group × 100**

For grouped analyses, the denominator is the total number of employees in that particular group.

## 3. Query Documentation

### Query 1: Overall Employee Attrition

**Business question:** What proportion of employee records are marked as having left?

**SQL approach:** Groups employees by attrition status, counts records in each group, and calculates each group's percentage of all employee records.

**Business value:** Establishes a baseline for comparing attrition across different employee groups.

**Expected output:** Attrition status, employee count, and percentage of all employees.

### Query 2: Attrition by Department

**Business question:** Which departments have the highest recorded attrition rates?

**SQL approach:** Groups employee records by department and calculates the number of employees who left and the department-level attrition rate.

**Business value:** Helps HR prioritize departments for further investigation.

**Expected output:** Department, total employees, employees who left, and attrition rate.

### Query 3: Average Monthly Income by Attrition

**Business question:** Does average monthly income differ between employees who stayed and those who left?

**SQL approach:** Groups employees by attrition status and calculates the average monthly income for each group.

**Business value:** Helps identify whether compensation warrants deeper investigation.

**Expected output:** Attrition status, employee count, and average monthly income.

**Interpretation caution:** Differences in average income do not prove that compensation caused attrition. The dataset's currency is not established, so income values should remain in their original units.

### Query 4: Attrition by Age Group

**Business question:** How does recorded attrition vary across age groups?

**SQL approach:** Uses a `CASE` expression to categorize employee ages into groups and calculates the attrition rate for each group.

**Business value:** Helps identify age groups that may warrant further analysis, while avoiding assumptions about individual employees.

**Expected output:** Age group, total employees, employees who left, and attrition rate.

### Query 5: Attrition by Job Satisfaction

**Business question:** How does recorded attrition vary by job satisfaction rating?

**SQL approach:** Groups employees by job satisfaction score and calculates the attrition rate for each score.

**Business value:** Helps HR examine whether employee satisfaction may be associated with retention.

**Expected output:** Job satisfaction score, total employees, employees who left, and attrition rate.

**Interpretation caution:** Satisfaction ratings may be associated with attrition, but the relationship does not establish causation.

### Query 6: Attrition by Overtime

**Business question:** Is recorded attrition higher among employees who report overtime?

**SQL approach:** Groups employees by overtime status and compares attrition rates.

**Business value:** Provides evidence for investigating workload, staffing, and overtime practices.

**Expected output:** Overtime status, total employees, employees who left, and attrition rate.

**Interpretation caution:** A higher rate among employees reporting overtime does not independently prove burnout or establish that overtime caused employees to leave.

### Query 7: Attrition by Years Since Last Promotion

**Business question:** Does recorded attrition vary by the number of years since an employee's last promotion?

**SQL approach:** Uses a `CASE` expression to categorize years since the last promotion and calculates attrition rates for those groups.

**Business value:** Helps HR explore whether promotion recency warrants further investigation.

**Expected output:** Promotion recency group, total employees, employees who left, and attrition rate.

**Interpretation caution:** The actual results must be reviewed before drawing conclusions about promotion delays or career progression.

### Query 8: Attrition by Business Travel Frequency

**Business question:** How does recorded attrition vary by business travel frequency?

**SQL approach:** Groups employees by business travel category and calculates the attrition rate for each category.

**Business value:** Helps HR investigate whether travel requirements may be associated with retention challenges.

**Expected output:** Travel category, total employees, employees who left, and attrition rate.

### Query 9: Attrition by Distance From Home

**Business question:** Does recorded attrition vary by distance from home?

**SQL approach:** Categorizes distance values into three groups: 1–10, 11–20, and 21 or more dataset distance units. It then calculates attrition rates for those groups.

**Business value:** Helps explore whether commuting distance may be relevant to employee retention.

**Expected output:** Distance group, total employees, employees who left, and attrition rate.

**Interpretation caution:** Distance is an exploratory factor, not proof that commuting causes attrition. The dataset's distance unit should not be assumed to be kilometres without verification.

### Query 10: Exploratory Higher-Risk Subgroup

**Business question:** How many employees meet a specific combination of overtime, income, satisfaction, and travel conditions, and what is the recorded attrition rate within that subgroup?

**SQL approach:** Filters records using four conditions:

1. Overtime is recorded as `Yes`.
2. Monthly income is below 4,000 dataset units.
3. Job satisfaction is 2 or lower.
4. Business travel is recorded as `Travel_Frequently`.

The query counts matching records, counts employees who left, and calculates the subgroup attrition rate.

**Business value:** Demonstrates how multiple business conditions can be combined to investigate a particular employee segment.

**Important limitation:** This is exploratory subgroup analysis, not a validated predictive model. The income threshold is an analytical assumption, not an established compensation benchmark. Results should be validated before any business action is considered.

## 4. Business Questions Addressed

The current SQL file directly investigates these areas:

- Overall attrition.
- Department-level differences.
- Average monthly income.
- Age groups.
- Job satisfaction.
- Overtime.
- Years since last promotion.
- Business travel.
- Distance from
