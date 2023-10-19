List<double> convertToF(List<double> temperaturesInC){
  var temperaturesInF = <double>[];
  for (var temperatureInC in temperaturesInC) {
    var temperatureInF = (temperatureInC * 9 / 5) + 32;
    temperaturesInF.add(double.parse(temperatureInF.toStringAsFixed(2)));
  }
  return temperaturesInF;
}
