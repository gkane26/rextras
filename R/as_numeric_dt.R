#' Convert data table with 1 row to named vector
#'
#' @param x data.table with single row
#'
#' @return named numeric vector
#'
#' @export as.numeric.dt
as.numeric.dt <- function(x) {
  vnames = names(x)
  vals = as.numeric(x)
  names(vals) = vnames
  vals
}
