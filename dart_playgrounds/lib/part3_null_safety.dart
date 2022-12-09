import 'package:flutter/material.dart';

void main() {
  print("Null Safety!!!");

  // double? nullableDouble = null;
  // double nonNullableDouble = null;  // Won't compile

  double? nullableDouble; // Exactly the same as the line above

  // See how this works with objects
  // ?.   optional chaining, if this thing is non-null do the next step
  // !  !.   forced unwrapping, I as the developer promise this thing is no null
  // print(nullableDouble!);  // Crash at runtime, since my promise was wrong.
  // late variable types
  late double willBeNonNull;
  if (8 > 7) {
    willBeNonNull = 2.5;
  }
  print(willBeNonNull);

  ElevatedButton? button;
  button = ElevatedButton(onPressed: null, child: null);
  if (5 > 6) {
    Text? txt = const Text("Hello World!");
    // Text? txt = const Text(null);
    // txt = null;
    button = ElevatedButton(onPressed: null, child: txt);
  } else {
    button = null;
  }
  print("Button = $button");
  print("Button's child Text = ${button?.child}"); // Optional chaining
  // print("Button's child Text = ${button!.child}"); // Force unwrapping

  print("Data = ${((button?.child) as Text?)?.data}"); // Fully bullet proof

  // Protects ONLY against a null button. Goal to crash on a null Text
  // print("Data = ${((button?.child) as Text).data}");  // comment out to avoid crashes

  // Protects ONLY against a null child.  Goal to crash on a null Button
  // print("Data = ${((button!.child) as Text?)?.data}"); // comment out to avoid crashes
}
