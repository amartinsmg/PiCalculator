calculate_pi <- function(precision) {
  s <- 0
  k <- 1
  max <- 10 ^ precision
  for (i in 0:(max - 1)) {
    if (i %% 2 == 0) {
      s <- s + 4 / k
    } else {
      s <- s - 4 / k
    }
    k <- k + 2
  }
  return(s)
}

val_pi <- calculate_pi(9)
sprintf("Pi = %.8f", val_pi)
