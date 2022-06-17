function calculatePi(precision) {
  let pi = 0,
    k = 1;
  for (let i = 0; i < precision; i++) {
    if (i % 2 === 0) pi += 4 / k;
    else pi -= 4 / k;
    k += 2;
  }
  return pi;
}

const Pi = calculatePi(1_000_000_000);
console.log(`Pi = ${Pi.toFixed(8)}`);
