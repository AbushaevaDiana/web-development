let arr
let f
let bre
let arrSave
let otv

function steck(str) {
  arr = str.split('(').join('( ').split(')').join(' )').split('+').join('+ ').split('-').join('- ').split('*').join('* ').split('/').join('/ ').split(' ');
  arrSave = arr;
  f1(arr);
  console.log(otv);
}

function f1(arr) {
  f = false;
  bre = [];
  for (let i = 0; i < arr.length; i++){
    if (arr[i] == ')') {
      f = true;
      break; 
    } else {
      bre.push(arr[i]);
      }
  }
  

  if (f) {
    arr = bre;

    bre = [];

    for (let i = arr.lenght; i => 0; i--){
      if (arr[i] == '(') {
        break; 
      } else if (arr[i] != '') {
        bre.push(arr[i]);
        }
    }
    act(bre);
  }

}




function act(bre) {
  
    let sign = bre[3];
  
    let a = Number( bre[1] );
  
    let b = Number( bre[2] );
  
    if (sign == '+') {
      otv = a + b;
    }
  
    if (sign == '-') {
      otv = a - b;
    }
  
    if (sign == '*') {
      otv = a * b;
    }
  
    if (sign == '/') {
      otv = a / b;
    }

  }



