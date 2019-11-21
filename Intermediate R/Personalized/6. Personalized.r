emails <- c("al161258@alumnos.uacj.mx", "ana.aguilar@uacj.mx", "mimi1698@gmail.com",
            "al158883@uacj.mx", "patito123@hotmail.com", "ximena.graver@uacj.mx")
grepl("uacj", emails)
hits <- grep("uacj", emails)
hits
emails[hits]
 
grepl("@.*\\.uacj", emails)
hits <- grep("@.*\\.uacj", emails)
hits
emails[hits]

sub("@.*\\.uacj", "@datascience.uacj", emails)

day1 <- as.Date("2019-09-18")
day2 <- as.Date("2019-10-25")
day3 <- as.Date("2019-11-01")
day4 <- as.Date("2019-11-15")
day5 <- as.Date("2019-11-21")
day5 - day1
wrote <- c(day1, day2, day3, day4, day5)
wrote
day_diff <- diff(wrote)
day_diff
mean(day_diff)

startedHW <- as.POSIXct("2019-11-20 19:18:04 UTC")
startedHW
finishedHw <- as.POSIXct("2019-11-21 3:06:29 UTC")
finishedHw
timeDoingHW <- finishedHw - startedHW
timeDoingHW