library(readr)

letterResponseLevels = c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")
dateTimeFormat = "%Y-%m-%d %H:%M:%S"

VS_ijk <- read_csv("VS1_20180517_1420_R.csv",
col_types = cols(EndDate = col_datetime(format = dateTimeFormat), Finished = col_factor(levels = c("True",
"False")), Q1 = col_factor(levels = letterResponseLevels), Q9 = col_factor(levels = letterResponseLevels), Q10 = col_factor(levels = letterResponseLevels),
StartDate = col_datetime(format = dateTimeFormat),
UserLanguage = col_skip()))

VS_arrow <- read_csv("VSA_20180517_1419_R.csv",
col_types = cols(EndDate = col_datetime(format = dateTimeFormat),
Finished = col_factor(levels = c("True",
"False")), Q1 = col_factor(levels = letterResponseLevels), Q2 = col_factor(levels = letterResponseLevels), Q3 = col_factor(levels = letterResponseLevels), Q2 = col_factor(levels = letterResponseLevels), Q4 = col_factor(levels = letterResponseLevels), Q5 = col_factor(levels = letterResponseLevels), Q6 = col_factor(levels = letterResponseLevels), Q7 = col_factor(levels = letterResponseLevels), Q8 = col_factor(levels = letterResponseLevels),
StartDate = col_datetime(format = dateTimeFormat),
UserLanguage = col_skip()))


# Add on columns indicating if each of the questions is correct, "1" for correct and "0" for incorrect

VS_arrow$PreC <- 0
VS_arrow$PreC[VS_arrow$Q1 == "h.)"] <- 1
VS_arrow$PostC <- 0
VS_arrow$PostC[VS_arrow$Q8 == "h.)"] <- 1
VS_arrow$PracticeQ2C <- 0
VS_arrow$PracticeQ2C[VS_arrow$Q2 == "g.)"] <- 1
VS_arrow$PracticeQ3C <- 0
VS_arrow$PracticeQ3C[VS_arrow$Q3 == "c.)"] <- 1
VS_arrow$PracticeQ4C <- 0
VS_arrow$PracticeQ4C[VS_arrow$Q4 == "f.)"] <- 1
VS_arrow$PracticeQ5C <- 0
VS_arrow$PracticeQ5C[VS_arrow$Q5 == "e.)"] <- 1
VS_arrow$TogetherQ6C <- 0
VS_arrow$TogetherQ6C[VS_arrow$Q6 == "c.)"] <- 1
VS_arrow$TogetherQ7C <- 0
VS_arrow$TogetherQ7C[VS_arrow$Q7 == "g.)"] <- 1
