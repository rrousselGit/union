import 'package:union/union.dart';

void main() {
  Union2<int, double> union2 = 42.asFirst();

  Union3<int, double, String> upcast = union2; // works
  print(upcast.value); // 42

  print(upcast.map((a) => a * 2, (a) => '$a', (a) => a).value); // 84

  upcast = 'foo'.asThird();

  print(upcast.map((a) => a * 2, (a) => '$a', (a) => a).value); // 'foo'

  // Union2<int, double> downcast = upcast; // does not compile
}
