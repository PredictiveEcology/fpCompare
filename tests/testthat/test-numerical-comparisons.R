test_that("relational operators within tolerance", {
  x <- 0.5 - 0.3
  y <- 0.3 - 0.1
  expect_true(x %==% y)
  expect_false(x %!=% y)

  set.seed(123L)
  a <- jitter(1:10, 1e-3)
  b <- jitter(1:10, 1e-3)
  lessEq    <- a %<=% b
  less      <- a %<<% b
  greaterEq <- a %>=% b
  greater   <- a %>>% b
  equal     <- a %==% b
  notEqual  <- a %!=% b
  expect_equal(less,     !greater)
  expect_equal(notEqual, !equal)

  a <- jitter(1:10, 1e-7)
  b <- jitter(1:10, 1e-7)
  lessEq     <- a %<=% b
  less       <- a %<<% b
  greaterEq  <- a %>=% b
  greater    <- a %>>% b
  equal      <- a %==% b
  notEqual   <- a %!=% b
  ids <- c(5L, 8L)
  expect_equal(less[ids],  !greater[ids])
  expect_equal(less[-ids], greater[-ids])
  expect_equal(lessEq,     !greater)
  expect_true(all(!equal[ids]))
  expect_true(all(equal[-ids]))
})
