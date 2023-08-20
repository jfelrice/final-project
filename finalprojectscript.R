library(gtsummary)
tbl_summary(
	diabetes,
	include = everything(),
	label = list(
		pregnancy_num ~ "# of Pregnancies",
		glucose_mg-dl ~ "Glucose concentration(mg/dl)",
		dbp_mm-hg ~ "dose of theophylline(mm/hg)",
		triceps_mm ~"tricep thickness(mm)",
		insulin_microiu-ml ~ "serum insulin levels(mL)",
		bmi ~"BMI",
		pedigree ~ "Pedigree score",
		age ~ "Age(yrs)",
		diabetes_5y ~ "Diagnosis of Diabetes after 5 years"
	),
	missing_text = "Missing")

