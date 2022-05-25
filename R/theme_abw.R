#' Custom ggplot theme, a modified theme_bw
#'
#' @param big_font int, default=12; axis and legend title font size
#' @param small_font int, default=10; axis markings and legend item font size
#' @param grid logical, default=FALSE; display gridlines?
#' @param x_adjust numeric, default=-0.05; placement of x axis title
#' @param y_adjust numeric, default=1; placement of y axis title
#' @param x_angle numeric, default=0; angle of x axis markings
#' @param legend logical, default=TRUE; display legend?
#'
#' @return custom ggplot theme object
#'
#' @import ggplot2
#' @export
theme_abw <- function(big_font=14,
                      small_font=12,
                      grid=F,
                      x_adjust=-0.5,
                      y_adjust=2,
                      x_angle=0,
                      legend=T,
                      background=F,
                      ...){
  if(x_angle > 0) x_hjust=1 else x_hjust=.5

  t = theme_bw() +
    theme(axis.title.x = element_text(size = big_font, vjust = x_adjust),
          axis.title.y = element_text(size = big_font, vjust = y_adjust),
          axis.text = element_text(size = small_font),
          axis.text.x = element_text(angle = x_angle, hjust = x_hjust),
          legend.title = element_text(size = small_font),
          legend.text = element_text(size = small_font),
          strip.background = element_rect(fill = NA, color = NA),
          strip.text = element_text(size = small_font),
          title = element_text(size = big_font),
          plot.title = element_text(size = big_font, hjust = 0.5))

  if(!grid) t = t + theme(panel.grid = element_blank())

  if(!legend) t = t + theme(legend.position = "none")

  if(!background) t = t + theme(legend.background = element_blank(),
                                legend.box.background = element_blank(),
                                panel.background = element_blank(),
                                plot.background = element_blank(),
                                strip.background.x = element_blank(),
                                strip.background.y = element_blank())

  t = t + theme(...)

  return(t)
}
