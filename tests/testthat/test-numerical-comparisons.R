test_that("relational operators within tolerance", {
  x <- .5-.3
  y <- .3-.1
  expect_that(x %==% y, testthat::equals(TRUE))
  expect_that(x %!=% y, testthat::equals(FALSE))

  set.seed(123L)
  a <- jitter(1:10, 1e-3)
  b <- jitter(1:10, 1e-3)
  less.eq    <- a %<=% b
  less       <- a %<<% b
  greater.eq <- a %>=% b
  greater    <- a %>>% b
  equal      <- a %==% b
  notequal   <- a %!=% b
  expect_that(less,     testthat::equals(!greater))
  expect_that(notequal, testthat::equals(!equal))

  a <- jitter(1:10, 1e-7)
  b <- jitter(1:10, 1e-7)
  less.eq    <- a %<=% b
  less       <- a %<<% b
  greater.eq <- a %>=% b
  greater    <- a %>>% b
  equal      <- a %==% b
  notequal   <- a %!=% b
  ids <- c(5L,8L)
  expect_that(less[ids],        testthat::equals(!greater[ids]))
  expect_that(less[-ids],       testthat::equals(greater[-ids]))
  expect_that(less.eq,          testthat::equals(!greater))
  expect_that(all(!equal[ids]), testthat::equals(TRUE))
  expect_that(all(equal[-ids]), testthat::equals(TRUE))
})
