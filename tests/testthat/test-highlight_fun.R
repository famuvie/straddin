context("highlight_fun")

test_that("multiplication works", {
  res <- with_mock(
    "get_highlighted_text" = function() return("'highlighted text'"),
    highlight_fun("cat")
  )
})
