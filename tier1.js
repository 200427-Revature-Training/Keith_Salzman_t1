function returnDataParam(param) {
return typeof(param);
}

function product1(...c) {
const arrValues = c;
const product = arrValues.reduce((a,b) => a*b)
return product;
}

function product2(...c) {
    let p;
    return arr.forEach((number => {p*=number}))
    }

    function sum1(arr) {
        let s = 0;
        return arr.forEach((number => {s+=number}))
    }

    function sum2(arr) {
        const s = arr.reduce((a,b) => a+b)
        return s;
        }

function sumOfArray(arr) {
    let s = 0;
    return arr.forEach((number => {s+=number}))
}

function digitCheck(a) {
    const s = a.toString().split('');
    const length = s.length;
    let s = 0; 
    s.forEach(number => {s+=Math.pow(number,length);
    })
    return s === a;
}



