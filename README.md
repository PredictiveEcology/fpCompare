# fpCompare

[![Build Status](https://travis-ci.org/PredictiveEcology/fpCompare.svg?branch=master)](https://travis-ci.org/PredictiveEcology/fpCompare)
[![Coverage Status](https://coveralls.io/repos/PredictiveEcology/fpCompare/badge.svg?branch=master)](https://coveralls.io/r/PredictiveEcology/fpCompare?branch=master)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/fpCompare)](https://CRAN.R-project.org/package=fpCompare)
[![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/fpCompare)](https://CRAN.R-project.org/package=fpCompare)
[![DOI](https://zenodo.org/badge/17892/PredictiveEcology/fpCompare.svg)](https://zenodo.org/badge/latestdoi/17892/PredictiveEcology/fpCompare)

## Reliable comparison of floating point numbers

Comparisons of floating point numbers are problematic due to errors associated with the binary representation of decimal numbers. Computer scientists and programmers are aware of these problems and yet people still use numerical methods which fail to account for floating point errors (this pitfall is the first to be highlighted in Circle 1 of Burns (2012) [The R Inferno](https://www.burns-stat.com/pages/Tutor/R_inferno.pdf)).

To avoid these and other numerical rounding issues, R's help file for relational operators (*e.g.*, `?'>'`) suggests using `identical` and `all.equal` when making numerical comparisons:

```r
x1 <- 0.5 - 0.3
x2 <- 0.3 - 0.1
x1 == x2                           # FALSE on most machines
identical(all.equal(x1, x2), TRUE) # TRUE everywhere
```

Inspired by [R FAQ 7.31](https://cran.r-project.org/doc/FAQ/R-FAQ.html#Why-doesn_0027t-R-think-these-numbers-are-equal_003f) and [this Stack Overflow answer](https://stackoverflow.com/a/2769618/1380598), this package provides new relational operators useful for performing floating point number comparisons with a set tolerance:

**`fpCompare`**[^1] | **`base`**
--------------------|-----------
`%>=%`              | `>=`
`%>>%`              | `>`
`%<=%`              | `<=`
`%<<%`              | `<`
`%==%`              | `==`
`%!=%`              | `!=`

These functions use the `base` relational operators to make comparisons, but incorporate a tolerance value (`fpCompare.tolerance`) similar to `all.equal`. The default `fpCompare.tolerance` value is `.Machine$double.eps^0.5`, set via `options`. This is the same default used in `all.equal` for numeric comparisons.

```r
# set telorance value
tol = .Machine$double.eps^0.5       # default value
options(fpCompare.tolerance = tol)

# perform comparisons
x1 <- 0.5 - 0.3
x2 <- 0.3 - 0.1
x1 == x2         # FALSE on most machines
x1 %==% x2       # TRUE everywhere
```

[^1]: The `%<<%` and `%>>%` symbols are used instead of `%<%` and `%>%` to avoid a conflict with `magrittr`'s pipe operator (`%>%`).

# Installation

## From CRAN

```r
install.packages("fpCompare")
```

## From GitHub

```r
library(devtools)
install_github("PredictiveEcology/fpCompare")
```

# Bug Reports

[https://github.com/PredictiveEcology/fpCompare/issues](https://github.com/PredictiveEcology/fpCompare/issues)
