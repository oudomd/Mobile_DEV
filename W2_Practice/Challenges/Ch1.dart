class Point {
  double x;
  double y;

  Point(this.x, this.y);
  void translate(double dx, double dy) {
    x += dx;
    y += dy;
  }

  String toString() => '(x: $x, y: $y)';
}

void main() {
  Point p = Point(0, 3);
  print(p); 
  p.translate(6, -9);
  print(p);

}
