using System;

namespace Pi
{
  class Program
  {
    static double CalculatePi(int precision)
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
    static void Main(string[] args)
    {
      double pi = CalculatePi(1000000000);
      Console.WriteLine("Pi = {0:0.00000000}", pi);
    }
  }
}
