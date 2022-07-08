package main

import (
  "fmt"
  "math"
)

func calculatePi(precision int32) float64 {
  var pi, k float64 = 0, 1
  var max, i int32 = int32(math.Pow(10, float64(precision))), 0
  for ; i < max; i++ {
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
  var pi float64 = calculatePi(9)
  fmt.Printf("Pi = %.8f\n", pi)
}