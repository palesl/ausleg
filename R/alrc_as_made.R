#' Filter data from the Australian Law Reform Commission's "As Made Commonwealth Legislation" dataset
#'
#' This function filters data from the Australian Law Reform Commission's
#' "As Made Commonwealth Legislation" dataset based on the specified
#' principal/amending and legislation type. The default is the full "As Made" dataset.
#'
#' @param prin_amend A character string indicating whether to filter by "Principal" or "Amending" acts.
#'                   Default is NULL, which does not apply this filter.
#' @param leg_type   A character string indicating the legislation type to filter by.
#'                   Options are "Acts", "Regulations", or "Other LI". Default is NULL, which does not
#'                   apply this filter.
#' @return           A tibble.
#' @examples
#' alrc_as_made(prin_amend = "Principal", leg_type = "Acts")
#' alrc_as_made(leg_type = "Other LI")
#' @export
alrc_as_made <- function(prin_amend = NULL, leg_type = NULL) {

  # Input validation

  if (!is.null(prin_amend) && !(prin_amend=="Principal" |
                               prin_amend=="Amending")) {
    stop("Invalid prin_amend. Options are 'Principal' or 'Amending'")
  }

  if (!is.null(leg_type) && !(leg_type=="Acts" |
                             leg_type=="Regulations" |
                             leg_type=="Other LI")) {
    stop("Invalid leg_type. Options are 'Acts', 'Regulations' or 'Other LI'")
  }

  # defining global variables as null
  amendingPrincipal <- regsLis <- NULL

  # bring in data

  data <- raw_alrc_as_made

  # Filter data based on prin_amend and leg_type
  if (!is.null(prin_amend)) {
    data <- subset(data, amendingPrincipal == prin_amend)
  }

  if (!is.null(leg_type)) {
    data <- subset(data, regsLis == leg_type)
  }

  # Return the modified data
  return(data)
}

