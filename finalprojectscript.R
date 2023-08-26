
library(gtsummary)
library(dplyr)
library(haven)

diabetes <- diabetes %>%
	rename(insulin_microiu_ml = `insulin_microiu-ml`)

tbl_summary(
	diabetes,
	label = list(
		`pregnancy_num` ~ "num of Pregnancies",
		`glucose_mg_dl` ~ "Glucose concentration (mg/dl)",
		`dbp_mm_hg` ~ "dose of theophylline (mm/hg)",
		triceps_mm ~ "tricep thickness (mm)",
		`insulin_microiu_ml` ~ "serum insulin levels (mL)",
		bmi ~ "BMI",
		pedigree ~ "Pedigree score",
		age ~ "Age (yrs)")
	)

	statistic = list(
		all_continuous() ~ "{mean} ({sd})",
		all_categorical() ~ "{n} / {N} ({p}%)",
		age ~ "{mean}"
	)

	tidy_fun = broom.helpers::tidy_parameters


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
?hist
str(diabetes)
hist(diabetes$glucose_mg_dl,
	main = "Histogram of Glucose Concentration(mg/dl)",
	xlab = "concentration(mg/dl)")

str(diabetes$glucose_mg_dl)

rangers <- function(x){
	max(x)-min(x)
}

x<- diabetes$glucose_mg_dl
x<-na.omit(x)
result<- rangers(x)
print(result)

getwd()
