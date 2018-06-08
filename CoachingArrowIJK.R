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

