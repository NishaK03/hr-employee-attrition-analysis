# HR Employee Attrition Analysis — Business Requirements

## 1. Purpose

This document defines the business objectives, analytical questions, and success criteria for the HR Employee Attrition Analysis project.

The requirements are framed around TechNova Pvt Ltd, a hypothetical organisation used for this portfolio case study. They provide a structured foundation for exploratory data analysis, SQL queries, dashboard design, and business recommendations.

## 2. Business Objective

The primary objective is to analyse historical employee attrition patterns, identify employee groups with comparatively higher attrition rates, investigate factors associated with attrition, and recommend potential retention initiatives.

The analysis aims to help HR stakeholders make better-informed decisions using documented metrics and evidence from the available dataset.

## 3. Business Requirements

| Requirement ID | Business Requirement | Priority | Expected Deliverable |
|---|---|---|---|
| BR-01 | Calculate the overall employee attrition rate | Must Have | Attrition KPI |
| BR-02 | Compare attrition across departments | Must Have | Department-level analysis |
| BR-03 | Examine the relationship between compensation and attrition | Must Have | Income comparison |
| BR-04 | Analyse attrition across age groups and experience levels | Must Have | Employee-group comparisons |
| BR-05 | Examine job satisfaction and work-life balance in relation to attrition | Must Have | Satisfaction analysis |
| BR-06 | Investigate overtime and business travel patterns | Must Have | Working-condition analysis |
| BR-07 | Explore tenure and time since last promotion | Should Have | Career-progression analysis |
| BR-08 | Compare attrition patterns across demographic groups | Should Have | Demographic analysis |
| BR-09 | Create an interactive dashboard for reviewing key metrics | Must Have | Dashboard |
| BR-10 | Provide actionable, evidence-based recommendations | Must Have | Recommendations document |
| BR-11 | Estimate the financial impact of attrition | Future Enhancement | Cost model requiring additional financial data |
| BR-12 | Develop a validated employee attrition prediction model | Out of Scope | Separate future analytical project |

## 4. Business Questions and Objectives

### 4.1 Foundational Questions

| ID | Business Question | Business Purpose |
|---|---|---|
| BQ-01 | What is the overall employee attrition rate? | Establish a baseline for monitoring workforce turnover. |
| BQ-02 | Which department has the highest attrition rate? | Identify departments requiring further investigation. |
| BQ-03 | How does monthly income differ between employees who left and those who stayed? | Examine whether compensation is associated with attrition. |
| BQ-04 | How do age and years of experience relate to attrition? | Compare attrition patterns across career stages. |
| BQ-05 | How does job satisfaction relate to attrition? | Investigate whether satisfaction ratings differ across attrition groups. |
| BQ-06 | What patterns distinguish employees who left from those who stayed? | Identify useful areas for further analysis. |
| BQ-07 | How does work-life balance relate to attrition? | Investigate potential relationships between work-life balance ratings and attrition. |
| BQ-08 | Does business travel frequency relate to attrition? | Examine attrition rates across travel categories. |
| BQ-09 | At what stages of employee tenure is attrition higher? | Identify tenure groups for closer review. |
| BQ-10 | Which combinations of observed factors are associated with higher attrition? | Explore multiple-factor patterns without treating them as proven causes. |

### 4.2 Business Impact Questions

| ID | Business Question | Business Purpose |
|---|---|---|
| BQ-11 | What is the estimated cost of employee attrition? | Understand potential financial impact using verified cost inputs. |
| BQ-12 | Is attrition associated with project delivery or productivity outcomes? | Determine what additional operational data is required to investigate business impact. |
| BQ-13 | Which roles are the most expensive to replace? | Prioritise cost analysis when role-level replacement costs become available. |

### 4.3 Career Growth Questions

| ID | Business Question | Business Purpose |
|---|---|---|
| BQ-14 | Do attrition rates differ by job level? | Investigate patterns across levels of seniority. |
| BQ-15 | How does time since the last promotion relate to attrition? | Explore whether promotion gaps are associated with employee departures. |
| BQ-16 | Is manager-related satisfaction associated with attrition? | Investigate the relationship between available manager-related measures and attrition. |

