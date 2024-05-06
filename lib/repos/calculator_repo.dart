class CalculatorRepo {
  add({required num num1, required num num2}) {
    return num1 + num2;
  }

  subtract({required num num1, required num num2}) {
    return num1 - num2;
  }

  multiply({required num num1, required num num2}) {
    return num1 * num2;
  }

  divide({required num num1, required num num2}) {
    return num1 / num2;
  }

// todo reset
  resetNum1({required num1}) {
    return num1 = 0;
  }

  resetNum2({required num2}) {
    return num2 = 0;
  }
  // todo increment numbers

  incrementNum1({required num1}) {
    return num1++;
  }

  incrementNum2({required num2}) {
    return num2++;
  }

  // todo decrement

  decrementNum1({required num1}) {
    return num1--;
  }

  decrementNum2({required num2}) {
    return num2--;
  }
}
