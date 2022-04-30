public class Pi {
  public static void main(String args[]) {
    double pi = 0,
        k = 1;
    for (int i = 0; i < 1000000000; i++) {
      if (i % 2 == 0) {
        pi += 4 / k;
      } else {
        pi -= 4 / k;
      }
      k += 2;
    }
    System.out.printf("Pi = %.8f\n", pi);
  }
}