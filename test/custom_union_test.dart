import 'package:test/test.dart';
import 'package:union/union.dart';

void main() {
  test('map', () {
    AsyncState<int> test = 42.asFirst();
    test = test.map(
      (value) => value * 2,
      (v) => v,
      (v) => v,
    );
    expect(
      test.value,
      equals(84),
    );
  });
}

typedef AsyncState<T> = void Function(
  void Function(T value),
  void Function(Loading value),
  void Function(Exception value),
  Object? _d,
  Object? _e,
  Object? _f,
  Object? _g,
  Object? _h,
  Object? _i,
);

class Loading {
  const Loading();
}
