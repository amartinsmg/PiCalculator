function calculatePi(precision) {
  let pi = 0,
    k = 1,
    max = 10 ** precision;
  for (let i = 0; i < max; i++) {
    if (i % 2 === 0) pi += 4 / k;
    else pi -= 4 / k;
    k += 2;
  }
  return pi;
}

let pi = calculatePi(9);
console.log(`Pi = ${pi.toFixed(8)}`);
