#include <stdio.h>

double calculatePi(int precision)
{
  double pi = 0,
         k = 1;
  for (int i = 0; i < precision; i++)
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
  double const PI = calculatePi(1000000000);
  printf("Pi = %.8f\n", PI);
  return 0;
}
