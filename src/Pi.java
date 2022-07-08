public class Pi {
  public static double calculatePi(int precision) {
    double pi = 0,
        k = 1;
    int max = (int) Math.pow(10, precision);
    for (int i = 0; i < max; i++) {
      if (i % 2 == 0)
        pi += 4 / k;
      else
        pi -= 4 / k;
      k += 2;
    }
    return pi;
  }

  public static void main(String[] args) {
    double pi = calculatePi(9);
    System.out.printf("Pi = %.8f\n", pi);
  }
}
