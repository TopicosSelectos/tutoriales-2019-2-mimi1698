basicSemesters <- c("First", "First", "Third", "Second", "Second")
basicSemesters
factorBasicSemesters <- factor(basicSemesters)
factorBasicSemesters

flowers <- c("Daisy", "Rose", "Sunflower", "Orchid")
flowers
class(flowers)
factorFlowers <- factor(flowers)
factorFlowers
degreeLevel <- c("Bachelor", "Master", "Doctorate", "Master", "Bachelor")
degreeLevel
factorDegreeLevel <- factor(degreeLevel, order = TRUE, levels = c("Bachelor", "Master", "Doctorate"))
factorDegreeLevel

surveyBasicSemester <- c("F", "T", "S", "S", "T")
surveyBasicSemester
factorSurvey <- factor(surveyBasicSemester)
factorSurvey
levels(factorSurvey) <- c("First", "Second", "Third")
factorSurvey

summary(surveyBasicSemester)
summary(factorSurvey)

firstSem <- factorSurvey[1]
firstSem
secondSem <- factorSurvey[3]
secondSem
firstSem > secondSem

factorDegreeLevel <- factor(degreeLevel, ordered = TRUE, levels = c("Bachelor", "Master", "Doctorate"))
factorDegreeLevel
summary(factorDegreeLevel)
 
p2 <- factorDegreeLevel[2]
p2
p5 <- factorDegreeLevel[5]
p5
p2 > p5
