# Exploratory Data Analysis (EDA) — HR Employee Attrition

## 1. Overview

This document summarizes the initial exploratory data analysis (EDA) conducted on the IBM HR Analytics Employee Attrition & Performance dataset.

The analysis explores employee attrition patterns across departments, income levels, overtime status, and work-life balance ratings. The purpose is to identify patterns that may help HR stakeholders investigate employee retention challenges.

**Important:** TechNova Pvt Ltd is a hypothetical business scenario used to frame this project. The dataset does not represent actual TechNova employees.

## 2. Dataset Summary

| Metric | Value |
|---|---:|
| Total employee records | 1,470 |
| Employees who left | 237 |
| Employees who stayed | 1,233 |
| Overall recorded attrition rate | 16.12% |

**Calculation:**

Attrition rate = (Employees who left / Total employees) × 100

= (237 / 1,470) × 100 = **16.12%**

The attrition rate represents the proportion of employee records marked as having left in this dataset. It is not an annualized rate because the dataset does not establish a reporting period.

## 3. Key Finding 1: Attrition by Department

The department-level analysis shows differences in recorded attrition rates.

| Department | Total Employees | Employees Who Left | Attrition Rate |
|---|---:|---:|---:|
| Human Resources | 63 | 12 | 19.05% |
| Research & Development | 961 | 133 | 13.84% |
| Sales | 446 | 92 | 20.63% |
| **Total** | **1,470** | **237** | **16.12%** |

### Observation

- Sales has the highest recorded attrition rate at 20.63%.
- Human Resources has a recorded attrition rate of 19.05%.
- Research & Development has the lowest recorded attrition rate among the three departments at 13.84%.

### Business implication

HR could investigate whether differences in role expectations, workload, compensation, career opportunities, or management practices are associated with the higher rates in Sales and Human Resources.

These are possible areas for further investigation, not confirmed causes of attrition.

## 4. Key Finding 2: Monthly Income and Attrition

The initial analysis compared average monthly income between employees who stayed and employees who left.

| Attrition Status | Average Monthly Income |
|---|---:|
| Stayed | 6,833 |
| Left | 4,787 |
| Difference | 2,046 |

### Observation

Employees who left had an average monthly income approximately **29.9% lower** than employees who stayed.

Calculation:

((6,833 − 4,787) / 6,833) × 100 ≈ 29.9%

### Business implication

Compensation may be worth investigating as one possible factor associated with attrition. A deeper analysis could compare income within similar job roles, job levels, experience bands, and departments.

**Limitation:** The dataset does not establish a currency for these values. Therefore, the figures are reported in the dataset's original units, not as Indian rupees. The comparison does not prove that lower income caused employees to leave.

## 5. Key Finding 3: Overtime and Attrition

The analysis compared recorded attrition between employees who reported overtime and those who did not.

| Overtime Status | Total Employees | Employees Who Left | Attrition Rate |
|---|---:|---:|---:|
| No | 1,054 | 110 | 10.44% |
| Yes | 416 | 127 | 30.53% |

### Observation

The recorded attrition rate among employees who reported overtime was approximately **2.93 times** the rate among employees who did not.

### Business implication

HR and department managers could investigate overtime frequency, workload distribution, staffing levels, and employee feedback to understand whether work demands are contributing to retention challenges.

This association does not independently prove burnout or establish that overtime caused employees to leave.

## 6. Key Finding 4: Work-Life Balance and Attrition

The dataset contains a work-life balance rating. The following table compares recorded attrition across rating levels.

| Work-Life Balance Rating | Total Employees | Employees Who Left | Attrition Rate |
|---|---:|---:|---:|
| 1 | 80 | 25 | 31.25% |
| 2 | 344 | 58 | 16.86% |
| 3 | 893 | 127 | 14.22% |
| 4 | 153 | 27 | 17.65% |

### Observation

- Rating 1 has the highest recorded attrition rate at 31.25%.
- Rating 3 has the lowest recorded attrition rate at 14.22%.
- The pattern is not strictly linear across all rating levels.

### Business implication

The lowest work-life balance rating may warrant further investigation. HR could review employee feedback, workload expectations, flexibility, and staffing practices before deciding on interventions.

The rating is an indicator for further analysis, not proof of a specific cause.

## 7. Summary of Initial Findings

| Area | Main Observation | Suggested Follow-Up |
|---|---|---|
| Department | Sales has the highest recorded attrition rate | Investigate department-specific retention factors |
| Monthly income | Employees who left had lower average income | Compare compensation across similar roles and levels |
| Overtime | Attrition is higher among employees reporting overtime | Review workload, overtime patterns, and employee feedback |
| Work-life balance | Rating 1 has the highest recorded attrition rate | Investigate the experiences of employees reporting the lowest rating |

## 8. Limitations and Interpretation

The findings should be interpreted with the following limitations in mind:

1. **Descriptive analysis:** The analysis identifies patterns and associations; it does not establish causation.
2. **Sample dataset:** The data comes from a public HR analytics sample and is not actual TechNova workforce data.
3. **Currency:** The dataset's monthly income values are retained in their original units because no currency conversion has been established.
4. **Reporting period:** The dataset does not establish a period for calculating an annual attrition rate.
5. **Further validation:** The findings should be checked against the source data and additional breakdowns before informing business decisions.
6. **No predictive model:** These findings are descriptive and should not be interpreted as an employee-level attrition prediction.

## 9. Conclusion

The initial EDA identifies four areas for further investigation: department-level differences, monthly income, overtime, and work-life balance.

The recorded overall attrition rate is 16.12%. Sales has the highest department-level rate, employees who left have a lower average monthly income, overtime is associated with a higher attrition rate, and the lowest work-life balance rating has the highest recorded attrition rate.

These observations provide a starting point for deeper SQL analysis and dashboard reporting. Any retention actions should be based on validated findings, additional context, and subsequent measurement rather than assuming that the observed associations prove cause and effect.

---

**Tools used:** Excel for initial exploratory data analysis.

**Next step:** Validate the findings through SQL queries and present the key metrics in a dashboard.
