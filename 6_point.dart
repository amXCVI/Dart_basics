import 'dart:math';

class Point {
  final double x;
  final double y;
  final double z;

  Point(this.x, this.y, this.z);

  factory Point.origin() {
    return Point(0, 0, 0);
  }
  factory Point.oneVector() {
    return Point(1, 1, 1);
  }

  double distanceTo(Point another) {
    double distance;
    distance = sqrt(pow(another.x - x, 2.0) + pow(another.y - y, 2.0) + pow(another.z - z, 2.0));

    return distance;
  }
}