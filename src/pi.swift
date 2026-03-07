import Foundation

func calculatePi(precision: Int) -> Double {
  var s = 0.0, k = 1.0
  let max = Int(pow(10.0, Double(precision)))
  for i in 0..<max {
    if i % 2 == 0 {
      s += 4 / k
    } else {
      s -= 4 / k
    }
    k += 2
  }
  return s
}

var pi = calculatePi(precision: 9)
print(String(format: "Pi = %.8f", pi))
