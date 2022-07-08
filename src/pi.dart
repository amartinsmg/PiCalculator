import 'dart:math';

double calculatePi(precision) {
  double pi = 0, k = 1;
  int max = pow(10, precision).toInt();
  for (var i = 0; i < max; i++) {
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
  double pi = calculatePi(9);
  print("Pi = ${pi.toStringAsFixed(8)}");
}