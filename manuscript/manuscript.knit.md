---
title: "Effect of Chalk on Hangtime"
output: github_document
date: '20 January, 2026'
bibliography: references.bib
knit: worcs::cite_all
---



This manuscript uses the Workflow for Open Reproducible Code in Science [@vanlissaWORCSWorkflowOpen2021] to ensure reproducibility and transparency. All code <!--and data--> are available at <demo_worcs2>.

This is an example of a non-essential citation [@@vanlissaWORCSWorkflowOpen2021]. If you change the rendering function to `worcs::cite_essential`, it will be removed.

<!--The function below inserts a notification if the manuscript is knit using synthetic data. Make sure to insert it after load_data().-->


## Results


Table: Regression coefficients for planned contrasts for the effect of chalk on hangtime.

|                       | Estimate| Std. Error| t value| Pr(>&#124;t&#124;)|
|:----------------------|--------:|----------:|-------:|------------------:|
|(Intercept)            |    25.15|       1.10|   22.94|               0.00|
|conditionnoVchalk      |     0.44|       1.34|    0.33|               0.74|
|conditionliquidVsolid  |    -0.25|       2.14|   -0.12|               0.91|
|conditionpowderVball   |     0.92|       1.62|    0.57|               0.57|
|conditionnothingVshirt |     2.80|       1.72|    1.63|               0.11|

We find that using chalk has a non-significant effect on hang time, $t = 0.33, p = 0.74$.

![](manuscript_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

