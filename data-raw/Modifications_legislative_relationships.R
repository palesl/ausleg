## code to prepare Modifications legislative relationships ...

# input from shared folder and storage in Raw ####
library(readxl);library(dplyr)



# opening from the raw folder

alrc_rels_modifications <- read_excel("data-raw/Modifications-legislative-relationships.xlsx",
                                      sheet = "Data")



# saving ####

raw_alrc_rels_modifications <-as_tibble(alrc_rels_modifications)

#save the processed data in raw data folder
save(raw_alrc_rels_modifications, file="data-raw/raw_alrc_rels_modifications.rda")

