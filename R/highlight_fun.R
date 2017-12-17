#' Apply function to highlighted text
#'
#' Highlight something and print the output of a function
#'
highlight_fun <- function(fun, ...) {
  ## Get the document context.
  context <- rstudioapi::getActiveDocumentContext()

  ## Highlighted text
  text <- context$selection[[1]]$text

  ## Function arguments
  fargs <- list(as.name(text), ...)

  ## Function call
  code <- do.call("call", c(fun, fargs), quote = TRUE)

  ## send code to console
  rstudioapi::sendToConsole(deparse(code), execute = TRUE)
}
