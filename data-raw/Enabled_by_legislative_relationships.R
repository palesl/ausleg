## code to prepare Enabled by legislative relationships...

# input from shared folder and storage in Raw ####
library(readxl);library(dplyr)



# opening from the raw folder

alrc_rels_enabled_by <- read_excel("data-raw/Enabled-by-legislative-relationships.xlsx",
                                   sheet = "Data")



# saving ####

raw_alrc_rels_enabled_by <-as_tibble(alrc_rels_enabled_by)

#save the processed data in raw data folder
save(raw_alrc_rels_enabled_by, file="data-raw/raw_alrc_rels_enabled_by.rda")
