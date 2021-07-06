import 'dart:math' as math;

extension IterableNumUtil<T extends num> on Iterable<num> {
  /// Gets the maximum value in a list of num.
  num get getMax => fold(first, math.max) as T;

  /// Gets the lowest value in a list of num.
  num get getMin => fold(first, math.min) as T;

  /// Gets the sum of all the numbers in the list.
  num get sum => reduce((a, b) => a + b) as T;

  /// Gets the mean or average from the list.
  num get average => sum / length as T;
}

extension IterableUtil on Iterable{
  List get removeDuplicate => toSet().toList();
}