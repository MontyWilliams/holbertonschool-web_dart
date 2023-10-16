void main(List<String> args) {
  var number = int.parse(args[0]);
  if (number > 0)
    print("${number} is positive");
  if (number < 0)
    print("${number} is negative");
  if (number == 0)
    print("0 is zero");
}
