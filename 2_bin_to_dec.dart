int binToDecConverter(String binNumString) {
  if (!binNumString.contains(new RegExp(r'^-?[0-1]+$'))) {
    throw ArgumentError();
  }

  int decNumber = 0;
  int base = 1;
  int binaryStringLength = binNumString.length;

  for (int i = binaryStringLength - 1; i >= 0; i--) {
    if (binNumString[i] == '1') {
      decNumber += base;
    }
    base = base * 2;
  }

  return decNumber;
}