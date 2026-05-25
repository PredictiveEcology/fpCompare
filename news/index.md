# Changelog

## fpCompare v0.2.6

- minimum R version raised to 4.1 to match current dependency
  requirements
- drop support for R 3.5 due to updates in dependency packages
- relational operators now fall back to the default tolerance
  (`sqrt(.Machine$double.eps)`) if `options(fpCompare.tolerance)` is
  unset
- package infrastructure modernized (testthat 3 edition, pkgdown 2,
  refreshed GitHub Actions workflows)

## fpCompare v0.2.5

- drop support for R 3.4 due to updates in dependency packages
- updated copyright holder information

## fpCompare v0.2.4

CRAN release: 2022-08-15

- drop support for R 3.3 which is no longer available

## fpCompare v0.2.3

CRAN release: 2019-09-10

- drop support for very old versions of R (3.1 and 3.2) due to
  dependency requirements

## fpCompare v0.2.2

CRAN release: 2018-06-12

- update maintainer’s email address

## fpCompare v0.2.1

CRAN release: 2015-09-01

- update maintainer’s email address
- use HTTPS for CRAN urls
- improved vignette formatting (use
  [`rmarkdown::render`](https://pkgs.rstudio.com/rmarkdown/reference/render.html))

## fpCompare v0.2.0

CRAN release: 2015-05-16

- add `%<<%` and `%>>%` operators (‘less than’; ‘greater than’)

- move `cph` to end of the author field so `aut` displays as first name
  on CRAN

- fix bug report url in documentation

- improved documentation and formatting:

  - use short urls to avoid links spilling into margins

## fpCompare v0.1.0

CRAN release: 2015-04-03

- initial version

- adds new numeric relational operators that do comparisons using a
  tolerance value:

  - `%>=%`, `%<=%`, `%==%`, `%!=%`

- use `options(fpCompare.tolerance = value)` to set tolerance
