int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  int sum = add(a, b);
  int diff = sub(a, b);
  String output = "Add $a + $b = $sum" + "\n" + "Sub $a - $b = $diff";
  return output;
}
