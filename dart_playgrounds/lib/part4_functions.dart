void main() {
  print("Functions");
  print("addTwoNumbers(2,3) ${addTwoNumbers(2, 3)}");
  print("addTwoNumbersWithTypes(2,3) ${addTwoNumbersWithTypes(2, 3)}");
  print("addTwoNumbersShorter(2,3) ${addTwoNumbersShorter(2, 3)}");
}

int addTwoNumbers(a, b) {
  return a + b;
}

int addTwoNumbersWithTypes(int a, int b) {
  return a + b;
}

int addTwoNumbersShorter(a, b) => a + b;
