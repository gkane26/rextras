#' Convert factor to numeric
#'
#' @param x factor vector
#'
#' @return numeric vector
#'
#' @export as.numeric.factor
as.numeric.factor <- function(x) {
  as.numeric(levels(x)[x])
}
