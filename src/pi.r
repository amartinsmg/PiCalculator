calculate_pi <- function(precision) {
  .pi <- 0
  k <- 1
  max <- 10 ^ precision
  for (i in 0:max) {
    if (i %% 2 == 0) {
      .pi <- .pi + 4 / k
    } else {
      .pi <- .pi - 4 / k
    }
    k <- k + 2
  }
  return(.pi)
}

.pi <- calculate_pi(9)
sprintf("Pi = %.8f", .pi)
