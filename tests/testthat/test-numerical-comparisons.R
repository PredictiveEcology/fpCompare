test_that("operators agree within tolerance for trivial floating-point errors", {
  x <- 0.5 - 0.3
  y <- 0.3 - 0.1

  expect_equal(x %==% y, TRUE)
  expect_equal(x %!=% y, FALSE)
  expect_equal(x %<=% y, TRUE)
  expect_equal(x %>=% y, TRUE)
  expect_equal(x %<<% y, FALSE)
  expect_equal(x %>>% y, FALSE)
})

test_that("operators are consistent across vectorized inputs (coarse jitter)", {
  set.seed(123L)
  a <- jitter(1:10, 1e-3)
  b <- jitter(1:10, 1e-3)

  expect_equal(a %<<% b, !(a %>=% b))
  expect_equal(a %>>% b, !(a %<=% b))
  expect_equal(a %!=% b, !(a %==% b))
})

test_that("values within tolerance compare equal; values outside do not", {
  tol <- sqrt(.Machine$double.eps)
  inside <- c(0, tol / 2, -tol / 2)
  outside <- c(2 * tol, -2 * tol, 1)

  expect_equal(0 %==% inside, rep(TRUE, length(inside)))
  expect_equal(0 %==% outside, rep(FALSE, length(outside)))
  expect_equal(0 %<<% outside, c(TRUE, FALSE, TRUE))
  expect_equal(0 %>>% outside, c(FALSE, TRUE, FALSE))
})

test_that("operators recycle shorter vectors", {
  expect_equal(c(1, 2, 3) %==% 1, c(TRUE, FALSE, FALSE))
  expect_equal(c(1, 2, 3) %<=% 2, c(TRUE, TRUE, FALSE))
})

test_that("operators propagate NA and handle Inf", {
  expect_equal(NA_real_ %==% 1, NA)
  expect_equal(1 %==% NA_real_, NA)
  expect_equal(Inf %>>% 1, TRUE)
  expect_equal(-Inf %<<% 1, TRUE)
  expect_equal(Inf %==% Inf, NA)
})

test_that("custom fpCompare.tolerance is respected", {
  withr::local_options(fpCompare.tolerance = 1)

  expect_equal(1 %==% 1.5, TRUE)
  expect_equal(1 %==% 2.5, FALSE)
})

test_that("operators fall back to default when option is unset", {
  withr::local_options(fpCompare.tolerance = NULL)

  expect_equal((0.5 - 0.3) %==% (0.3 - 0.1), TRUE)
})
