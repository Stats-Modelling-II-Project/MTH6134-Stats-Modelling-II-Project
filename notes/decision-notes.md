# Decision Notes
## Week 4 – Binomial Logistic Regression

### Research Question
Is training intensity associated with injury probability among football players in the Midland Premier League 2023/24?

### Model Selection
Selected binomial logistic regression because the response variable, `injured`, is binary (1 = injured, 0 = not injured).

- Response variable: injured
- Explanatory variable: training_load (scored from 1 to 5)
- Model: injured ~ training_load
- Link function: Logit

### Hypotheses
**Null hypothesis (H₀): β₁ = 0** There is no association between training intensity and the odds of injury.

**Alternative hypothesis (H₁): β₁ ≠ 0** There is an association between training intensity and the odds of injury.

### Results
The estimated coefficient for training intensity was 0.3513, with a Wald test p-value of 0.00083.
Since p < 0.05, we reject the null hypothesis of no association between training intensity and injury probability.
The odds ratio was 1.4209, indicating that each one-unit increase in training intensity is associated with approximately 42.1% higher odds of injury.
The fitted probability plot also shows an increasing estimated probability of injury as training intensity increases.

### Decision
We used the initial logistic regression model for this Week 4 investigation because it was appropriate for the binary injury outcome. Training intensity showed a statistically significant positive association with injury probability.
This analysis establishes an association, not necessarily a causal relationship. Further model checking will be considered in Week 5.

### Models Discarded
No alternative models have been fitted or discarded at this stage.
