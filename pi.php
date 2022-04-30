<?php
$pi = 0;
$k = 1;

for ($i = 0; $i < 1000000000; $i++) {
  if ($i % 2 == 0) {
    $pi += 4 / $k;
  } else {
    $pi -= 4 / $k;
  }
  $k += 2;
}

printf("Pi = %.8f", $pi);
