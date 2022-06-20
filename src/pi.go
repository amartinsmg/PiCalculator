package main

import "fmt"

func calculatePi(precision int32) float64 {
  var pi, k float64 = 0, 1
  var i int32
  for i = 0; i < precision; i++ {
    if i%2 == 0 {
      pi += 4 / k
    } else {
      pi -= 4 / k
    }
    k += 2
  }
  return pi
}

func main() {
  var pi float64 = calculatePi(1_000_000_000)
  fmt.Printf("Pi = %.8f\n", pi)
}