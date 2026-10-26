# Business Recommendations — HR Employee Attrition Analysis

## 1. Executive Summary

This document outlines potential retention initiatives based on the initial exploratory analysis of the IBM HR Analytics Employee Attrition & Performance dataset.

The analysis identified differences in recorded attrition across departments, monthly income groups, overtime status, and work-life balance ratings. These patterns can help HR stakeholders identify areas for further investigation and develop evidence-informed retention initiatives.

**Business scenario:** TechNova Pvt Ltd is a hypothetical company used to frame this project. The dataset contains public sample data and does not represent actual TechNova employees.

The recommendations below are proposals for consideration, not confirmed solutions. Their effectiveness must be evaluated through additional analysis and subsequent measurement.

## 2. Key Findings Informing the Recommendations

| Finding | Observed Pattern | Potential Business Implication |
|---|---|---|
| Overall attrition | 237 of 1,470 records are marked as attrition, equivalent to 16.12% | Establish a baseline for retention analysis |
| Department | Sales has a recorded attrition rate of 20.63% | Investigate department-specific retention challenges |
| Monthly income | Average monthly income is lower among employees who left | Examine compensation differences within comparable roles |
| Overtime | Employees reporting overtime have a higher recorded attrition rate | Review workload and overtime patterns |
| Work-life balance | The lowest rating group has the highest recorded attrition rate | Investigate the experiences of employees reporting poor work-life balance |

These findings are descriptive associations. They do not establish why employees left or prove that a particular intervention will reduce attrition.

## 3. Proposed Recommendations

### Recommendation 1: Investigate Compensation and Pay Equity

**Observation:** Employees who left had a lower average monthly income than employees who stayed in the initial analysis.

**Proposed actions:**
- Compare compensation across similar job roles, job levels, experience bands, and departments.
- Review internal pay equity and salary progression.
- Examine whether compensation differences remain after accounting for role and seniority.
- Develop targeted compensation proposals only if further analysis identifies a credible issue.

**Suggested KPI:** Attrition rate by comparable job level and compensation band.

**Priority:** Medium — investigate before implementing changes.

**Measurement approach:** Compare attrition patterns across comparable employee groups and monitor the results of any approved compensation changes.

**Limitation:** The dataset does not establish a currency, so its income values should not be interpreted as Indian rupees.

### Recommendation 2: Review Overtime and Workload Distribution

**Observation:** The recorded attrition rate is higher among employees reporting overtime.

**Proposed actions:**
- Review overtime frequency and workload distribution across teams.
- Gather employee feedback about workload and working hours.
- Identify recurring staffing shortages or uneven task allocation.
- Evaluate workload adjustments or staffing changes where evidence supports them.

**Suggested KPIs:**
- Attrition rate by overtime status.
- Percentage of employees reporting overtime.
- Employee workload or work-life balance survey scores.

**Priority:** High for further investigation.

**Measurement approach:** Establish a baseline, implement any approved workload changes, and compare subsequent measures with the baseline.

**Limitation:** The observed association does not establish that overtime caused attrition or that employees experienced burnout.

### Recommendation 3: Conduct a Sales Department Retention Review

**Observation:** Sales has the highest recorded department-level attrition rate in the initial analysis.

**Proposed actions:**
- Examine attrition by Sales job role and tenure.
- Review workload, performance expectations, incentives, and manager feedback.
- Conduct structured exit-interview and employee-feedback analysis where available.
- Identify department-specific interventions based on the evidence collected.

**Suggested KPIs:**
- Sales attrition rate.
- Attrition by Sales job role.
- Employee engagement or satisfaction scores, where available.

**Priority:** High for further investigation.

**Measurement approach:** Establish a department-level baseline and monitor changes after approved interventions.

**Limitation:** The department-level result alone does not explain the reason for attrition.

### Recommendation 4: Examine Career Progression and Promotion Patterns

**Business question:** Is attrition associated with the number of years since an employee's last promotion?

**Proposed actions:**
- Analyze attrition by promotion recency and job level.
- Review whether employees understand promotion criteria.
- Examine access to training, mentoring, and career development.
- Consider clearer career progression guidance if further analysis identifies a gap.

**Suggested KPIs:**
- Attrition rate by promotion recency.
- Internal promotion rate.
- Participation in training or career development.

**Priority:** Medium — subject to validation of the SQL results.

**Measurement approach:** Compare relevant employee groups and track progression and retention measures over time.

### Recommendation 5: Investigate Work-Life Balance Concerns

**Observation:** Employees with the lowest work-life balance rating have the highest recorded attrition rate among the rating groups in the initial analysis.

**Proposed actions:**
- Review employee feedback and work-life balance survey responses.
- Identify teams or roles reporting recurring work-life balance concerns.
- Evaluate flexible working arrangements or workload changes where appropriate.
- Monitor employee feedback after any approved changes.

