class Point {
  int x = 0;
  int y = 0;

  Point(this.x, this.y);
}

class Rectangle {
  Point topLeft;
  Point bottomRight;

  Rectangle(this.topLeft, this.bottomRight) {
    if ((this.topLeft.x == this.bottomRight.x) ||
        (this.topLeft.y == this.bottomRight.y)) {
      throw Exception('The rectangle is not valid.');
    } else {
      print('Valid rectangle');
    }
  }

  int get width => (bottomRight.x > topLeft.x)
      ? bottomRight.x - topLeft.x
      : topLeft.x - bottomRight.x;
  int get height => (topLeft.y > bottomRight.y)
      ? topLeft.y - bottomRight.y
      : bottomRight.y - topLeft.y;
  int get area => width * height;
}

void main() {
  Point p1 = Point(3, 5);
  Point p2 = Point(2, 6);

  Rectangle rect1 = Rectangle(p1, p2);

  print(
    'The rectangle has width of ${rect1.width}, height of ${rect1.height}, and area of ${rect1.area}.',
  );
}
