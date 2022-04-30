using System;

namespace Pi
{
  class Program
  {
    static void Main(string[] args)
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
      Console.WriteLine(string.Format("Pi = {0:0.00000000}", pi));
    }
  }
}
