function calc(x) {
    let firstNumber;
    let secondNumber;
    let errorFlag;
    let operations = ['*', '/', '+', '-'];
    let thisNumber = null;
    let myOperations = [];

    errorFlag = false;
    firstNumber = null;
    secondNumber = null;

    for (let i = 0; i < x.length; i++) {
        if (operations.indexOf(x[i]) != -1) {
            myOperations.push(x[i]);
            continue;
        }
        thisNumber = parseInt(x[i]);
        if (thisNumber <= 9 && thisNumber >= 0) {
            if (firstNumber == null) {
                firstNumber = thisNumber;
            } else {
                secondNumber = thisNumber;
                firstNumber = action(myOperations.pop(), firstNumber, secondNumber);
            }
        }
    }
    if (myOperations.length != 0 || secondNumber == null || typeof firstNumber == 'undefined') {
        errorFlag = true;
    }
    if (errorFlag) {
        console.log('Wrong example');
    } else {
        console.log(firstNumber);
    }
}

function action(oper, numb1, numb2) {
    if (oper == '*') {
        return numb1 * numb2; 
    } else if (oper == '/') {
        return numb1 / numb2; 
    } else if (oper == '+') {
        return numb1 + numb2; 
    } else if (oper == '-') {
        return numb1 - numb2; 
    } else {
        console.log('Wrong example');
    }
}