public class Pi {
  public static double calculatePi(int precision) {
    double pi = 0,
        k = 1;
    for (int i = 0; i < precision; i++) {
      if (i % 2 == 0)
        pi += 4 / k;
      else
        pi -= 4 / k;
      k += 2;
    }
    return pi;
  }

  public static void main(String args[]) {
    double pi = calculatePi(1_000_000_000);
    System.out.printf("Pi = %.8f\n", pi);
  }
}
