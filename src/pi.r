calculate_pi <- function(precision) {
  .pi <- 0
  k <- 1
  for (i in 0:precision) {
    if (i %% 2 == 0) {
      .pi <- .pi + 4 / k
    } else {
      .pi <- .pi - 4 / k
    }
    k <- k + 2
  }
  return(.pi)
}

.pi <- calculate_pi(1000000000)
sprintf("Pi = %.8f", .pi)
