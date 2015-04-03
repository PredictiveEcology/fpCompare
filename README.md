Master Branch: [![Build Status](https://travis-ci.org/PredictiveEcology/fpCompare.svg?branch=master)](https://travis-ci.org/PredictiveEcology/fpCompare)

Development Branch: [![Build Status](https://travis-ci.org/PredictiveEcology/fpCompare.svg?branch=development)](https://travis-ci.org/PredictiveEcology/fpCompare)

-----

# fpCompare

## Reliable comparison of floating point numbers

Comparisons of floating point numbers are problematic due to errors associated with the binary representation of decimal numbers. Computer scientists and programmers are aware of these problems and yet people still use numerical methods which fail to account for floating point errors (this pitfall is the first to be highlighted in Circle 1 of Burns (2012) [The R Inferno](http://www.burns-stat.com/pages/Tutor/R_inferno.pdf)).

To avoid these and other numerical rounding issues, R's help file for relational operators (*e.g.*, `?'>'`) suggests using `identical` and `all.equal` when making numerical comparisons:

    x1 <- 0.5 - 0.3
    x2 <- 0.3 - 0.1
    x1 == x2                           # FALSE on most machines
    identical(all.equal(x1, x2), TRUE) # TRUE everywhere

Inspired by [R FAQ 7.31](http://cran.r-project.org/doc/FAQ/R-FAQ.html#Why-doesn_0027t-R-think-these-numbers-are-equal_003f) and [this Stack Overflow answer](http://stackoverflow.com/a/2769618/1380598), this package provides four new relational operators useful for performing floating point number comparisons[^1] with a set tolerance:

- `%>=%`
- `%<=%`
- `%==%`
- `%!=%`

These functions use the `base` relational operators to make comparisons, but incorporate a tolerance value (`fpCompare.tolerance`) similar to `all.equal`. The default `fpCompare.tolerance` value is `.Machine$double.eps^0.5`, set via `options`. This is the same default used in `all.equal` for numeric comparisons.

    x1 <- 0.5 - 0.3
    x2 <- 0.3 - 0.1
    x1 == x2         # FALSE on most machines
    x1 %==% x2       # TRUE everywhere

[^1]: The `%<=%` and `%>=%` symbols are used instead of `%<%` and `%>%` to avoid a conflict with `magrittr`'s pipe operator (`%>%`).

### Installation

From CRAN: (not yet available)

    install.packages("fpCompare")

From GitHub:

    library(devtools)
    install_github("PredictiveEcology/fpCompare")

### Bug Reports

[https://github.com/PredictiveEcology/fpCompare/issues](https://github.com/PredictiveEcology/fpCompare)
