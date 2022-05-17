#include <stdio.h>

int main()
{
  double pi = 0,
         k = 1;
  for (int i = 0; i < 1000000000; i++)
  {
    if (i % 2 == 0)
    {
      pi += 4 / k;
    }
    else
    {
      pi -= 4 / k;
    }
    k += 2;
  }
  printf("Pi = %.8f\n", pi);
  return 0;
}