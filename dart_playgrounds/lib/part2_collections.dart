void main() {
  print("Collections");
  // lists();
  // sets();
  maps();
}

void lists() {
  // var scores = [72, 52, 93, 87, 41, 83];
  final scores = [72, 52, 93, 87, 41, 83];
  // const scores = [72, 52, 93, 87, 41, 83]; // Runtime error, can't modify a const
  print("Values: $scores");
  print("Type: ${scores.runtimeType}");

  scores[1] = 100;
  scores.add(33);
  print("Index 1 --> ${scores[1]}");

  // final emptyStartingList = <int>[];
  final List<int> emptyStartingList = [];
  emptyStartingList.add(55);
  print("Empty list $emptyStartingList");

  // Enchanced for loop
  var totalPassing = 0;
  for (final score in scores) {
    // print(score);
    if (score > 60) {
      totalPassing++;
    }
  }
  print("$totalPassing people passed out of ${scores.length}");

  // Index based loop
  var evenSum = 0;
  for (var k = 0; k < scores.length; k = k + 2) {
    evenSum += scores[k];
  }
  print("Sum of even indicies is $evenSum from $scores");

  scores.forEach((element) {
    print(element);
  });

  scores.asMap().forEach((key, value) {
    print("Index: $key Value: $value");
  });
}

void sets() {
  final setOfInts = <int>{};
  final Set<int> set2 = {};
  final set3 = {3, 4, 5, 6, 67};
  // set3 = {66, 55};  // Won't compile since the set is final (set once)
  print("$setOfInts, $set2, $set3");

  print("Before: $set3");
  set3.add(17);
  set3.add(5);
  print("After: $set3");
}

void maps() {
  final mapOfInts = <String, int>{};
  final map2 = {"Dave": 43, "McKinley": 12};

  map2["Bob"] = 46;
  print("$mapOfInts $map2");

  print('${map2["Dave"]}');
  print('${map2["Bob"]}');
}
