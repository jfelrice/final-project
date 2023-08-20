
library(gtsummary)
library(dplyr)
library(haven)
# Assuming 'diabetes' is your dataset
diabetes <- diabetes %>%
	rename(glucose_mg_dl = `glucose_mg-dl`)

tbl_summary(
	diabetes,
	statistic = list(
		all_continuous() ~ "{mean} ({sd})",
		all_categorical() ~ "{n} / {N} ({p}%)",
		age ~ "{mean}"
	),
	labels = list(
		`pregnancy_num` ~ "num of Pregnancies",
		`glucose_mg-dl` ~ "Glucose concentration (mg/dl)",
		`dbp_mm-hg` ~ "dose of theophylline (mm/hg)",
		triceps_mm ~ "tricep thickness (mm)",
		`insulin_microiu-ml` ~ "serum insulin levels (mL)",
		bmi ~ "BMI",
		pedigree ~ "Pedigree score",
		age ~ "Age (yrs)",
		diabetes_5y ~ "Diabetes"
	),
	missing_text = "Missing"
)

#made descriptive table summary

logistic_model <- glm(diabetes_5y ~ glucose_mg_dl + pregnancy_num
											+ age + bmi,
											data = diabetes, family = binomial())
#created logistic regression model
library(haven)
library(gtsummary)

# Assuming 'diabetes' is your dataset
library(gtsummary)

tbl_regression(
	logistic_model,
	exponentiate = TRUE,
	labels= list(
		diabetes_5y ~ "Diabetes",
		glucose_mg_dl ~ "Glucose concentration (mg/dl)",
		pregnancy_num ~ "Number of Pregnancies",
		age ~ "Age",
		bmi ~ "BMI")
	)


library(gtsummary)
library(broom)
library(broom.helpers)
library(gt)
tbl_regression(
	logistic_model,
	exponentiate = TRUE,
	labels=list(
		diabetes_5y ~ "Diabetes"))



