import '1_gcd.dart';

int lcm(int numA, int numB) {
  if (numA == 0 && numB == 0) {
    return 0;
  }

  return (numA / gcd(numA, numB) * numB).round();
}