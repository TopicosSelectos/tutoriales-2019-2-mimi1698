# 6.1 Mathematical utilities
errors <- c(1.9, -2.6, 4.0, -9.5, -3.4, 7.3)
sum(abs(round(errors)))

# 6.2 Find the error 
vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
mean(c(abs(vec1), abs(vec2)))

# 6.3 Data Utilities
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
linkedin
facebook <- list(17, 7, 5, 16, 8, 13, 14)
facebook
li_vec <- unlist(linkedin)
li_vec
fb_vec <- unlist(facebook)
fb_vec
social_vec <- append(li_vec, fb_vec)
social_vec
sort(social_vec, decreasing = TRUE)

# 6.4 Find the error 
rep(seq(1, 7, by = 2), times = 7)

# 6.5 Beat Gauss using R
seq1 <- seq(1, 500, by = 3)
seq1
seq2 <- seq(1200, 900, by = -7)
seq2
sum(seq1) + sum(seq2)

# 6.6 grepl & grep
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
grepl("edu", emails)
hits <- grep("edu", emails)
hits
emails[hits]

# 6.7 grepl & grep 
grepl("@.*\\.edu$", emails)
hits <- grep("@.*\\.edu$", emails)
hits
emails[hits]

# 6.8 sub & gsub
sub("@.*\\.edu$", "@datacamp.edu", emails)

# 6.9 sub & gsub
awards <- c("Won 1 Oscar.", "Won 1 Oscar. Another 9 wins & 24 nominations.",
            "1 win and 2 nominations.", "2 wins & 3 nominations.",
            "Nominated for 2 Golden Globes. 1 more win & 2 nominations.",
            "4 wins & 1 nomination.")
sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)

# 6.10 Right here, right now 
today <- Sys.Date()
today
unclass(today)
now <- Sys.time()
now
unclass(now)

# 6.11 Create and format dates 
str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"
date1 <- as.Date(str1, format ="%b %d, '%y")
date1
date2 <- as.Date(str2)
date2
date3 <- as.Date(str3, format = "%d/%B/%Y")
date3
format(date1, "%A")
format(date2, "%d")
format(date3, "%b %Y")

# 6.12 Create and format times
str1 <- "May 23, '96 hours:23 minutes:01 seconds:45"
str2 <- "2012-3-12 14:23:08"
time1 <- as.POSIXct(str1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
time1
time2 <- as.POSIXct(str2)
time2
format(time1, "%M")
format(time2, "%I:%M %p")

# 6.13 Calculations with Dates
day1 <- as.Date("2018-08-18")
day2 <- as.Date("2018-08-20")
day3 <- as.Date("2018-08-25")
day4 <- as.Date("2018-08-31")
day5 <- as.Date("2018-09-05")
day5 - day1
pizza <- c(day1, day2, day3, day4, day5)
pizza
day_diff <- diff(pizza)
day_diff
mean(day_diff)

# 6.14 Calculations with Times
login <- as.POSIXct("2018-08-22 10:18:04 UTC")
login
logout <- as.POSIXct("2018-08-22 10:56:29 UTC")
logout
time_online <- logout - login
time_online

# 6.15 Time is of the essence 
astro <- c("20-Mar-2015",
           "25-Jun-2015", 
           "23-Sep-2015",
           "22-Dec-2015") 
astro
meteo <- c("March 1, 15",
           "June 1, 15", 
           "September 1, 15",
           "December 1, 15") 
meteo
astro_dates <- as.Date(astro, format = "%d-%b-%Y")
astro_dates
meteo_dates <- as.Date(meteo, format = "%B %d, %y")
meteo_dates
max(abs(meteo_dates - astro_dates))