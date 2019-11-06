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

A union is an object that holds a value which can be of different types,
and allow manipulating that value in a type-safe way.

Unions comes in different variants, where its name "Union" is suffixed
by a number (such as [Union2] or [Union3]).
That number represents the number of different types the value stored
can take.

For example, if a value can be both a [String] and a [int], that makes
two different types. We can therefore use [Union2] like so:

```dart
Union2<String, int> myUnion;
```

or:

```dart
Union2<int, String> myUnion;
```

Note that, due to language limitations, we cannot assign `Union2<int, String>`
to `Union2<String, int>` (or the opposite).

On the other hand, it is possible to assign `Union2<int, String>` to
`Union3<int, String, Whatever>` (but not the opposite).

# Creating a union

Due to a language limitation, we cannot do:

```dart
Union2<String, int> foo = 42;
foo = "hello world";
```

Instead we have to wrap our value into another object.
To do so, `union` expose a bunch of extension methods to transform our
value in a union, which goes from `asFirst` to `asNinth`.

This number represent the index that our value correspond to in the type
list that the union can take.

For example, `42.asFirst` allows creating:

```dart
Union1<int> union1 = 42.asFirst();
Union2<int, SomeType> union2 = 42.asFirst();
Union3<int, SomeType, AnotherType> union3 = 42.asFirst();
...
```

Whereas `42.asSecond` allows creating:

```dart
Union2<SomeType, int> union2 = 42.asSecond();
Union3<SomeType, int, AnotherType> union3 = 42.asSecond();
Union4<SomeType, int, AnotherType, YetAnotherType> union4 = 42.asSecond();
...
```

As such, our original example becomes:

```dart
Union2<String, int> foo = 42.asSecond();
foo = "hello world".asFirst();
```

# Converting a union to another union

Any union can be freely upcasted to unions that takes more types.

For example, we can do:

```dart
Union2<String, int> union2;

Union3<String, int, double> union3 = union2; // upcast, no problem
Union4<String, int, double, Object> union4 = union2; // still works
...
```

But we cannot downcast unions.
It is therefore impossible to do:

```dart
Union3<String, int, double> union3;

// downcast, does not work because the value can be a double too.
Union2<String, int> union2 = union3;
```

# Reading the value

Unions expose their current value publicly through the getter `value`.

But since the value can be of different types, a small trick is necessary
to preserve type safety:

On a `Union2<SomeType, AnotherType>`, the type of `value` is neither of
type `SomeType` nor of type `AnotherType`.
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

# Applying operations on the value

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

- `map`, which transforms the current value in another value.
- `switchCase`, which allows performing some logic based on the value type.
- `join`, which fuse all the different types in a single type.

**DO:**

```dart
Union2<String, int> union;
union.switchCase(
  (String value) => print('String: $value'),
  (int value) => print('int: $value'),
);
```

This is better because the code will not compile if we forgot to handle
one of the potential types that `value` can take.

# Limitations

Because they are not part of the language, but implemented on the top of it,
this implementation comes with a few limitations.

- the operator== of unions cannot be overriden. This means that two unions
  containing the same value may not be equal:

  ```dart
  final a = 42.asFirst();
  final b = 42.asFirst();
  print(a == b); // false
  ```

  Instead, compare their `value`:

  ```dart
  final a = 42.asFirst();
  final b = 42.asFirst();
  print(a.value == b.value); // true
  ```

- `Union2<String, int>` cannot be assigned to `Union2<int, String>`.
  Instead you can use `join` to convert one to another:

  ```dart
   Union2<String, int> union = "hello world".asFirst();

   Union2<int, String> converted = union.join(
     (v) => v.asSecond(),
     (v) => v.asFirst(),
   );
  ```

# Custom unions

Sometimes we want to reuse one specific combination of type often.
In that situation, we'll want to write a type alias.

Ideally, we'd want:

```dart
typedef Result<T> = Union2<T, Exception>;
```

Sadly, Dart does not support typedefs of typedefs (but it may come soon).
See https://github.com/dart-lang/language/issues/65

Instead as a temporary workaround, we can _expand_ the typedef.
As such, the actual implementation of such `Result<T>` would be:

```dart
typedef Result<T> = void Function(
  void Function(T value),
  void Function(Exception value),
  Object _c,
  Object _d,
  Object _e,
  Object _f,
  Object _g,
  Object _h,
  Object _i,
);
```

This is of course not ideal, but there's an easy way to implement it:

- go to the definition of the union you want to reuse (here [Union2])
- copy its implementation
- paste it and update it to match your needs.

On the hand, while the initial boilerplate is a bit boring, this
implementation has some benefits.
Our custom `Result<T>` is assignable freely to `Union2<T, Exception>`:

```dart
Union2<int, Exception> union2;
Result<int> result = union2; // works without issue
union2 = result; // works too
```

[union2]: https://pub.dev/documentation/union/latest/union/Union2.html
[union3]: https://pub.dev/documentation/union/latest/union/Union2.html
