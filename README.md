A helper classes library for Dart.
Usually for mockups with common data models, random data generators and a few helpful functionalities.

Note: Use [collection](https://pub.dev/packages/collection) package for methods like forEachIndexed, mapIndexed etc. for additional functionalities of Iterables.

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
  var y1 = 100.0;
  var x2 = 100.0;
  var y2 = 1000.0;

  var z = a.valToNewRange(oldMin: x1, oldMax: y1, newMin: x2, newMax: y2);
  print(z);
}
```

