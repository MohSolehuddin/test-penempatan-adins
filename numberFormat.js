function numberFormat(number, formatLength) {
  let numberFormatResult = "";
  for (let i = 0; i < Number(formatLength) - String(number).length; i++) {
    numberFormatResult += "0";
  }
  return numberFormatResult + number;
}

console.log(numberFormat(5, 4));
console.log(numberFormat(87, 7));
