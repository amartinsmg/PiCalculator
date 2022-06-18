double calculatePi(precision) {
  double pi = 0, k = 1;
  for (var i = 0; i < precision; i++) {
    if (i % 2 == 0) {
      pi += 4 / k;
    } else {
      pi -= 4 / k;
    }
    k += 2;
  }
  return pi;
}

main() {
  double pi = calculatePi(1000000000);
  print("Pi = ${pi.toStringAsFixed(8)}");
}