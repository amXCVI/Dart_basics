import 'dart:math';

List factorization(int number) {
  int num = number;
  List<int> factors = [];

  if (number < 0) {
    num = -number;
  }

  for (int i = 2; i <= sqrt(num); i++) {
    while (num % i == 0) {
      factors.add(i);
      num = (num / i).round();
    }
  }

  if (num != 1) {
    factors.add(num);
  }

  if (number < 0) {
    factors[0] = -factors[0];
  }

  return factors;

}