#' Get Highlighted Text
#'
#' Returns the highlighted text either in the source or the console panes.
#'
#' @return
#' Character string.
get_highlighted_text <- function() {
  ## Get the document context.
  context <- rstudioapi::getActiveDocumentContext()

  ## Highlighted text
  text <- context$selection[[1]]$text

  return(text)
}
