library(readr)
VS1_20180517_1420_cleaned <- read_csv("VS1_20180517_1420_cleaned_noduplicates.csv",
col_types = cols(DistributionChannel = col_skip(),
EndDate = col_datetime(format = "%Y-%m-%d %H:%M:%S"),
ExternalReference = col_skip(), Finished = col_factor(levels = c("True",
"False")), RecipientEmail = col_skip(), Q1 = col_factor(levels =c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")), Q9 = col_factor(levels =c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")), Q10 = col_factor(levels =c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")),
RecipientFirstName = col_skip(),
RecipientLastName = col_skip(), ResponseId = col_skip(),
StartDate = col_datetime(format = "%Y-%m-%d %H:%M:%S"),
UserLanguage = col_skip()))

VSA_20180517_1419_cleaned <- read_csv("VSA_20180517_1419_cleaned_noduplicates.csv",
col_types = cols(DistributionChannel = col_skip(),
EndDate = col_datetime(format = "%Y-%m-%d %H:%M:%S"),
ExternalReference = col_skip(), Finished = col_factor(levels = c("True",
"False")), RecipientEmail = col_skip(), Q1 = col_factor(levels =c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")), Q2 = col_factor(levels =c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")), Q3 = col_factor(levels =c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")), Q2 = col_factor(levels =c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")), Q4 = col_factor(levels =c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")), Q5 = col_factor(levels =c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")), Q6 = col_factor(levels =c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")), Q7 = col_factor(levels =c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")), Q8 = col_factor(levels =c("a.)","b.)","c.)","d.)","e.)","f.)","g.)","h.)")),
RecipientFirstName = col_skip(),
RecipientLastName = col_skip(), ResponseId = col_skip(),
StartDate = col_datetime(format = "%Y-%m-%d %H:%M:%S"),
UserLanguage = col_skip()))

