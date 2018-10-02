#' Print object structure
#'
#' Highlight something and print its structure
#'
#' @export
strAddin <- function() {
  highlight_fun("str")
}

#' Print object structure at level 0
#'
#' Highlight something and print its structure
#'
#' @export
str0Addin <- function() {
  highlight_fun("str", max.level = 0)
}

#' Print object structure at level 1
#'
#' Highlight something and print its structure
#'
#' @export
str1Addin <- function() {
  highlight_fun("str", max.level = 1)
}

#' Print object structure at level 2
#'
#' Highlight something and print its structure
#'
#' @export
str2Addin <- function() {
  highlight_fun("str", max.level = 2)
}
