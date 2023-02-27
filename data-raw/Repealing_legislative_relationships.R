## code to prepare Repealing legislative relationships ...

# input from shared folder and storage in Raw ####
library(readxl);library(dplyr)

# opening from the raw folder

alrc_rels_repeals <-  read_excel("data-raw/Repealing-legislative-relationships.xlsx",
                                 sheet = "Data")

# saving ####

raw_alrc_rels_repeals <-as_tibble(alrc_rels_repeals)

#save the processed data in raw data folder
save(raw_alrc_rels_repeals, file="data-raw/raw_alrc_rels_repeals.rda")
