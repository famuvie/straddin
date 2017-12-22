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
  fargs <- list(eval(parse(text = paste0("quote(", text, ")"))), ...)

  ## Function call
  code <- as.call(c(as.name(fun), fargs))

  ## send code to console
  rstudioapi::sendToConsole(deparse(code), execute = TRUE)
}
