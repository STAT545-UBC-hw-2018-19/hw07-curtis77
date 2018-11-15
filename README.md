
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Build Status](https://travis-ci.org/vincenzocoia/powers.svg?branch=master)](https://travis-ci.org/vincenzocoia/powers)

**Note**: This R package is not mean to be "serious". It's just for teaching purposes.

powers
======

This is an R package that gives `sqrt()` friends by providing other power functions.

Links to various folders in repository:
---------------------------------------

Link to folder with R files: [Link](https://github.com/STAT545-UBC-students/hw07-curtis77/tree/master/R)

Link to folder with vignette files: [Link](https://github.com/STAT545-UBC-students/hw07-curtis77/tree/master/vignettes)

Link to folder with test files: [Link](https://github.com/STAT545-UBC-students/hw07-curtis77/tree/master/tests)

References
----------

Link to original package by Vincenzo: [Link](https://github.com/vincenzocoia/powers)

Link to wiki page I referenced for box cox tranform: [Link](https://en.wikipedia.org/wiki/Power_transform#Box%E2%80%93Cox_transformation)

Installation
------------

You can install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("STAT545-UBC-students/hw07-curtis77")
```

Example
-------

See the vignette for more extensive use, but here's some examples:

``` r
powers::reciprocal(2)
#> [1] 0.5
powers::boxcox(4, 3)
#> [1] 21
```

For Developers
--------------

(Again, I don't actually intend for anyone to develop this silly package, but if I did, here's what I'd write.)

Use the internal `pow` function as the machinery for the front-end functions such as `square`, `cube`, and `reciprocal`. Use `boxcox` to perform a boxcox tranform.
