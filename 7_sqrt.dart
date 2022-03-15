extension Sqrt on num {
  num pow(int n) {
    num result = 1;
    for(int i = 0; i < n; i++) {
      result = result * this;
    }
    return result;
  }
  
  num sqrt(int n) {
    if (this == 0) {
      throw 'argument is zero';
    }
    if (this < 0 && n % 2 == 0) {
      throw 'invalid arguments';
    }

    double result = 1.0;
    for(int i = 0; i < 100; i++) {
      result = 1 / n * ((n - 1) * result + this / result.pow(n - 1));
    }
    return result;
  }
}