#' Provide linkage data from the Australian Law Reform Commission's "Legislative relationships" datasets
#'
#' This function provides data from the Australian Law Reform Commission's
#' "Legislative relationships" datasets based on the specified relationship type.
#' The default dataset is the amending acts legislative relationships data.
#'
#' Linkages from one piece of legislation to the next may be made using the `fromId`
#' and `toId` columns (from alrc_relationship_data) and the `id` column (from
#'  alrc_as_made)
#'
#' @param rel_type A character string indicating the type of relationship data to filter.
#'                 Options are "amendments", "repeals", "enabled_by", or "modifications".
#'                 Default is "amendments".
#' @return         A filtered data object.
#' @examples
#' alrc_relationship_data(rel_type = "repeals")
#' alrc_relationship_data()
#' @export
alrc_relationship_data <- function(rel_type = "amendments") {

  # Input validation
  if (!is.character(rel_type)) {
    stop("rel_type must be a character string")
  }

  # defining global variables as null
  raw_alrc_rels_amend_leg <- raw_alrc_rels_repeals <-raw_alrc_rels_enabled_by<-
    raw_alrc_rels_modifications <-NULL

  # Filter data based on rel_type
  if (rel_type == "amendments") {
    data <- raw_alrc_rels_amend_leg

  } else if (rel_type == "repeals") {
    data <-raw_alrc_rels_repeals

  } else if (rel_type == "enabled_by") {
    data <-  raw_alrc_rels_enabled_by

  } else if (rel_type == "modifications") {
    data <- raw_alrc_rels_modifications

  } else {
    stop("Invalid rel_type. Options are 'amendments', 'repeals', 'enabled_by', or 'modifications'")
  }

  # Return the filtered data
  return(data)
}
