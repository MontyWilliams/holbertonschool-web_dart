double calculateArea(double height, double base) {
  var area = (height * base) / 2;
  if (area % 1 == 0) {
    return area.toInt().toDouble();
  } else {
    return double.parse(area.toStringAsFixed(2));
  }
}
