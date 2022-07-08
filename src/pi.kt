fun calculatePi(precision: Int): Double {
  var (pi: Double, k: Double) = Pair(0.0, 1.0)
  var max: Int = Math.pow(10.0, precision.toDouble()).toInt()
  for (i in 0..max) {
    if (i % 2 == 0) {
      pi += 4 / k
    } else {
      pi -= 4 / k
    }
    k += 2
  }
  return pi
}

fun main() {
  var pi: Double = calculatePi(9)
  println("Pi = %.8f".format(pi))
}
