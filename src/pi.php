<?php
function calculatePi($precision)
{
  $pi = 0.0;
  $k = 1.0;
  for ($i = 0; $i < $precision; $i++) {
    if ($i % 2 == 0)
      $pi += 4 / $k;
    else
      $pi -= 4 / $k;
    $k += 2;
  }
  return $pi;
}

$pi = calculatePi(1_000_000_000);
printf("Pi = %.8f\n", $pi);
