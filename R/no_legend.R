#' Return ggplot object without legend
#'
#' @param gplot ggplot object from which to remove legend
#'
#' @return ggplot without legend
#'
#' @import ggplot2
#' @export
no_legend = function(gplot){
  gplot+theme(legend.position="none")
}
