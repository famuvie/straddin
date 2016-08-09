#' Print object structure
#'
#' Highlight something and print its structure
#'
#' @export
strAddin <- function() {
  # Get the document context.
  context <- rstudioapi::getActiveDocumentContext()

  # Highlighted text
  text <- context$selection[[1]]$text

  # str()
  code <- paste0('str(', text, ')')

  # print(str(context))

  # send code to console
  rstudioapi::sendToConsole(code, execute = TRUE)
}