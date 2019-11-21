name <- c("Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Saggitarius", "Capricorn", "Aquarius", "Pisces")
name
solarStay <- c(25, 37, 31, 20, 37, 45, 23, 7, 32, 28, 24, 38)
solarStay
brightestStar <- c("Hamal", "Aldebaran", "Pollux", "Al Tarf", "Regulus", "Spica", "Zubeneschamali", "Antares", "Kaus Australis", "Deneb Algedi", "Sadalsuud", "Eta Piscium")
brightestStar
zodiac <- data.frame(name, solarStay, brightestStar)
zodiac
class(zodiac)

str(zodiac)

zodiac[1,1]
zodiac[6,]

zodiac[1:6, "brightestStar"]

over25 <- zodiac$solarStay > 25
over25

zodiac[over25,]

subset(zodiac, subset = (solarStay > 25))

perSolarStay <- order(zodiac$solarStay)
perSolarStay
zodiac[perSolarStay, ]