### 4.4 Demographic Questions

| ID | Business Question | Business Purpose |
|---|---|---|
| BQ-17 | How does marital status relate to attrition? | Compare observed attrition patterns across marital-status groups without assuming causation. |
| BQ-18 | Does attrition differ by educational background or field? | Examine patterns across education categories. |
| BQ-19 | How do attrition patterns differ by gender? | Support responsible workforce reporting and identify areas requiring further investigation. |

### 4.5 Engagement and Work Environment Questions

| ID | Business Question | Business Purpose |
|---|---|---|
| BQ-20 | Do employees who work overtime have higher attrition rates? | Investigate the relationship between overtime and employee departures. |
| BQ-21 | Does distance from home relate to attrition? | Examine attrition rates across commuting-distance groups. |
| BQ-22 | How does training participation relate to attrition? | Explore whether training frequency is associated with employee retention. |

### 4.6 Strategic Questions

| ID | Business Question | Business Purpose |
|---|---|---|
| BQ-23 | Can employee attrition risk be predicted reliably? | Define a potential future modelling project requiring validation and appropriate safeguards. |
| BQ-24 | What could a 15% reduction in attrition save annually? | Estimate potential savings only after defining the baseline, cost assumptions, and meaning of a 15% reduction. |
| BQ-25 | What are the three highest-priority recommendations for HR? | Translate validated findings into actionable proposals. |

**Important:** These 25 questions define the wider business-analysis scope. Not every question has been answered by the ten SQL queries currently documented. Questions requiring cost, productivity, or predictive data remain open or require additional data.

## 5. Dashboard Requirements

The dashboard should provide an accessible summary of workforce attrition patterns.

| Dashboard Requirement | Description |
|---|---|
| DR-01 | Display total employees, employees who left, and overall attrition rate. |
| DR-02 | Compare attrition across departments. |
| DR-03 | Visualise attrition across age groups. |
| DR-04 | Compare attrition patterns by overtime status. |
| DR-05 | Examine job satisfaction in relation to attrition. |
| DR-06 | Compare attrition across business-travel categories. |
| DR-07 | Present relevant tenure and career-progression patterns where validated. |
| DR-08 | Provide department and gender filters if supported by the implemented dashboard. |
| DR-09 | Use clear titles, consistent formatting, and understandable labels. |
| DR-10 | Present data limitations and avoid implying that observed associations prove causation. |

These requirements describe the intended dashboard capabilities. Only features confirmed in the actual dashboard should be presented as implemented.

## 6. Success Criteria

The project will be considered analytically complete when:

1. The overall attrition rate is calculated and documented.
2. Department-level attrition rates are compared.
3. At least three priority findings are supported by the available data.
4. At least three actionable recommendations are documented.
5. The dashboard communicates the selected KPIs and key patterns clearly.
6. SQL queries and calculation methods are documented and reproducible.
7. Assumptions, limitations, and unanswered questions are explicitly identified.

### Proposed Business Outcome

The hypothetical business scenario sets a proposed objective of reducing attrition. A specific target and timeline must be agreed with stakeholders and supported by a defensible baseline.

Any reduction target is a proposed future outcome, not a result demonstrated by this historical dataset.

## 7. Dependencies and Constraints

- The analysis depends on the fields available in the IBM HR Analytics Employee Attrition & Performance dataset.
- Financial analysis requires recruitment, onboarding, and replacement-cost data not supplied in the dataset.
- Project delivery and productivity analysis requires suitable operational metrics.
- Predictive modelling requires a separate modelling and validation process.
- Recommendations must be reviewed before being applied to a real workforce.
- Demographic findings should be interpreted carefully and should not be used to justify discriminatory decisions.

## 8. Conclusion

This requirements document translates the hypothetical HR business problem into structured analytical questions, dashboard expectations, and measurable project deliverables.

It provides traceability between stakeholder needs, the planned analysis, and the findings and recommendations developed during the project.

---

**Project:** HR Employee Attrition Analysis  
**Business Scenario:** TechNova Pvt Ltd — hypothetical  
**Document Type:** Business Requirements  
**Prepared by:** Nisha Kawale
