import 'package:function_helpers/function_helpers.dart';

void main() {
  var x = 50;
  x.valToNewRange(oldMin: 0, oldMax: 100, newMin: -1, newMax: 1);
  print(x);
}
