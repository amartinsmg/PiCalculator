fun calculatePi(precision: Int): Double {
  var (s: Double, k: Double) = Pair(0.0, 1.0)
  var max: Int = Math.pow(10.0, precision.toDouble()).toInt()
  for (i in 0 until max) {
    if (i % 2 == 0) 
      s += 4 / k
    else 
      s -= 4 / k
    k += 2
  }
  return s
}

fun main() {
  var pi: Double = calculatePi(9)
  println("Pi = %.8f".format(pi))
}
