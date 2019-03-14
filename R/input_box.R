#' Open an input box
#'
#' @param message message to display to user
#'
#' @return use input as string
#'
#' @export
input_box<-function(message=""){
  input=svDialogs::dlgInput(message=message, gui=.GUI)$res
  input=tail(strsplit(input,split=":")[[1]],1)
  return(input)
}
