#!/bin/perl

sub calculate_pi
{
  $precision = $_[0];
  $s = 0;
  $k = 1;
  $max = 10 ** $precision;
  for ($i = 0; $i < $max; $i++) {
    if ($i % 2 == 0) {
      $s += 4 / $k;
    } else {
      $s -= 4 / $k;
    }
    $k += 2;
  }
  return $s;
}

$pi = calculate_pi(9);
printf "Pi = %.8f\n", $pi;
