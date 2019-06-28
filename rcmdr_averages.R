library("dplyr")
library(RcmdrPlugin.IPSUR)
data(RcmdrTestDrive)

#Average salary with gender
gender_salary <- RcmdrTestDrive %>%
  select(gender, salary, smoking) %>% group_by(gender) %>%  summarise(salary = mean(salary))
print(smoke_summary)

#Average salary with smoking status
smoking_salary <- RcmdrTestDrive %>%
  select(gender, salary, smoking) %>% group_by(smoking) %>%  summarise(salary = mean(salary))
#print(smoking_salary)

#SD of salary based on gender
sd_salary <- RcmdrTestDrive %>%
  select(gender, salary, smoking) %>% group_by(gender) %>%  summarise(salary = sd(salary))
print(sd_salary)

data_Female <- (filter(RcmdrTestDrive,gender %in% c("Female")))
data_Male <- (filter(RcmdrTestDrive,gender %in% c("Male")))


boxplot(data_Male$salary, data_Female$salary, ylab = "Salary",
        xlab = "Gender")
axis(1, at = 1:2, labels = c("MALE", "FEMALE"))
