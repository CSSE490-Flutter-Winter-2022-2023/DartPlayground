void main() {
  print("Classes");
  // If they are named...
  // var pt = DoublePoint(
  //   x: 2,
  //   y: 5,
  // );

  // If they are positional...
  var pt = DoublePoint(2, 5);
  print("pt = ${pt.x} ${pt.y}  $pt");

  var emptyPt = DoublePoint.empty();
  print("emptyPt = ${emptyPt.x} ${emptyPt.y}  $emptyPt");
}

// Class DoublePoint
// var pt = DoublePoint(2, 5);

// Easy solution using the keyword late
// class DoublePoint {
//   late double x;
//   late double y;

//   DoublePoint(double x, double y) {
//     this.x = 2.0 * x;
//     this.y = 2.0 * y;
//   }

//   @override
//   String toString() {
//     return "($x, $y)";
//   }
// }

// Another solution is to provide a default value.
// class DoublePoint {
//   double x = 0;
//   double y = 0;

//   DoublePoint(double x, double y) {
//     this.x = 2.0 * x;
//     this.y = 2.0 * y;
//   }

//   @override
//   String toString() {
//     return "($x, $y)";
//   }
// }

// Another solution is to make them nullable.
// class DoublePoint {
//   double? x;
//   double? y;

//   DoublePoint(double x, double y) {
//     this.x = 2.0 * x;
//     this.y = 2.0 * y;
//   }

//   @override
//   String toString() {
//     return "($x, $y)";
//   }
// }

// Pretty good solution using a new Dart constructor tick!
// class DoublePoint {
//   double x;
//   double y;

//   // Most common, just assign it!
//   // DoublePoint({required this.x, required this.y});
//   // DoublePoint(this.x, this.y);

//   // You can also do more
//   DoublePoint(this.x, this.y) {
//     x *= 2.0;
//     y *= 2.0;
//   }

//   @override
//   String toString() {
//     return "($x, $y)";
//   }
// }

class DoublePoint {
  late double x;
  late double y;

  // Most common, just assign it!
  // DoublePoint({required this.x, required this.y});
  // DoublePoint(this.x, this.y);

  // You can also do more
  DoublePoint(double x, double y)
      : this.x = 2.0 * x,
        this.y = 2.0 * y {
    print("you made a point");
  }

  DoublePoint.empty() {
    this.x = 0;
    this.y = 0;
  }

  @override
  String toString() {
    return "($x, $y)";
  }
}
