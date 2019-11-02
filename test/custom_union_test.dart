import 'package:test/test.dart';
import 'package:union/union.dart';

void main() {
  test('map', () {
    expect(
      const AsyncState<int>.value(42)
          .map(
            (v) => v * 2,
            (v) => v,
            (v) => v,
          )
          .toAsyncState()
          .value,
      equals(84),
    );
  });
}

class AsyncState<T> extends Union3<T, Loading, Exception> {
  const AsyncState.value(T value) : super.first(value);
  const AsyncState.loading() : super.second(const Loading());
  const AsyncState.exception(Exception error) : super.third(error);
}

class Loading {
  const Loading();
}

extension ToAsyncState<T> on Union3<T, Loading, Exception> {
  AsyncState<T> toAsyncState() {
    return join(
      (v) => AsyncState.value(v),
      (_) => const AsyncState.loading(),
      (v) => AsyncState.exception(v),
    );
  }
}
