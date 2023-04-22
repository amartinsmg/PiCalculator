#include <stdio.h>
#include <math.h>

double calculatePi(int precision)
{
  double pi = 0,
         k = 1;
  int max = pow(10, precision);
  for (int i = 0; i < max; i++)
  {
    if (i % 2 == 0)
      pi += 4 / k;
    else
      pi -= 4 / k;
    k += 2;
  }
  return pi;
}

int main()
{
  double pi = calculatePi(9);
  printf("Pi = %.8f\n", pi);
  return 0;
}
