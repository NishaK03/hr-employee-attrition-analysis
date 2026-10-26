# Dashboard Documentation — HR Employee Attrition Analysis

## 1. Overview

This document defines the intended dashboard design for the HR Employee Attrition Analysis project.

The dashboard is intended to help HR stakeholders explore employee attrition patterns, compare employee groups, and identify areas that may require further investigation.

**Business scenario:** TechNova Pvt Ltd is a hypothetical company used to frame this portfolio project. The analysis uses the public IBM HR Analytics Employee Attrition & Performance dataset, not actual TechNova employee records.

**Implementation status:** The specifications below describe the proposed dashboard. Individual visuals and features should be marked as implemented only after they have been built and tested.

## 2. Business Objectives

The dashboard is designed to help stakeholders:

- Monitor the overall recorded attrition rate.
- Compare attrition across departments.
- Examine differences across selected employee categories.
- Explore associations between attrition and factors such as overtime and job satisfaction.
- Support evidence-informed discussions about retention initiatives.
- Review consistent metrics in a centralized report.

## 3. Intended Audience

| Stakeholder | Information Need |
|---|---|
| HR Manager | Understand attrition patterns and identify areas for further investigation |
| Department Managers | Compare attrition patterns within their departments |
| Finance Head | Understand where additional cost data would be needed to assess financial impact |
| CEO | Review high-level workforce indicators |
| Business Analyst | Validate metrics, investigate patterns, and communicate findings |

These stakeholders are part of the hypothetical business scenario. No actual stakeholder interviews or dashboard reviews are claimed.

## 4. Proposed Dashboard KPIs

| KPI | Definition | Purpose |
|---|---|---|
| Total Employees | Count of employee records | Establish the dataset population |
| Employees Who Left | Count of records with `Attrition = Yes` | Show the number of records marked as attrition |
| Employees Who Stayed | Count of records with `Attrition = No` | Show the number of records marked as retained |
| Attrition Rate | Employees who left divided by total employees, multiplied by 100 | Provide a consistent attrition measure |
| Department Attrition Rate | Employees who left in a department divided by total employees in that department, multiplied by 100 | Compare departments |
| Average Monthly Income | Average of the `MonthlyIncome` field | Compare income between selected groups |

**Metric caution:** The dataset does not establish a reporting period or currency. The overall attrition rate should not be described as annual, and monthly income values should not be labelled as Indian rupees.

## 5. Proposed Visualizations

### 5.1 Attrition Summary Cards

**Visual type:** KPI cards.

**Proposed measures:**
- Total employee records.
- Employees who left.
- Employees who stayed.
- Overall recorded attrition rate.

**Business purpose:** Give stakeholders a quick overview of the dataset.

### 5.2 Attrition by Department

**Visual type:** Bar or column chart.

**Fields:**
- Category: Department.
- Measure: Attrition rate.

**Business purpose:** Compare department-level attrition rates and identify areas for further investigation.

**Design note:** Display the rate and, where useful, the number of employees in each department to provide context.

### 5.3 Attrition by Age Group

**Visual type:** Bar chart.

**Fields:**
- Category: Age group.
- Measure: Attrition rate.

**Business purpose:** Examine differences across age groups.

### 5.4 Attrition by Overtime Status

**Visual type:** Bar chart.

**Fields:**
- Category: Overtime status.
- Measure: Attrition rate.

**Business purpose:** Compare recorded attrition among employees who report overtime and those who do not.

### 5.5 Attrition by Job Satisfaction

**Visual type:** Bar chart.

**Fields:**
- Category: Job satisfaction rating.
- Measure: Attrition rate.

**Business purpose:** Explore whether attrition differs across satisfaction ratings.

### 5.6 Attrition by Business Travel

**Visual type:** Bar chart.

**Fields:**
- Category: Business travel frequency.
- Measure: Attrition rate.

**Business purpose:** Compare attrition across travel categories.

### 5.7 Attrition by Work-Life Balance

**Visual type:** Bar chart.

**Fields:**
- Category: Work-life balance rating.
- Measure: Attrition rate.

**Business purpose:** Identify rating groups that may warrant further investigation.

### 5.8 Employee Attrition Detail

**Visual type:** Summary table.

**Potential fields:**
- Department.
- Attrition status.
- Total employees.
- Employees who left.
- Attrition rate.

**Business purpose:** Provide a more detailed view to complement the summary charts.

## 6. Proposed Filters

The following filters may be useful if supported by the selected dashboard tool and validated data model:

- Department.
- Gender.
- Age group.
- Job role.
- Overtime status.
- Business travel frequency.
- Job satisfaction rating.

Filters should be tested to ensure that they update the intended visuals and that all metrics recalculate correctly.

## 7. Data and Metric Validation

Before publishing the dashboard:

1. Reconcile the employee count with the source dataset.
2. Confirm that the total number of records marked as attrition matches the source data.
3. Validate attrition rate calculations against the SQL analysis.
4. Check that department totals reconcile to the overall population.
5. Verify that filters do not produce incorrect denominators.
6. Confirm that chart labels and metric definitions are understandable.
7. Check for missing or unexpected category values.
8. Ensure that no unverified findings are presented as established business conclusions.

## 8. Design and Usability Principles

The dashboard should:

- Use clear titles and consistent labels.
- Display percentages with consistent decimal precision.
- Include sample sizes where they help interpretation.
- Avoid visual elements that imply causation when only associations have been observed.
- Use readable colours and accessible contrast.
- Place the most important summary metrics prominently.
- Avoid unnecessary personal or identifiable employee information.
- Include a clear explanation of the dataset and its limitations.

## 9. Implementation and Testing Checklist

Update this checklist only after each task has actually been completed.

- [ ] Import the source dataset into the selected dashboard tool.
- [ ] Create and validate KPI calculations.
- [ ] Build the department attrition visual.
- [ ] Build the age-group attrition visual.
- [ ] Build the overtime attrition visual.
- [ ] Build the job satisfaction attrition visual.
- [ ] Build the business travel attrition visual.
- [ ] Build the work-life balance attrition visual.
- [ ] Add and test the required filters.
- [ ] Reconcile dashboard figures against validated SQL results.
- [ ] Capture a screenshot of the completed dashboard.
- [ ] Document any known limitations.

## 10. Future Enhancements

Potential enhancements, subject to data availability and business requirements, include:

- Trend reporting using a dataset with reliable time-period information.
- Analysis of employee tenure and new-hire retention.
- Integration of validated exit-interview or engagement survey data.
- Cost-impact analysis using actual replacement-cost assumptions.
- Scheduled data refreshes and access-controlled reporting.
- Evaluation of retention initiatives against a defined baseline.

These enhancements are proposed future capabilities, not claims about the current implementation.

## 11. Conclusion

The proposed dashboard is intended to turn employee attrition data into clear, consistent, and actionable reporting. Its value depends on validated metrics, understandable visualizations, appropriate privacy controls, and careful interpretation of the findings.

The dashboard should support business investigation and decision-making rather than claim to identify definitive causes of attrition.

**Project status:** Dashboard specifications documented. Implementation and testing status must be updated to reflect the actual deliverable.
