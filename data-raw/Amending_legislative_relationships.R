## code to prepare amending legislative relationships data from raw

# input from shared folder and storage in Raw ####
library(readxl);library(dplyr)



# opening from the raw folder

Amending_legislative_relationships <- read_excel("data-raw/Amending-legislative-relationships.xlsx",
                                                 sheet = "Data")

# saving ####

raw_alrc_rels_amend_leg <-as_tibble(Amending_legislative_relationships)

#save the processed data in raw data folder
save(raw_alrc_rels_amend_leg, file="data-raw/raw_alrc_rels_amend_leg.rda")
