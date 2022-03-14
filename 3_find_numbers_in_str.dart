bool _isNumeric(String world) {
  return double.tryParse(world) != null;
}

List getNumbersOfStr(String worlds) {
  List<double> numbersList = [];

  List<String> worldsList = worlds.split(' ');
  worldsList.forEach((e) => {
    if (_isNumeric(e)) {
      numbersList.add(double.parse(e))
    }
  });

  return numbersList;
}