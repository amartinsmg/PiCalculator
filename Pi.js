let pi = 0, k = 1;

for(let i = 0; i <= 100000000; i++){
    if(i % 2 == 0){
        pi += 4/k;
    }else{
        pi -= 4/k;
    }
    k += 2;
}

console.log("Pi =", pi.toFixed(7));