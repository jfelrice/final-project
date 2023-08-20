library(gtsummary)
tbl_summary(
	diabetes,
	include = everything(),
	statistic = list(all_continuous() ~ "{mean} ({sd})",
									 all_categorical() ~ "{n} / {N} ({p}%)"),
	label =list(
		pregnancy_num ~ " num of Pregnancies",
		glucose_mg-dl ~ "Glucose concentration(mg/dl)",
		dbp_mm-hg ~ "dose of theophylline(mm/hg)",
		triceps_mm ~"tricep thickness(mm)",
		insulin_microiu-ml ~ "serum insulin levels(mL)",
		bmi ~ "BMI",
		pedigree ~ "Pedigree score",
		age ~ "Age (yrs)",
		diabetes_5y ~ "Diabetes"),
	missing_text = ("Missing"))

tbl_summary(
	diabetes,
	statistic = list(
		all_continuous() ~ "{mean} ({sd})",
		all_categorical() ~ "{n} / {N} ({p}%)",
		age ~ "{mean}"
	),
	label = list(
		pregnancy_num ~ "num of Pregnancies",
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




traceback()
