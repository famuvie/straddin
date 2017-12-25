#' Apply function to highlighted text
#'
#' Highlight something and print the output of a function
#'
highlight_fun <- function(fun, ...) {

  ## Highlighted text
  text <- get_highlighted_text()

  if (nchar(text) > 0) {
    ## Function arguments
    fargs <- list(eval(parse(text = paste0("quote(", text, ")"))), ...)

    ## Function call
    code <- as.call(c(as.name(fun), fargs))

    ## send code to console
    send_console(code)
  }
}
