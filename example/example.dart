import 'package:union/union.dart';

class Loading {
  const Loading();
}

class AsyncState<T> extends Union3<T, Loading, Exception> {
  AsyncState.value(T value) : super.first(value);
  AsyncState.loading() : super.second(const Loading());
  AsyncState.exception(Exception error) : super.third(error);
}

extension ToAsyncState<T> on Union3<T, Loading, Exception> {
  AsyncState<T> toAsyncState() {
    return join(
      (v) => AsyncState.value(v),
      (_) => AsyncState.loading(),
      (v) => AsyncState.exception(v),
    );
  }
}

void main() {
  var state = AsyncState<int>.value(42);
  state = state
      .map(
        (v) => v * 2,
        (v) => v,
        (v) => v,
      )
      .toAsyncState();
}
