import 'dart:math';

void main() {
  Rectangle r = Rectangle(length: 4, breadth: 3);
  print(r.area());
  print(r.diagonal());
  print(r.perimeter());
  print(r);

  Circle c = Circle(radius: 7);
  print(c.area());
  print(c.diameter());
  print(c.perimeter());
  print(c);

  Figure f = Rectangle(length: 4, breadth: 3);
  print(f.area());
  print(f.perimeter());
  print(f);

  f = Circle(radius: 7);
  print(f.area());
  print(f.perimeter());
  print(f);
}

class Circle implements Figure {
  double radius;
  Circle({required this.radius});
  @override
  double area() {
    return pi * radius * radius;
  }

  @override
  double perimeter() {
    return 2 * pi * radius;
  }

  double diameter() {
    return 2 * radius;
  }

  @override
  String toString() {
    return "Circle($radius)";
  }
}

class Rectangle implements Figure {
  double length, breadth;
  Rectangle({required this.length, required this.breadth});
  @override
  double area() {
    return length * breadth;
  }

  @override
  double perimeter() {
    return 2 * (length + breadth);
  }

  double diagonal() {
    return sqrt(length * length + breadth * breadth);
  }

  @override
  String toString() {
    return "Rectangle($length,$breadth)";
  }
}

mixin Figure {
  double area();
  double perimeter();
}
