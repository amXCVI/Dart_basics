int gcd(int numA, int numB) {
  if (numA == 0 && numB == 0) {
    throw ArgumentError();
  }
  if (numA < 0) {
    numA = -numA;
  }
  if (numB < 0) {
    numB = -numB;
  }

  swap(num1, num2) {
    numA = num2;
    numB = num1;
  }

  if (numA < numB) {
    swap(numA, numB);
  }

  if (numB != 0) {
    return gcd(numB, numA % numB);
  } else {
    return numA;
  }
}