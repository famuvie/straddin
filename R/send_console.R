#' Execute code in console
#'
#' Wrapper of \code{rstudioapi::sendToConsole}
#'
#' @param x character string. Some code to be executed.
#'
send_console <- function(x) {
  rstudioapi::sendToConsole(deparse(x), execute = TRUE)
}
