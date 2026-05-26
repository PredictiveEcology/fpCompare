# Relational operators with tolerance

Binary operators which allow the comparison of values in numeric
vectors.

## Usage

``` r
x %>=% y

x %>>% y

x %<=% y

x %<<% y

x %==% y

x %!=% y
```

## Arguments

- x:

  Any numeric object.

- y:

  Any numeric object.

## Value

A logical vector indicating the result of the element-by-element
comparison. The elements of shorter vectors are recycled as necessary.

## Details

These are similar to their counterparts in `base`, except a tolerance
`fpCompare.tolerance` can be specified via `options` to account for
floating point rounding errors:

|             |        |
|-------------|--------|
| `fpCompare` | `base` |
| `%>=%`      | `>=`   |
| `%>>%`      | `>`    |
| `%<=%`      | `<=`   |
| `%<<%`      | `<`    |
| `%==%`      | `==`   |
| `%!=%`      | `!=`   |

Inspired by R FAQ 7.31
(<https://cran.r-project.org/doc/FAQ/R-FAQ.html#Why-doesn_0027t-R-think-these-numbers-are-equal_003f>)
and this post (<https://stackoverflow.com/a/2769618/1380598>).

## See also

[`all.equal()`](https://rdrr.io/r/base/all.equal.html),
[`.Machine()`](https://rdrr.io/r/base/zMachine.html)

## Author

Alex Chubaty

## Examples

``` r
x1 <- 0.5 - 0.3
x2 <- 0.3 - 0.1
x1 == x2 ## FALSE on most machines
#> [1] FALSE
x1 %==% x2 ## TRUE everywhere
#> [1] TRUE
identical(all.equal(x1, x2), TRUE) ## TRUE everywhere
#> [1] TRUE

set.seed(123)
a <- 1:6
b <- jitter(1:6, 1e-7)
print(rbind(a, b), digits = 16)
#>                 [,1]              [,2]              [,3]              [,4]
#> a 1.0000000000000000 2.000000000000000 3.000000000000000 4.000000000000000
#> b 0.9999999915031008 2.000000011532205 2.999999996359077 4.000000015320696
#>                [,5]             [,6]
#> a 5.000000000000000 6.00000000000000
#> b 5.000000017618691 5.99999998182226

b %<=% a
#> [1]  TRUE  TRUE  TRUE FALSE FALSE  TRUE
b %<<% a
#> [1] FALSE FALSE FALSE FALSE FALSE  TRUE
b %>=% a
#> [1]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE
b %>>% a
#> [1] FALSE FALSE FALSE  TRUE  TRUE FALSE
b %==% a
#> [1]  TRUE  TRUE  TRUE FALSE FALSE FALSE
b %!=% a
#> [1] FALSE FALSE FALSE  TRUE  TRUE  TRUE
```
