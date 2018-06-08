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

VS_ijk$PreC <- 0
VS_ijk$PreC[VS_ijk$Q1 == "h.)"] <- 1
VS_ijk$PostC <- 0
VS_ijk$PostC[VS_ijk$Q10 == "h.)"] <- 1
VS_ijk$PracticeQ2 <- 0
VS_ijk$PracticeQ2[VS_ijk$Q2 == "\\(-4 \\hat{i} + 3\\hat{j}\\)"] <- 1
VS_ijk$PracticeQ2 <- 0
VS_ijk$PracticeQ2[VS_ijk$Q2 == "\\(-4 \\hat{i} + 3\\hat{j}\\)"] <- 1
VS_ijk$PracticeQ3 <- 0
VS_ijk$PracticeQ3[VS_ijk$Q3 == "\\(3 \\hat{i} + 2\\hat{j}\\)"] <- 1
VS_ijk$PracticeQ4 <- 0
VS_ijk$PracticeQ4[VS_ijk$Q4 == "\\(3 \\hat{i} + -4\\hat{j}\\)"] <- 1
VS_ijk$PracticeQ5 <- 0
VS_ijk$PracticeQ5[VS_ijk$Q5 == "\\(-4 \\hat{i} + -2\\hat{j}\\)"] <- 1
VS_ijk$TogetherQ6 <- 0
VS_ijk$TogetherQ6[VS_ijk$Q6 == "\\(3 \\hat{i} + -5\\hat{j}\\)"] <- 1
VS_ijk$TogetherQ7 <- 0
VS_ijk$TogetherQ7[VS_ijk$Q7 == "\\(4 \\hat{i} + 1\\hat{j}\\)"] <- 1
VS_ijk$TogetherQ8 <- 0
VS_ijk$TogetherQ8[VS_ijk$Q8 == "\\(-1 \\hat{i} + -6\\hat{j}\\)"] <- 1
VS_ijk$TogetherQ9 <- 0
VS_ijk$TogetherQ9[VS_ijk$Q9 == "g.)"] <- 1
