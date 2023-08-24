
library(gtsummary)
library(dplyr)
library(haven)

diabetes <- diabetes %>%
	rename(glucose_mg_dl = `glucose_mg-dl`)

tbl_summary(
	diabetes,
	labels = list(
		`pregnancy_num` ~ "num of Pregnancies",
		`glucose_mg-dl` ~ "Glucose concentration (mg/dl)",
		`dbp_mm-hg` ~ "dose of theophylline (mm/hg)",
		triceps_mm ~ "tricep thickness (mm)",
		`insulin_microiu-ml` ~ "serum insulin levels (mL)",
		bmi ~ "BMI",
		pedigree ~ "Pedigree score",
		age ~ "Age (yrs)",
		diabetes_5y ~ "Diabetes"))

	statistic = list(
		all_continuous() ~ "{mean} ({sd})",
		all_categorical() ~ "{n} / {N} ({p}%)",
		age ~ "{mean}"
	)




#made descriptive table summary

logistic_model <- glm(diabetes_5y ~ glucose_mg_dl + pregnancy_num + age + bmi,
										data = diabetes, family = binomial())
#created logistic regression model
library(haven)
library(gtsummary)

# Assuming 'diabetes' is your dataset
library(gtsummary)



tbl_regression(
	logistic_model,
	exponentiate = TRUE,
	label = list(
		glucose_mg_dl ~ "Glucose concentration (mg/dl)",
		pregnancy_num ~ "Number of Pregnancies",
		age ~ "Age (yrs)",
		bmi ~ "BMI"
	),

	tidy_fun = broom.helpers::tidy_parameters	)






