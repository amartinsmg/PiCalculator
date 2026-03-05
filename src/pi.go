package main

import (
  "fmt"
  "math"
)

func calculatePi(precision int32) float64 {
  var s, k float64 = 0, 1
  var max, i int32
  max = int32(math.Pow(10, float64(precision)))
  for i = 0; i < max; i++ {
    if i%2 == 0 {
      s += 4 / k
    } else {
      s -= 4 / k
    }
    k += 2
  }
  return s
}

func main() {
  var pi float64 = calculatePi(9)
  fmt.Printf("Pi = %.8f\n", pi)
}