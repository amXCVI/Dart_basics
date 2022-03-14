Map<String, int> _numbersNames = {
  'zero': 0,
  'one': 1,
  'two': 2,
  'three': 3,
  'four': 4,
  'five': 5,
  'six': 6,
  'seven': 7,
  'eight': 8,
  'nine': 9
};

List getNumbersList(String worldsString) {
  List<String> worldsList = worldsString.split(', ');
  List<int> numbersList = [];

  _numbersNames.forEach((key, value) {
    if (worldsList.contains(key)) {
      numbersList.add(value);
    }
  });

  return numbersList;
}