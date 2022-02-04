let pi: number = 0,
  k: number = 1;

for (let i: number = 0; i < 1000000000; i++) {
  if (i % 2 === 0) {
    pi += 4 / k;
  } else {
    pi -= 4 / k;
  }
  k += 2;
}

console.log("Pi = " + pi.toFixed(9));
