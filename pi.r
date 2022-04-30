p <- 0
k <- 1

for (i in 0:999999999) {
  if (i %% 2 == 0) {
    p <- p + 4 / k
  } else {
    p <- p - 4 / k
  }
  k <- k + 2
}

sprintf("Pi = %.8f", p)