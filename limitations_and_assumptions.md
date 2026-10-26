# Limitations and Assumptions — HR Employee Attrition Analysis

## 1. Purpose

This document records the assumptions, limitations, and data considerations relevant to the HR Employee Attrition Analysis project.

Documenting these factors helps ensure that findings are interpreted responsibly and that business recommendations are based on appropriate evidence.

## 2. Project Context

TechNova Pvt Ltd is a hypothetical company used to frame this portfolio project. The analysis uses the public IBM HR Analytics Employee Attrition & Performance dataset and does not use actual TechNova employee records.

The project demonstrates how a Business Analyst can define business questions, analyze sample HR data, communicate findings, and propose potential retention initiatives.

## 3. Data Assumptions

### 3.1 Dataset scope

The dataset contains 1,470 employee records. The initial analysis identifies 237 records with `Attrition = Yes` and 1,233 with `Attrition = No`.

These figures should be reconciled against the source data and SQL output before the project is presented as fully validated.

### 3.2 Attrition definition

For this project, attrition is defined using the dataset's `Attrition` field.

The calculated 16.12% is the proportion of records marked `Yes` among all employee records. The dataset does not establish a reporting period, so this figure should not be described as an annual attrition rate.

### 3.3 Income units

The `MonthlyIncome` field is analyzed in its original dataset units. The dataset does not establish that the values are in Indian rupees or any other specific currency.

No currency conversion or salary recommendation should be based on an assumed currency.

### 3.4 Distance units

`DistanceFromHome` is used to group employee records by distance. The unit should not be described as kilometres unless it has been verified from the dataset documentation.

### 3.5 Missing and invalid data

The analysis should check for missing values, inconsistent categories, unexpected values, and duplicates before final results are published.

No claim is made here that every data quality issue has been checked or resolved.

## 4. Analytical Limitations

### 4.1 Association does not establish causation

The analysis compares attrition across employee categories. Differences between groups do not establish that the examined factor caused an employee to leave.

For example, a higher recorded attrition rate among employees reporting overtime does not independently prove burnout or establish that overtime caused attrition.

### 4.2 Sample dataset limitations

The public sample dataset is not verified company-specific workforce data. Findings cannot automatically be generalized to an actual employer or used to estimate its expected attrition rate.

### 4.3 Limited business context

The dataset does not provide all the information that may be needed to understand employee decisions, such as detailed exit-interview responses, external employment opportunities, management context, or the full cost of replacing employees.

Additional data may be required to investigate these factors.

### 4.4 Descriptive analysis only

The SQL queries are designed to summarize and compare groups. The subgroup query combines selected conditions but does not constitute a trained, validated predictive model.

No predictive accuracy, employee-level risk score, or future attrition forecast is claimed.

### 4.5 Unverified query results

SQL outputs should be executed and reconciled with the source data before being described as validated. The initial Excel findings provide comparison points for overall attrition, department attrition, average income, overtime, and work-life balance.

### 4.6 No measured intervention outcomes

The retention initiatives in this project are proposals. No real-world intervention has been implemented or evaluated through this sample analysis.

Consequently, no specific reduction in attrition, cost savings, or productivity improvement is claimed.

## 5. Business Assumptions

The following assumptions frame the analysis and should be confirmed with stakeholders in a real business engagement.

| ID | Assumption | Validation Required |
|---|---|---|
| A-01 | HR stakeholders need a clearer understanding of employee attrition patterns | Confirm stakeholder objectives |
| A-02 | Department-level comparisons may help identify areas for further investigation | Confirm business relevance and sufficient group sizes |
| A-03 | Income, overtime, satisfaction, and travel may be useful analytical dimensions | Validate findings and obtain additional context |
| A-04 | A dashboard may help stakeholders monitor agreed metrics | Confirm reporting requirements and user needs |
| A-05 | Retention initiatives should be evaluated against a baseline | Agree on metric definitions and reporting periods |

These are project assumptions, not facts established through interviews with actual TechNova stakeholders.

## 6. Scope Boundaries

### Included

- Exploratory analysis of employee attrition.
- Group comparisons using the available dataset.
- SQL queries addressing selected business questions.
- Documentation of analytical findings.
- Proposed retention recommendations.
- Dashboard requirements and reporting concepts.

### Excluded

- Integration with a live HR information system.
- Implementation of actual company-wide retention policies.
- Evaluation of individual employees.
- A validated predictive attrition model.
- Verified financial estimates of replacement costs.
- Claims about actual TechNova workforce conditions.
- Measurement of real-world retention outcomes.

## 7. Dashboard and Reporting Limitations

Dashboard capabilities should be documented according to what has actually been built and tested.

Any proposed visuals, filters, KPIs, or automated refresh capabilities should be identified as requirements until implementation has been verified.

The dashboard should use clearly defined metrics, validated data, appropriate access controls, and aggregated reporting wherever possible.

## 8. Responsible Use and Privacy

Employee analytics can influence decisions about people and workplace policies. Therefore:

- Findings should be used to investigate organizational conditions, not to label individual employees.
- Small groups should be interpreted carefully to avoid misleading conclusions.
- Employee data should be handled according to applicable privacy and access-control requirements.
- Retention decisions should incorporate appropriate context and human review.
- Recommendations should be evaluated for unintended consequences.

## 9. Conclusion

This project demonstrates a structured approach to HR attrition analysis using a public sample dataset. Its value lies in the analytical process: defining business questions, calculating metrics, documenting assumptions, and translating findings into proposals for further investigation.

The limitations described here establish clear boundaries around what the data can support and help distinguish observed patterns from validated business conclusions.

**Project status:** Findings and recommendations remain subject to source-data reconciliation, SQL validation, and further investigation.
