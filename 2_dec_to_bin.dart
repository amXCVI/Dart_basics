String decToBinConverter(int decNum) {
  if (decNum < 0) {
    throw ArgumentError();
  }

  String finalStr = '';
  while (decNum != 0) {
    if (decNum & 1 == 1) {
      finalStr += '1';
    } else {
      finalStr += '0';
    }
    decNum >>= 1;
  }

  return finalStr.split('').reversed.join();
}