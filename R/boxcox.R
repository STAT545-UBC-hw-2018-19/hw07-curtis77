#' This function applies a box cox transform to a vector.
#' Note that all entries of the vector must be strictly greater than 0.
#'
#' @param x The vector to apply the box cox transform to
#' @param lambda The parameter used to perform the transform
#' @param plot_it Display a plot of the output of the transform versus x, if set to TRUE
#'
#' @return
#' This function performs returns the box cox transform on x, using parameter lambda
#'
#' @rdname boxcox
#'
#' @export
boxcox <- function(x, lambda, plot_it = FALSE) {
    if (lambda == 0) {
        r <- log(x)
    } else {
        r <- (x^lambda - 1) / lambda
    }
    if (plot_it) {
        print(ggplot2::qplot(x, r))
    }
    return(r)
}
