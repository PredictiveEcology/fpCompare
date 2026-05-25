#' Relational operators with tolerance
#'
#' Binary operators which allow the comparison of values in numeric vectors.
#'
#' These are similar to their counterparts in `base`, except a tolerance
#' `fpCompare.tolerance` can be specified via `options` to account for floating
#' point rounding errors:
#'
#' | `fpCompare` | `base` |
#' |-------------|--------|
#' | `%>=%`      | `>=`   |
#' | `%>>%`      | `>`    |
#' | `%<=%`      | `<=`   |
#' | `%<<%`      | `<`    |
#' | `%==%`      | `==`   |
#' | `%!=%`      | `!=`   |
#'
#' Inspired by R FAQ 7.31
#' (<https://cran.r-project.org/doc/FAQ/R-FAQ.html#Why-doesn_0027t-R-think-these-numbers-are-equal_003f>)
#' and this post (<https://stackoverflow.com/a/2769618/1380598>).
#'
#' @param x Any numeric object.
#' @param y Any numeric object.
#'
#' @return A logical vector indicating the result of the element-by-element
#'   comparison. The elements of shorter vectors are recycled as necessary.
#'
#' @seealso [all.equal()], [.Machine()]
#'
#' @export
#' @rdname relational-operators
#'
#' @author Alex Chubaty
#'
#' @example inst/examples/examples.R
#'
`%>=%` <- function(x, y) {
  x + fp_tolerance() > y
}

#' @export
#' @rdname relational-operators
`%>>%` <- function(x, y) {
  x - fp_tolerance() > y
}

#' @export
#' @rdname relational-operators
`%<=%` <- function(x, y) {
  x < y + fp_tolerance()
}

#' @export
#' @rdname relational-operators
`%<<%` <- function(x, y) {
  x < y - fp_tolerance()
}

#' @export
#' @rdname relational-operators
`%==%` <- function(x, y) {
  abs(x - y) < fp_tolerance()
}

#' @export
#' @rdname relational-operators
`%!=%` <- function(x, y) {
  abs(x - y) > fp_tolerance()
}

fp_tolerance <- function() {
  getOption("fpCompare.tolerance", default = sqrt(.Machine$double.eps))
}
