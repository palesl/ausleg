## code to move all alrc package data to the internal data image


# opening from the raw folder
load(file = "data-raw/raw_alrc_as_made.rda")
load(file = "data-raw/raw_alrc_rels_repeals.rda")
load(file = "data-raw/raw_alrc_rels_modifications.rda")
load(file = "data-raw/raw_alrc_rels_amend_leg.rda")
load(file = "data-raw/raw_alrc_rels_enabled_by.rda")



#save the processed data in internal sysfile

usethis::use_data(raw_alrc_as_made,
                  raw_alrc_rels_repeals,
                  raw_alrc_rels_modifications,
                  raw_alrc_rels_amend_leg,
                  raw_alrc_rels_enabled_by,

                  internal = TRUE,
                  overwrite = TRUE)
