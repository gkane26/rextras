#' Restrict statistics by number of observations
#'
#' @name restrict_statistics
#' @param x numeric vector; observations
#' @param n integer; number of observations to consider valid sample
#' @param ... arguments passed to main function (e.g. NA.rm)
#'
#' @return result of call
#'
#' @export
meanr <- function(x, n=5, ...) {
  if (length(x) > n) mean(x, ...) else NaN
}

#' @rdname restrict_statistics
#' @export
medianr = function(x, n=5, ...) {
  if (length(x) > n) median(x, ...) else NaN
}

#' @rdname restrict_statistics
#' @export
mean_ser = function(x, n=5, ...) {
  sdx = ifelse(length(x) > n, sd(x, ...), NaN)
  meanx = meanr(x, n, ...)
  sterr = sdx / sqrt(length(x))
  data.frame(ymin=meanx-sterr, y=meanx, ymax=meanx+sterr)
}
