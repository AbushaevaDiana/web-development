function isPrimeNum(n) {
  let isPrime = true;

  if (n == 1) {
    console.log('Number should be > 1');
  } else {
      for (let j = 2; j < n; j++) {
          if (n % j == 0) {
            isPrime = false;
            break;
          }
      }
      
      if (isPrime) {
          console.log(n, ' is a prime number');
      } else {
          console.log(n, ' is not a prime number');
        }
    }
}

function isPrimeArr(arr) {
  for (j = 0; j < arr.length; j++) {
    let n = arr[j];

    if (typeof n == 'number'){
      isPrimeNum(n);
    } else {
      console.log('Not a number');
      break;
      }
  }
}

function isPrimeNumber(n){
  if(typeof n == 'number'){
    isPrimeNum(n);
  } else if (typeof n == 'object') {
    let arr = n;

    isPrimeArr(arr);
  } else {
    console.log('Not a number'); 
  }
}