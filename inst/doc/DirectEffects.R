## ----loadpkg, echo = FALSE, include = FALSE-----------------------------------
library(DirectEffects) 

## ----data---------------------------------------------------------------------
data("jobcorps")
jc <- jobcorps[
  1:200,
  c("treat", "female", "age_cat", "work2year2q", "pemplq4", "emplq4", "exhealth30")
]

## ----aipw---------------------------------------------------------------------
my_aipw <- cde_aipw() |>
  set_treatment(treat, ~ female + age_cat) |>
  treat_model(engine = "logit") |>
  outreg_model(engine = "lm") |>
  set_treatment(work2year2q, ~ emplq4 + pemplq4) |>
  treat_model(engine = "logit") |>
  outreg_model(engine = "lm") |>
  estimate(exhealth30 ~ treat + work2year2q, data = jobcorps)

## ----summary------------------------------------------------------------------
summary(my_aipw)
tidy(my_aipw)

## ----aipw_lasso, eval = FALSE-------------------------------------------------
#  my_aipw_lasso <- cde_aipw() |>
#    set_treatment(treat, ~ female + age_cat) |>
#    treat_model(engine = "rlasso_logit") |>
#    outreg_model(engine = "rlasso") |>
#    set_treatment(work2year2q, ~ emplq4 + pemplq4) |>
#    treat_model(engine = "rlasso_logit") |>
#    outreg_model(engine = "rlasso") |>
#    estimate(exhealth30 ~ treat + work2year2q, data = jobcorps)

