extension IterableUtil on Iterable {
  /// Removes the duplicate of an element that has more than 1 occurence.
  List get removeDuplicate => toSet().toList();

  /// Returns values with more than 1 occurence.
  List<T> intersection<T>(Iterable<Iterable<T>> iterables) {
    return iterables.map((e) => e.toSet()).reduce((a, b) => a.intersection(b)).toList();
  }

  /// Returns the occurence count of an element in a list.
  int occurence<T>(T item) {
    var count = where((element) => element == item);
    return count.length;
  }

  /// Returns a Map frequency count of each element in a list.
  ///
  /// The elements are used as keys.
  Map<dynamic, int> frequencies() {
    var map = <dynamic, int>{};
    forEach((e) => map.update(e, (x) => (x) + 1, ifAbsent: () => 1));
    return map;
  }
}

extension NumUtil<T extends num> on T {

  /// Scales this value into a new value while maintaining the correct ratio between the range of [newMin] and [newMax].
  T valToNewRange({
    required T oldMin,
    required T oldMax,
    required T newMin,
    required T newMax,
  }) {
    var isInRange = this >= oldMin && this <= oldMax;
    if (!isInRange) throw RangeError('current value must be in between the oldMin and oldMax');

    //Linear Conversion
    var newValue = (((this - oldMin) * (newMax - newMin)) / (oldMax - oldMin)) + newMin;
    return newValue as T;
  }
}
