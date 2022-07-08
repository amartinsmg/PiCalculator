#!/bin/perl

sub calculate_pi
{
  $precision = $_[0];
  $pi = 0.0;
  $k = 1.0;
  $max = 10 ** $precision;
  for ($i = 0; $i < $max; $i++) {
    if ($i % 2 == 0) {
      $pi += 4.0 / $k;
    } else {
      $pi -= 4.0 / $k;
    }
    $k += 2.0;
  }
  return $pi;
}

$pi = calculate_pi(9);
printf "Pi = %.8f\n", $pi;
