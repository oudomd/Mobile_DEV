class Point {
  final double x;
  final double y;
  const Point(this.x, this.y);
  Point translate(double dx, double dy) => Point(x + dx, y + dy);

  String toString() => 'Point($x, $y)';
}

void main() {
  const Point p1 = Point(2, 3);
  print(p1);

  final Point p2 = p1.translate(2, -1);
  print(p2); 

}
