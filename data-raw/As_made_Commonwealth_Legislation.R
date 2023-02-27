## code to prepare As made commonwealth legislation...

# input from shared folder and storage in Raw ####
library(readxl);library(dplyr)



# opening from the raw folder

alrc_as_made <- read_excel("data-raw/As-made-Commonwealth-Legislation.xlsx",
                                               sheet = "Data", col_types = c("text",
                                                                             "text", "text", "text", "text", "text",
                                                                             "text", "text", "text", "text", "text",
                                                                             "text", "text", "text", "text", "text",
                                                                             "text", "date", "text", "text", "text",
                                                                             "numeric", "numeric", "text", "text",
                                                                             "text", "text", "numeric", "numeric",
                                                                             "numeric", "text", "text", "text",
                                                                             "text", "text", "numeric", "numeric",
                                                                             "numeric", "numeric", "text", "date"),
                                               na = "NA")

# making date chars into actual dates...
alrc_as_made$legDate<-as.Date(alrc_as_made$legDate)

alrc_as_made$registrationDate<-lubridate::dmy(alrc_as_made$registrationDate)

alrc_as_made$assent<-lubridate::dmy(alrc_as_made$assent)
alrc_as_made$gazettal<-lubridate::dmy(alrc_as_made$gazettal)


alrc_as_made$repealDate<-lubridate::dmy(alrc_as_made$repealDate)

alrc_as_made$originalSunsetDate<-lubridate::dmy(alrc_as_made$originalSunsetDate)

alrc_as_made$firstNewSunsetDate<-lubridate::dmy(alrc_as_made$firstNewSunsetDate)

alrc_as_made$tablingOneDate<-lubridate::dmy(alrc_as_made$tablingOneDate)
alrc_as_made$tablingTwoDate<-lubridate::dmy(alrc_as_made$tablingTwoDate)



# removing blanks

alrc_as_made<-alrc_as_made|>select(-startDate, -endDate, -secondNewSunsetDate,
                                   -thirdNewSunsetDate,-fourthNewSunsetDate,
                                   -parliamentDate)


# saving ####

raw_alrc_as_made <-as_tibble(alrc_as_made)

#save the processed data in raw data folder
save(raw_alrc_as_made, file="data-raw/raw_alrc_as_made.rda")
