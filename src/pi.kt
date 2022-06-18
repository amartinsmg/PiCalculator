fun calculatePi(precision:Int):Double {
  var pi: Double = 0.0
  var k: Double = 1.0
  for (i in 0..precision) {
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
  var pi: Double = calculatePi(1_000_000_000)
  println("Pi = %.8f".format(pi))
}