**Suggested KPIs:**
- Attrition rate by work-life balance rating.
- Employee work-life balance survey results.
- Participation in approved flexibility initiatives.

**Priority:** High for further investigation.

**Measurement approach:** Establish a baseline and compare survey results and attrition measures over time.

**Limitation:** The rating is an indicator for investigation, not proof of a particular cause.

### Recommendation 6: Review Business Travel Requirements

**Business question:** Does attrition differ by business travel frequency?

**Proposed actions:**
- Compare attrition rates across travel categories.
- Gather employee feedback about travel expectations.
- Review whether travel schedules can be planned more predictably.
- Consider alternatives to travel where operationally feasible.

**Suggested KPIs:**
- Attrition rate by travel category.
- Employee feedback on travel requirements.
- Travel frequency by job role.

**Priority:** Medium — pending SQL validation.

### Recommendation 7: Examine Early-Tenure Retention

**Business question:** Are employees in particular tenure groups more likely to leave?

**Proposed actions:**
- Analyze attrition by years at the company and years in the current role.
- Review onboarding feedback and early employee experience.
- Investigate whether role expectations and training needs are clearly communicated.
- Consider a structured onboarding check-in process if evidence supports it.

**Suggested KPIs:**
- Attrition rate by tenure group.
- New-hire retention at defined milestones.
- Onboarding feedback scores.

**Priority:** Medium — requires additional tenure analysis.

**Limitation:** This recommendation is a proposed investigation, not a conclusion established by the current EDA findings.

### Recommendation 8: Develop a Regular Attrition Monitoring Dashboard

**Proposed actions:**
- Track overall attrition and department-level attrition.
- Provide breakdowns by relevant employee categories.
- Display the date or reporting period associated with each metric when available.
- Allow authorized HR stakeholders to filter and compare results.
- Review data quality and refresh procedures regularly.

**Suggested KPIs:**
- Overall recorded attrition rate.
- Attrition by department.
- Attrition by overtime status.
- Attrition by job satisfaction.
- Attrition by tenure and other validated categories.

**Priority:** High as an analytical capability, subject to stakeholder requirements.

**Measurement approach:** Confirm metric definitions with HR stakeholders, validate the dashboard against source data, and establish a regular review process.

**Privacy consideration:** Use aggregated reporting and appropriate access controls. Avoid unnecessary exposure of identifiable employee information.

## 4. Prioritization Framework

The following is a proposed order for further investigation, not a ranking of proven solutions.

| Priority | Initiative | Rationale |
|---|---|---|
| 1 | Review overtime and workload | The initial analysis shows a substantial difference in recorded attrition by overtime status |
| 2 | Investigate Sales retention | Sales has the highest recorded department attrition rate |
| 3 | Investigate work-life balance | The lowest rating group has the highest recorded attrition rate |
| 4 | Validate compensation patterns | Average monthly income differs between attrition groups |
| 5 | Examine career progression | Requires validated promotion-recency analysis |
| 6 | Review business travel | Requires validated travel-category results |
| 7 | Investigate early-tenure retention | Requires additional tenure analysis |
| 8 | Establish dashboard monitoring | Supports ongoing measurement and reporting |

The order should be revisited after reviewing the complete SQL results, business impact, implementation effort, and stakeholder feedback.

## 5. Proposed Success Measures

Before implementing any retention initiative, the business should agree on a baseline, reporting period, metric definitions, and target.

Potential measures include:

- Change in overall attrition rate.
- Change in attrition rate within selected departments.
- Change in overtime prevalence.
- Change in employee satisfaction and work-life balance scores.
- Change in new-hire retention.
- Adoption and regular use of the reporting dashboard.

A target such as reducing attrition by 15% over six months may be considered by stakeholders, but it should be treated as a proposed goal until feasibility and measurement methods are agreed upon.

The dataset alone cannot demonstrate that these recommendations will achieve a specific reduction.

## 6. Implementation and Evaluation Approach

A structured approach is recommended:

1. **Validate:** Reconcile the Excel and SQL outputs against the source dataset.
2. **Investigate:** Gather additional context for the patterns identified.
3. **Prioritize:** Assess business impact, feasibility, cost, and stakeholder needs.
4. **Pilot:** Test selected interventions on an appropriate scale where feasible.
5. **Measure:** Compare outcomes against an established baseline.
6. **Review:** Document results, limitations, and any changes needed.

Where possible, evaluation should account for changes in workforce composition and other factors that could influence attrition. A before-and-after comparison alone does not prove an intervention caused a change.

## 7. Conclusion

The initial analysis provides a starting point for investigating employee retention challenges. The recommended next steps focus on validating patterns, understanding their underlying context, and measuring outcomes before making broad policy changes.

The principal Business Analyst contribution is translating observed data patterns into structured business questions, measurable KPIs, and actionable proposals while clearly communicating the limitations of the evidence.

**Project status:** Recommendations are proposed. Their effectiveness has not yet been measured or validated.
