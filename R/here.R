#' Get directory of script
#'
#' @return the directory of the current file
#'
#' @export
here <- function() {
  args = commandArgs()
  if (args[1] == "RStudio") {
    dirname(rstudioapi::getActiveDocumentContext()$path)
  } else {
    f_ind = which(grepl("file", args))
    file.path(getwd(), dirname(gsub("--file=", "", args[f_ind])))
  }
}
