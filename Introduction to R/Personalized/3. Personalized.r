salary <- c(15000, 20000, 15000, 15000, 18000, 20000)
moneyUsed <- c(16000, 15000, 10000, 20000, 10000, 15000)

names(salary) <- c("January", "February", "March", "April", "May", "June")
names(moneyUsed) <- c("January", "February", "March", "April", "May", "June")

salary
moneyUsed

totalPerMonth <- salary - moneyUsed
totalPerMonth

totalSalary6Months <- sum(salary)
totalUsed6Months <- sum(moneyUsed)
totalSalary6Months
totalUsed6Months

totalSalary6Months > totalUsed6Months

salaryJune <- salary[6]
salaryJune

salaryFirst3Months <- salary[c(1, 2, 3)]
salaryFirst3Months

salaryLast3Months <- salary[c("April", "May", "June")]
salaryLast3Months
mean(salaryLast3Months)

bonusSalaryMonths <- salary > 15000
bonusSalaryMonths

moreMoneyMonths <- salary[bonusSalaryMonths]
moreMoneyMonths

lessMoneyUsedMonths <- moneyUsed < 15000 
lessMoneyUsedMonths

savedMoneyMonths <- moneyUsed[lessMoneyUsedMonths]
savedMoneyMonths