context("Applying box cox inverse")

test_that("Test using lambda equal to 0", {
    vec <- c(1, 2, 3)
    expect_equal(boxcox(vec, 0), c(0, log(2), log(3)))
})

test_that("Test using lambda greater than 0", {
    vec <- c(1, 2, 3)
    expect_equal(boxcox(vec, 2), c(0, 3/2, 4))
})

test_that("Test using lambda less than 0", {
    vec <- c(1, 2, 3)
    expect_equal(boxcox(vec, -1), c(0, 1/2, 2/3))
})
