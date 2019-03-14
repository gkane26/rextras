#' Return legend from ggplot object
#'
#' @param gplot ggplot object from which to get legend
#'
#' @return legend from gplot
#'
#' @import ggplot2
#' @export
g_legend<-function(gplot){
  tmp <- ggplot_gtable(ggplot_build(gplot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  legend <- tmp$grobs[[leg]]
  return(legend)
}
