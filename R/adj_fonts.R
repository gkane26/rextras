#' Adjust font sizes of ggplot object
#'
#' @param big int, default=12; axis and legend title font size
#' @param small int, default=10; axis markings and legend item font size
#'
#' @return ggplot theme object to adjust fonts
#'
#' @import ggplot2
#' @export
adj_fonts<-function(big=12, small=10){
  t=theme(axis.title=element_text(size=big)
          ,axis.text=element_text(size=small))

  t=t+theme(legend.title=element_text(size=small)
            ,legend.text=element_text(size=small))
  return(t)
}
