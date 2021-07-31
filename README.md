A helper classes library for Dart and Flutter.
Usually for mockups with common data models, random data generators and a few helpful functionalities.

The IterableNumUtil has been removed. See the usage of the removed util that is available on collection package.

Note: Use [collection](https://pub.dev/packages/collection) package instead if you need more methods like forEachIndexed, mapIndexed and other functionities for Iterables.

## Features
- Common Models
- Data Helper
- Extension Helper
- Math Helper
- Random Helper
- Widget Helper

## Usage

A simple usage example:

```dart
import 'package:function_helpers/function_helpers.dart';

main() {
  var a = 30.0;
  var x1 = 10.0;
  var x2 = 100.0;
  var y1 = 100.0;
  var y2 = 1000.0;

  var z = a.valToNewRange(oldMin: x1, oldMax: x2, newMin: y1, newMax: y2);
  print(z); // Prints out 300
}
```

collection package sample:
</br>
They might introduce a different method solely for int and double.
</br>
Track it here: .min/max extension not working on List<int> ([#189](https://github.com/dart-lang/collection/issues/189))

```dart
import 'package:collection/collection.dart';

main() {
   //Explicitly type casting num. int or double won't work.
  var numList = <num>[1,2.6,200,21,0,19,190,70];
  print(numList.max); // Prints out 200
}
```

