void main() {
  print("Variables! Latest");

  // Explicitly Typed
  int myVariable1 = 42;

  // Inferred type
  var myVariable2 = 52.5;

  print("Values: $myVariable1 $myVariable2");
  print("Types: ${myVariable1.runtimeType}  ${myVariable2.runtimeType}");

  // Variabes, Finals, or Constants
  final int myFinal = 7 + myVariable1;
  // myFinal = 5;   // Won't compile since a final can't change

  const int myConst = 13; // Known at compile time constant
  // myConst = 5;  // Won't compile since a const can't change
  // const int myConst = 13 + myVariable1; // Won't compile since it has to execute at runtime

  print("Values: $myFinal $myConst");
  print("Types: ${myFinal.runtimeType}  ${myConst.runtimeType}");

  // Nullable vs Non-Nullable
  // int myNonNullable;  // Won't compile since it CANNOT be null, but is null
  int myNonNullable = 5;
  int? myNullable;

  print("Values: $myNonNullable $myNullable");
  print("Types: ${myNonNullable.runtimeType}  ${myNullable.runtimeType}");
}
