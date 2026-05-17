// class Point {
//   final double _x;
//   final double _y;
//   Point(this._x, this._y);

//   Point translatePoint(double dx, double dy) {
//     return Point(_x + dx, _y + dy);
//   }

//   get x => _x;
//   get y => _y;
//   String toString() {
//     return 'x: $_x, y: $_y';
//   }
// }

// void main() {
//   Point P1 = Point(3, 5);
//   P1._x = 4;
//   P1.translatePoint(1, 2);

//   print("P1 is at (${P1.x},${P1.y})");
// }

// ─────────────────────────────────────────────
// CHALLENGE 4 – Immutable Point
// ─────────────────────────────────────────────
// Key ideas:
//   • `final` fields → set only once (in the constructor)
//   • `const` constructor → compile-time constant when possible
//   • translate() cannot mutate – it returns a NEW Point instead

class Point {
  final double x;
  final double y;
  const Point(this.x, this.y);
  Point translate(double dx, double dy) => Point(x + dx, y + dy);

  @override
  String toString() => 'Point($x, $y)';
}

void main() {
  const Point p1 = Point(2, 3);
  print(p1); // Point(2.0, 3.0)

  final Point p2 = p1.translate(1, -1);
  print(p1); // Point(2.0, 3.0)  ← unchanged
  print(p2); // Point(3.0, 2.0)  ← new object

  // The line below would cause a compile error – good!
  // p1.x = 10; // ERROR: 'x' is final
}
