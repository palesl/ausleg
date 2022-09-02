#' get principal acts and details
#'
#' @return a tibble
#' @export
#'
#' @examples getPrincipalActs()
getPrincipalActs<- function(){
  file<-utils::read.csv("https://raw.githubusercontent.com/palesl/Federal_Register_of_Legislation_Australia/master/outputs/secure%20outputs/s_file_8_principal_acts_departments.csv")
  file$date_enacted <- as.Date(as.character(file$date_enacted),
                               format="%Y%m%d")

  file$date_repealed<- as.Date(as.character(file$date_repealed),
                               format="%Y%m%d")
  file<- dplyr::tibble(file)

  return(file)
  }

