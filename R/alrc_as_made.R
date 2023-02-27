#' Filter data from the Australian Law Reform Commission's "As Made Commonwealth Legislation" dataset
#'
#' This function filters data from the Australian Law Reform Commission's "As Made"
#' dataset based on the specified principal/amending and legislation type. The default
#' dataset is the full "As Made Commonwealth Legislation" dataset.
#'
#' @param prin_amend A character string indicating whether to filter by "Principal" or "Amending" acts.
#'                   Default is NULL, which does not apply this filter.
#' @param leg_type   A character string indicating the legislation type to filter by.
#'                   Options are "Acts", "Regulations", or "Other LI". Default is NULL, which does not
#'                   apply this filter.
#' @return           A filtered data object.
#' @examples
#' alrc_as_made(prin_amend = "Principal", leg_type = "Acts")
#' alrc_as_made(leg_type = "Other LI")
#' @export
alrc_as_made <- function(prin_amend = NULL, leg_type = NULL) {

  # Input validation
  if (!is.null(prin_amend) && !is.character(prin_amend)) {
    stop("prin_amend must be a character string")
  }

  if (!is.null(leg_type) && !is.character(leg_type)) {
    stop("leg_type must be a character string")
  }

  # defining global variables as null
  amendingPrincipal <- regsLis <-raw_alrc_as_made<- NULL

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

