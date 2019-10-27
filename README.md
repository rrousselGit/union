[![Dart CI](https://github.com/rrousselGit/union/workflows/Dart%20CI/badge.svg)](https://github.com/rrousselGit/union/actions) [![codecov](https://codecov.io/gh/rrousselGit/union/branch/master/graph/badge.svg?token=JW4dnv3Re9)](https://codecov.io/gh/rrousselGit/union)
[![union](https://img.shields.io/pub/v/union?label=union)](https://pub.dev/packages/union)

Type-safe, boilerplate-free union types for Dart

### Resources:

- [Documentation](https://pub.dev/documentation/union/latest/union/union-library.html)
- [Pub Package](https://pub.dev/packages/union)
- [GitHub Repository](https://github.com/leisim/union)

# Installation

Add the following to you pubspec.yaml:

```yaml
dependencies:
  union: ^0.0.0
```

# Description

A union is a class that holds a value which can be of different types, and allow
manipulating that value in a type-safe way.

Unions comes in different variants, where the class name "Union" is
suffixed by a number (such as [Union2] or [Union3]).
That number represents the number of different types the value stored
can take.

For example, if a value can be both a `String` and a `int`, that makes
two different types. We can therefore use [Union2] like so:

```dart
Union2<String, int> myUnion;
```

or:

```dart
Union2<int, String> myUnion;
```

Note that we cannot assign `Union2<int, String>` to `Union2<String, int>` (or the opposite).

## Assigning a value to a union

We've seen previously that a `Union2<String, int>` stores a value that is
either a `String` or an `int`.

But such union **cannot** contain a type that is neither `String` nor `int`.

As such, to ensure the type safety, instead of a single constructor that
take the current value of any given type, unions have multiple constructor:
One constructor for each type.

For example, `Union2<String, int>` expose two constructors:

- `new Union2.first(String value)`
- `new Union2.second(int value)`

Whereas `Union4<String, int, double, List<int>>` have four constructors:

- `new Union4.first(String value)`
- `new Union4.second(int value)`
- `new Union4.third(double value)`
- `new Union4.forth(List<int> value)`

We can therefore do:

```dart
Union2<String, int> myUnion;

myUnion = Union2.first('hello world');
myUnion = Union2.second(42);
```

## Reading the value

Unions expose the current value publicly through [value].

But since the value can be of different types, a small trick is necessary
to preserve type safety:

On a `Union2<SomeClass, AnotherClass>`, the type of [value] is neither of
type `SomeClass` nor of type `AnotherClass`.
Instead it has the type of their nearest common interface.

```dart
Union2<String, int> example;
// String and int have no shared, so value is of type Object
Object value = example.value;
int impossible = example.value; // COMPILE ERROR, not type safe

Union2<int, double> example2;
// int and double have a common interface: num. Therefore is of type num
num value2 = example2.value; // type safe, there's no cast or compile error.
int stillImpossible = example2.value; // COMPILE ERROR, value is a num not a int

Union2<String, String> example3;
// The type is always a String, so value is a String too
String value3 = example3.value; // type safe, there's no cast or compile error.
```

NOTE:
Such powerful type inference is made possible only thanks to type extension.

## Applying operations on the value

To prevent mistakes, it is not recommended to use the `is` operator to
determine what the value currently is.

**DON'T:**

```dart
Union2<String, int> union;
if (union.value is String) {
  print('String: ${union.value}');
} else if (union.value is int) {
  print('int: ${union.value}');
}
```

This is a bad practice because it is easy to forget to handle one of the
potential types that the value can take.

Instead, use one of the availble methods on unions, such as:

- [map], which transforms the current value in another value.
- [forEach], which allows performing some logic based on the value type.
- [join], which fuse all the different types in a single type.

**DO:**

```dart
Union2<String, int> union;
union.forEach(
  (String value) => print('String: $value'),
  (int value) => print('int: $value'),
);
```

This is better because the code will not compile if we forgot to handle
one of the potential types that [value] can take.

## Making a reusable union

Sometimes, we have a specific combination of types that we want to want to
reuse all the time.

In such case, having to specify the generic types of a Union can be a bit
verbose. Similarly, the constructors name (first, second, ...) may not be
ideal.

In that situation, what we can do is subclassing the desired Union, as
followed:

```dart
class AsyncState<T> extends Union3<T, Loading, Exception> {
    const AsyncState.value(T value): super.first(value);
    const AsyncState.loading(): super.second(const Loading());
    const AsyncState.exception(Exception error): super.third(error);
}
```

This allows us to write:

```dart
final state = AsyncState<int>.value(42);
final loading = const AsyncState<int>.loading();
```

instead of:

```dart
final state = Union3<int, Loading, Exception>.first(42);
final loading = const Union3<int, Loading, Exception>.second(const Loading());
```

Then, we may want to write an extension on the original Union, to easily
convert raw unions to our custom union:

```dart
extension ToAsyncState<T> on Union3<T, Loading, Exception> {
  AsyncState<T> toAsyncState() {
    return join(
      (v) => AsyncState.value(v),
      (_) => const AsyncState.loading(),
      (v) => AsyncState.exception(v),
    );
  }
}
```

This allows us to write:

```dart
var state = AsyncState<int>.value(42);
state = state
    .map(
      (v) => v * 2,
      (v) => v,
      (v) => v,
    )
    .toAsyncState();
```

[value]: https://pub.dev/documentation/union/latest/union/Union2Value/value.html
[union2]: https://pub.dev/documentation/union/latest/union/Union2-class.html
[union3]: https://pub.dev/documentation/union/latest/union/Union2-class.html
[map]: https://pub.dev/documentation/union/latest/union/Union2/map.html
[foreach]: https://pub.dev/documentation/union/latest/union/Union2/forEach.html
[join]: https://pub.dev/documentation/union/latest/union/Union2/join.html
