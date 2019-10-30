part 'union.g.dart';

// ignore: missing_return
R _noop<T, R>(T t) {}

abstract class _UnionBase {
  /// Create a union from _UnionBase first generic type
  const _UnionBase(this._value);

  Function get _join;
  final Object _value;

  @override
  bool operator ==(Object other) {
    return other is _UnionBase &&
        runtimeType == other.runtimeType &&
        other._join == _join &&
        other._value == _value;
  }

  @override
  int get hashCode => runtimeType.hashCode ^ _join.hashCode ^ _value.hashCode;
}

T _first2<T, A, B>(Union2<A, B> union, T first(A a), T second(B b)) =>
    first(union._value as A);
T _second2<T, A, B>(Union2<A, B> union, T first(A a), T second(B b)) =>
    second(union._value as B);

T _first3<T, A, B, C>(
  Union3<A, B, C> union,
  T first(A a),
  T second(B b),
  T third(C c),
) =>
    first(union._value as A);
T _second3<T, A, B, C>(
  Union3<A, B, C> union,
  T first(A a),
  T second(B b),
  T third(C c),
) =>
    second(union._value as B);
T _third3<T, A, B, C>(
  Union3<A, B, C> union,
  T first(A a),
  T second(B b),
  T third(C c),
) =>
    third(union._value as C);

T _first4<T, A, B, C, D>(
  Union4<A, B, C, D> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
) =>
    first(union._value as A);
T _second4<T, A, B, C, D>(
  Union4<A, B, C, D> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
) =>
    second(union._value as B);
T _third4<T, A, B, C, D>(
  Union4<A, B, C, D> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
) =>
    third(union._value as C);
T _forth4<T, A, B, C, D>(
  Union4<A, B, C, D> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
) =>
    forth(union._value as D);

T _first5<T, A, B, C, D, E>(
  Union5<A, B, C, D, E> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
) =>
    first(union._value as A);
T _second5<T, A, B, C, D, E>(
  Union5<A, B, C, D, E> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
) =>
    second(union._value as B);
T _third5<T, A, B, C, D, E>(
  Union5<A, B, C, D, E> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
) =>
    third(union._value as C);
T _forth5<T, A, B, C, D, E>(
  Union5<A, B, C, D, E> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
) =>
    forth(union._value as D);
T _fifth5<T, A, B, C, D, E>(
  Union5<A, B, C, D, E> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
) =>
    fifth(union._value as E);

T _first6<T, A, B, C, D, E, F>(
  Union6<A, B, C, D, E, F> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
) =>
    first(union._value as A);
T _second6<T, A, B, C, D, E, F>(
  Union6<A, B, C, D, E, F> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
) =>
    second(union._value as B);
T _third6<T, A, B, C, D, E, F>(
  Union6<A, B, C, D, E, F> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
) =>
    third(union._value as C);
T _forth6<T, A, B, C, D, E, F>(
  Union6<A, B, C, D, E, F> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
) =>
    forth(union._value as D);
T _fifth6<T, A, B, C, D, E, F>(
  Union6<A, B, C, D, E, F> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
) =>
    fifth(union._value as E);
T _sixth6<T, A, B, C, D, E, F>(
  Union6<A, B, C, D, E, F> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
) =>
    sixth(union._value as F);

T _first7<T, A, B, C, D, E, F, G>(
  Union7<A, B, C, D, E, F, G> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
) =>
    first(union._value as A);
T _second7<T, A, B, C, D, E, F, G>(
  Union7<A, B, C, D, E, F, G> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
) =>
    second(union._value as B);
T _third7<T, A, B, C, D, E, F, G>(
  Union7<A, B, C, D, E, F, G> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
) =>
    third(union._value as C);
T _forth7<T, A, B, C, D, E, F, G>(
  Union7<A, B, C, D, E, F, G> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
) =>
    forth(union._value as D);
T _fifth7<T, A, B, C, D, E, F, G>(
  Union7<A, B, C, D, E, F, G> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
) =>
    fifth(union._value as E);
T _sixth7<T, A, B, C, D, E, F, G>(
  Union7<A, B, C, D, E, F, G> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
) =>
    sixth(union._value as F);
T _seventh7<T, A, B, C, D, E, F, G>(
  Union7<A, B, C, D, E, F, G> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
) =>
    seventh(union._value as G);

T _first8<T, A, B, C, D, E, F, G, H>(
  Union8<A, B, C, D, E, F, G, H> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
) =>
    first(union._value as A);
T _second8<T, A, B, C, D, E, F, G, H>(
  Union8<A, B, C, D, E, F, G, H> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
) =>
    second(union._value as B);
T _third8<T, A, B, C, D, E, F, G, H>(
  Union8<A, B, C, D, E, F, G, H> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
) =>
    third(union._value as C);
T _forth8<T, A, B, C, D, E, F, G, H>(
  Union8<A, B, C, D, E, F, G, H> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
) =>
    forth(union._value as D);
T _fifth8<T, A, B, C, D, E, F, G, H>(
  Union8<A, B, C, D, E, F, G, H> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
) =>
    fifth(union._value as E);
T _sixth8<T, A, B, C, D, E, F, G, H>(
  Union8<A, B, C, D, E, F, G, H> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
) =>
    sixth(union._value as F);
T _seventh8<T, A, B, C, D, E, F, G, H>(
  Union8<A, B, C, D, E, F, G, H> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
) =>
    seventh(union._value as G);
T _eighth8<T, A, B, C, D, E, F, G, H>(
  Union8<A, B, C, D, E, F, G, H> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
) =>
    eighth(union._value as H);

T _first9<T, A, B, C, D, E, F, G, H, I>(
  Union9<A, B, C, D, E, F, G, H, I> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
  T ninth(I i),
) =>
    first(union._value as A);
T _second9<T, A, B, C, D, E, F, G, H, I>(
  Union9<A, B, C, D, E, F, G, H, I> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
  T ninth(I i),
) =>
    second(union._value as B);
T _third9<T, A, B, C, D, E, F, G, H, I>(
  Union9<A, B, C, D, E, F, G, H, I> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
  T ninth(I i),
) =>
    third(union._value as C);
T _forth9<T, A, B, C, D, E, F, G, H, I>(
  Union9<A, B, C, D, E, F, G, H, I> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
  T ninth(I i),
) =>
    forth(union._value as D);
T _fifth9<T, A, B, C, D, E, F, G, H, I>(
  Union9<A, B, C, D, E, F, G, H, I> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
  T ninth(I i),
) =>
    fifth(union._value as E);
T _sixth9<T, A, B, C, D, E, F, G, H, I>(
  Union9<A, B, C, D, E, F, G, H, I> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
  T ninth(I i),
) =>
    sixth(union._value as F);
T _seventh9<T, A, B, C, D, E, F, G, H, I>(
  Union9<A, B, C, D, E, F, G, H, I> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
  T ninth(I i),
) =>
    seventh(union._value as G);
T _eighth9<T, A, B, C, D, E, F, G, H, I>(
  Union9<A, B, C, D, E, F, G, H, I> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
  T ninth(I i),
) =>
    eighth(union._value as H);
T _ninth9<T, A, B, C, D, E, F, G, H, I>(
  Union9<A, B, C, D, E, F, G, H, I> union,
  T first(A a),
  T second(B b),
  T third(C c),
  T forth(D d),
  T fifth(E e),
  T sixth(F f),
  T seventh(G g),
  T eighth(H h),
  T ninth(I i),
) =>
    ninth(union._value as I);

/// {@template union}
/// A class that holds a value which can be of different types, and allow
/// manipulating that value in a type-safe way.
///
/// Unions comes in different variants, where the class name "Union" is
/// suffixed by a number (such as [Union2] or [Union3]).
/// That number represents the number of different types the value stored
/// can take.
///
/// For example, if a value can be both a [String] and a [int], that makes
/// two different types. We can therefore use [Union2] like so:
///
/// ```dart
/// Union2<String, int> myUnion;
/// ```
/// or:
/// ```dart
/// Union2<int, String> myUnion;
/// ```
///
///
/// Note that we cannot assign `Union2<int, String>` to `Union2<String, int>`
/// (or the opposite).
///
/// # Assigning a value to a union
///
/// We've seen previously that a `Union2<String, int>` stores a value that is
/// either a [String] or an [int].
///
/// But such union **cannot** contain a type that is neither [String] nor [int].
///
/// As such, to ensure the type safety, instead of a single constructor that
/// take the current value of any given type, unions have multiple constructor:
/// One constructor for each type.
///
/// For example, `Union2<String, int>` expose two constructors:
/// - `new Union2.first(String value)`
/// - `new Union2.second(int value)`
///
/// Whereas `Union4<String, int, double, List<int>>` have four constructors:
/// - `new Union4.first(String value)`
/// - `new Union4.second(int value)`
/// - `new Union4.third(double value)`
/// - `new Union4.forth(List<int> value)`
///
///
/// We can therefore do:
///
/// ```dart
/// Union2<String, int> myUnion;
///
/// myUnion = Union2.first('hello world');
/// myUnion = Union2.second(42);
/// ```
///
/// # Reading the value
///
/// Unions expose the current value publicly through [value].
///
/// But since the value can be of different types, a small trick is necessary
/// to preserve type safety:
///
/// On a `Union2<SomeClass, AnotherClass>`, the type of [value] is neither of
/// type `SomeClass` nor of type `AnotherClass`.
/// Instead it has the type of their nearest common interface.
///
///
/// ```dart
/// Union2<String, int> example;
/// // String and int have no shared, so value is of type Object
/// Object value = example.value;
/// int impossible = example.value; // COMPILE ERROR, not type safe
///
/// Union2<int, double> example2;
/// // int and double have a common interface: num. Therefore is of type num
/// num value2 = example2.value; // type safe, there's no cast or compile error.
/// int stillImpossible = example2.value; // COMPILE ERROR, value is a num not a int
///
/// Union2<String, String> example3;
/// // The type is always a String, so value is a String too
/// String value3 = example3.value; // type safe, there's no cast or compile error.
/// ```
///
/// NOTE:
/// Such powerful type inference is made possible only thanks to type extension.
///
/// # Applying operations on the value
///
/// To prevent mistakes, it is not recommended to use the `is` operator to
/// determine what the value currently is.
///
/// **DON'T:**
///
/// ```dart
/// Union2<String, int> union;
/// if (union.value is String) {
///   print('String: ${union.value}');
/// } else if (union.value is int) {
///   print('int: ${union.value}');
/// }
/// ```
///
/// This is a bad practice because it is easy to forget to handle one of the
/// potential types that the value can take.
///
/// Instead, use one of the availble methods on unions, such as:
/// - [map], which transforms the current value in another value.
/// - [forEach], which allows performing some logic based on the value type.
/// - [join], which fuse all the different types in a single type.
///
/// **DO:**
/// ```dart
/// Union2<String, int> union;
/// union.forEach(
///   (String value) => print('String: $value'),
///   (int value) => print('int: $value'),
/// );
/// ```
///
/// This is better because the code will not compile if we forgot to handle
/// one of the potential types that [value] can take.
/// {@endtemplate}
class Union2<A, B> extends _UnionBase {
  /// Create a union from its first generic type
  const Union2.first(A value)
      : _join = _first2,
        super(value);

  /// Create a union from its second generic type
  const Union2.second(B value)
      : _join = _second2,
        super(value);

  @override
  final T Function<T, A, B>(
    Union2<A, B> union,
    T Function(A a),
    T Function(B b),
  ) _join;

  /// {@template union.forEach}
  /// Allow executing custom logic based on the value type in a type safe way.
  ///
  /// Prefer using this method over the `is` operator.
  ///
  /// The [forEach] method voluntarily forces the code to handle all types that
  /// the value can take, whereas `is` doesn't.
  ///
  /// As such, while we can do:
  ///
  /// ```dart
  /// Union2<String, int> union;
  ///
  /// if (union.value is int) {
  ///   final value = union.value as int;
  ///   print(value);
  /// }
  /// // Voluntarily do nothing with String
  /// ```
  ///
  /// This code has a few issues:
  /// - it requires a cast
  /// - it is implicit instead of explicit that `String` is not handled.
  ///   This makes the code harder to read: is it a mistake or desired?
  /// - if in the future the union changes (a type changed or a new type is
  ///   added), then we may forget to update this specific piece of code.
  ///
  /// Instead, we can use [forEach] like so:
  ///
  /// ```dart
  /// Union2<String, int> union;
  ///
  /// union.forEach(
  ///   null, // we explicitly don't handle String
  ///   (value) => print(value),
  /// );
  /// ```
  ///
  /// This is equivalent to the previous code with a few benefits:
  /// - no cast
  /// - not handling a specific type is now explicit: we now know for sure
  ///   that it's _desired_.
  /// - if we later refactor `Union2<String, int>` into
  ///   `Union2<String, num>` or `Union3<String, int, Whatever>`, than we may
  ///   have a compile error.
  ///
  ///   This ensures that there's no invalid/dead code that we forgot to update.
  /// {@endtemplate}
  /// Callbacks can be `null`, but all callbacks are required.
  void forEach(
    void first(A value),
    void second(B value),
  ) {
    return _join(
      this,
      first ?? _noop,
      second ?? _noop,
    );
  }

  /// {@template union.join}
  /// Transform all the potential types that [value] can take into a single
  /// unique type.
  ///
  /// For example, we can use [join] to convert a `Union2<String, int>` into
  /// an [int]:
  ///
  /// ```dart
  /// Union2<String, int> union2;
  ///
  /// int result = union2.join(
  ///   (value) => int.tryParse(value) ?? 0,
  ///   (value) => value,
  /// );
  /// ```
  ///
  /// Alternatively, [join] can return unions too, for more advanced cases that
  /// [map] cannot handle.
  ///
  /// For example, we could use [join] to transform `Union2<String, int>` into
  /// `Union2<int, FormatException>`, to have a clean error handling on parse
  /// errors:
  ///
  /// ```dart
  /// Union2<String, int> union2;
  ///
  /// Union2<int, FormatException> res = union2.join(
  ///   (value) {
  ///     final parsed = int.tryParse(value);
  ///     return parsed != null
  ///         ? Union2.first(parsed)
  ///         : Union2.second(FormatException());
  ///   },
  ///   (value) => Union2.first(value),
  /// );
  /// ```
  /// {@endtemplate}
  // ignore: missing_return, the switch always returns
  T join<T>(
    T first(A value),
    T second(B value),
  ) {
    return _join<T, A, B>(
      this,
      first ?? _noop,
      second ?? _noop,
    );
  }

  /// {@template union.map}
  /// Transforms a union into another union of potentially different types.
  ///
  /// The [map] function is useful when we want to modify the current value,
  /// and the result is still a union.
  ///
  /// Example:
  ///
  /// ```dart
  /// Union2<String, int> union;
  ///
  /// Union2<String, int> modifiedValue = union.map(
  ///   (value) => 'Hello $value',
  ///   (value) => value * 2,
  /// );
  /// ```
  ///
  /// This previous snippet will do two things:
  /// - if the value is a [String], it'll prefix the value by `Hello `.
  /// - if it's an [int] instead, the value will be multiplied by 2.
  ///
  /// So original union is not modified, and a new union is created instead.
  ///
  /// The result of a callback doesn't have to be of the same type than the
  /// value type.
  ///
  /// See also:
  ///  - [join], similar to map but with more freedom on the result.
  /// {@endtemplate}
  // ignore: missing_return, the switch always return
  Union2<A2, B2> map<A2, B2>(
    A2 first(A value),
    B2 second(B value),
  ) {
    return _join<Union2<A2, B2>, A, B>(
      this,
      (value) => Union2.first(first(value)),
      (value) => Union2.second(second(value)),
    );
  }
}

/// {@macro union}
class Union3<A, B, C> extends _UnionBase {
  /// Create a union from its first generic type
  const Union3.first(A value)
      : _join = _first3,
        super(value);

  /// Create a union from its second generic type
  const Union3.second(B value)
      : _join = _second3,
        super(value);

  /// Create a union from its third generic type
  const Union3.third(C value)
      : _join = _third3,
        super(value);

  @override
  final T Function<T, A, B, C>(
    Union3<A, B, C> union,
    T Function(A a),
    T Function(B b),
    T Function(C c),
  ) _join;

  /// {@macro union.forEach}
  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
  ) {
    return _join(
      this,
      first ?? _noop,
      second ?? _noop,
      third ?? _noop,
    );
  }

  /// {@macro union.join}
  // ignore: missing_return, the switch always returns
  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
  ) {
    return _join(
      this,
      first,
      second,
      third,
    );
  }

  /// {@macro union.map}
  // ignore: missing_return, the switch always returns
  Union3<A2, B2, C2> map<A2, B2, C2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
  ) {
    return _join<Union3<A2, B2, C2>, A, B, C>(
      this,
      (value) => Union3.first(first(value)),
      (value) => Union3.second(second(value)),
      (value) => Union3.third(third(value)),
    );
  }
}

/// {@macro union}
class Union4<A, B, C, D> extends _UnionBase {
  /// Create a union from its first generic type
  const Union4.first(A value)
      : _join = _first4,
        super(value);

  /// Create a union from its second generic type
  const Union4.second(B value)
      : _join = _second4,
        super(value);

  /// Create a union from its third generic type
  const Union4.third(C value)
      : _join = _third4,
        super(value);

  /// Create a union from its forth generic type
  const Union4.forth(D value)
      : _join = _forth4,
        super(value);

  @override
  final T Function<T, A, B, C, D>(
    Union4<A, B, C, D> union,
    T Function(A a),
    T Function(B b),
    T Function(C c),
    T Function(D c),
  ) _join;

  /// {@macro union.forEach}
  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
  ) {
    return _join(
      this,
      first ?? _noop,
      second ?? _noop,
      third ?? _noop,
      forth ?? _noop,
    );
  }

  /// {@macro union.join}
  // ignore: missing_return, the switch always returns
  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
    T forth(D value),
  ) {
    return _join(
      this,
      first,
      second,
      third,
      forth,
    );
  }

  /// {@macro union.map}
  // ignore: missing_return, the switch always returns
  Union4<A2, B2, C2, D2> map<A2, B2, C2, D2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
    D2 forth(D value),
  ) {
    return _join<Union4<A2, B2, C2, D2>, A, B, C, D>(
      this,
      (value) => Union4.first(first(value)),
      (value) => Union4.second(second(value)),
      (value) => Union4.third(third(value)),
      (value) => Union4.forth(forth(value)),
    );
  }
}

/// {@macro union}
class Union5<A, B, C, D, E> extends _UnionBase {
  /// Create a union from its first generic type
  const Union5.first(A value)
      : _join = _first5,
        super(value);

  /// Create a union from its second generic type
  const Union5.second(B value)
      : _join = _second5,
        super(value);

  /// Create a union from its third generic type
  const Union5.third(C value)
      : _join = _third5,
        super(value);

  /// Create a union from its forth generic type
  const Union5.forth(D value)
      : _join = _forth5,
        super(value);

  /// Create a union from its seventh generic type
  const Union5.fifth(E value)
      : _join = _fifth5,
        super(value);

  @override
  final T Function<T, A, B, C, D, E>(
    Union5<A, B, C, D, E> union,
    T Function(A a),
    T Function(B b),
    T Function(C c),
    T Function(D c),
    T Function(E c),
  ) _join;

  /// {@macro union.forEach}
  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
    void fifth(E value),
  ) {
    return _join(
      this,
      first ?? _noop,
      second ?? _noop,
      third ?? _noop,
      forth ?? _noop,
      fifth ?? _noop,
    );
  }

  /// {@macro union.join}
  // ignore: missing_return, the switch always returns
  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
    T forth(D value),
    T fifth(E value),
  ) {
    return _join(
      this,
      first,
      second,
      third,
      forth,
      fifth,
    );
  }

  /// {@macro union.map}
  // ignore: missing_return, the switch always returns
  Union5<A2, B2, C2, D2, E2> map<A2, B2, C2, D2, E2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
    D2 forth(D value),
    E2 fifth(E value),
  ) {
    return _join<Union5<A2, B2, C2, D2, E2>, A, B, C, D, E>(
      this,
      (value) => Union5.first(first(value)),
      (value) => Union5.second(second(value)),
      (value) => Union5.third(third(value)),
      (value) => Union5.forth(forth(value)),
      (value) => Union5.fifth(fifth(value)),
    );
  }
}

/// {@macro union}
class Union6<A, B, C, D, E, F> extends _UnionBase {
  /// Create a union from its first generic type
  const Union6.first(A value)
      : _join = _first6,
        super(value);

  /// Create a union from its second generic type
  const Union6.second(B value)
      : _join = _second6,
        super(value);

  /// Create a union from its third generic type
  const Union6.third(C value)
      : _join = _third6,
        super(value);

  /// Create a union from its forth generic type
  const Union6.forth(D value)
      : _join = _forth6,
        super(value);

  /// Create a union from its seventh generic type
  const Union6.fifth(E value)
      : _join = _fifth6,
        super(value);

  /// Create a union from its seventh generic type
  const Union6.sixth(F value)
      : _join = _sixth6,
        super(value);

  @override
  final T Function<T, A, B, C, D, E, F>(
    Union6<A, B, C, D, E, F> union,
    T Function(A a),
    T Function(B b),
    T Function(C c),
    T Function(D c),
    T Function(E c),
    T Function(F c),
  ) _join;

  /// {@macro union.forEach}
  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
    void fifth(E value),
    void sixth(F value),
  ) {
    return _join(
      this,
      first ?? _noop,
      second ?? _noop,
      third ?? _noop,
      forth ?? _noop,
      fifth ?? _noop,
      sixth ?? _noop,
    );
  }

  /// {@macro union.join}
  // ignore: missing_return, the switch always returns
  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
    T forth(D value),
    T fifth(E value),
    T sixth(F value),
  ) {
    return _join(
      this,
      first,
      second,
      third,
      forth,
      fifth,
      sixth,
    );
  }

  /// {@macro union.map}
  // ignore: missing_return, the switch always returns
  Union6<A2, B2, C2, D2, E2, F2> map<A2, B2, C2, D2, E2, F2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
    D2 forth(D value),
    E2 fifth(E value),
    F2 sixth(F value),
  ) {
    return _join<Union6<A2, B2, C2, D2, E2, F2>, A, B, C, D, E, F>(
      this,
      (value) => Union6.first(first(value)),
      (value) => Union6.second(second(value)),
      (value) => Union6.third(third(value)),
      (value) => Union6.forth(forth(value)),
      (value) => Union6.fifth(fifth(value)),
      (value) => Union6.sixth(sixth(value)),
    );
  }
}

/// {@macro union}
class Union7<A, B, C, D, E, F, G> extends _UnionBase {
  /// Create a union from its first generic type
  const Union7.first(A value)
      : _join = _first7,
        super(value);

  /// Create a union from its second generic type
  const Union7.second(B value)
      : _join = _second7,
        super(value);

  /// Create a union from its third generic type
  const Union7.third(C value)
      : _join = _third7,
        super(value);

  /// Create a union from its forth generic type
  const Union7.forth(D value)
      : _join = _forth7,
        super(value);

  /// Create a union from its seventh generic type
  const Union7.fifth(E value)
      : _join = _fifth7,
        super(value);

  /// Create a union from its seventh generic type
  const Union7.sixth(F value)
      : _join = _sixth7,
        super(value);

  /// Create a union from its seventh generic type
  const Union7.seventh(G value)
      : _join = _seventh7,
        super(value);

  @override
  final T Function<T, A, B, C, D, E, F, G>(
    Union7<A, B, C, D, E, F, G> union,
    T Function(A a),
    T Function(B b),
    T Function(C c),
    T Function(D c),
    T Function(E c),
    T Function(F c),
    T Function(G c),
  ) _join;

  /// {@macro union.forEach}
  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
    void fifth(E value),
    void sixth(F value),
    void seventh(G value),
  ) {
    return _join(
      this,
      first ?? _noop,
      second ?? _noop,
      third ?? _noop,
      forth ?? _noop,
      fifth ?? _noop,
      sixth ?? _noop,
      seventh ?? _noop,
    );
  }

  /// {@macro union.join}
  // ignore: missing_return, the switch always returns
  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
    T forth(D value),
    T fifth(E value),
    T sixth(F value),
    T seventh(G value),
  ) {
    return _join(
      this,
      first,
      second,
      third,
      forth,
      fifth,
      sixth,
      seventh,
    );
  }

  /// {@macro union.map}
  // ignore: missing_return, the switch always returns
  Union7<A2, B2, C2, D2, E2, F2, G2> map<A2, B2, C2, D2, E2, F2, G2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
    D2 forth(D value),
    E2 fifth(E value),
    F2 sixth(F value),
    G2 seventh(G value),
  ) {
    return _join<Union7<A2, B2, C2, D2, E2, F2, G2>, A, B, C, D, E, F, G>(
      this,
      (value) => Union7.first(first(value)),
      (value) => Union7.second(second(value)),
      (value) => Union7.third(third(value)),
      (value) => Union7.forth(forth(value)),
      (value) => Union7.fifth(fifth(value)),
      (value) => Union7.sixth(sixth(value)),
      (value) => Union7.seventh(seventh(value)),
    );
  }
}

/// {@macro union}
class Union8<A, B, C, D, E, F, G, H> extends _UnionBase {
  /// Create a union from its first generic type
  const Union8.first(A value)
      : _join = _first8,
        super(value);

  /// Create a union from its second generic type
  const Union8.second(B value)
      : _join = _second8,
        super(value);

  /// Create a union from its third generic type
  const Union8.third(C value)
      : _join = _third8,
        super(value);

  /// Create a union from its forth generic type
  const Union8.forth(D value)
      : _join = _forth8,
        super(value);

  /// Create a union from its seventh generic type
  const Union8.fifth(E value)
      : _join = _fifth8,
        super(value);

  /// Create a union from its seventh generic type
  const Union8.sixth(F value)
      : _join = _sixth8,
        super(value);

  /// Create a union from its seventh generic type
  const Union8.seventh(G value)
      : _join = _seventh8,
        super(value);

  /// Create a union from its eighth generic type
  const Union8.eighth(H value)
      : _join = _eighth8,
        super(value);

  @override
  final T Function<T, A, B, C, D, E, F, G, H>(
    Union8<A, B, C, D, E, F, G, H> union,
    T Function(A a),
    T Function(B b),
    T Function(C c),
    T Function(D c),
    T Function(E c),
    T Function(F c),
    T Function(G c),
    T Function(H c),
  ) _join;

  /// {@macro union.forEach}
  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
    void fifth(E value),
    void sixth(F value),
    void seventh(G value),
    void eighth(H value),
  ) {
    return _join(
      this,
      first ?? _noop,
      second ?? _noop,
      third ?? _noop,
      forth ?? _noop,
      fifth ?? _noop,
      sixth ?? _noop,
      seventh ?? _noop,
      eighth ?? _noop,
    );
  }

  /// {@macro union.join}
  // ignore: missing_return, the switch always returns
  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
    T forth(D value),
    T fifth(E value),
    T sixth(F value),
    T seventh(G value),
    T eighth(H value),
  ) {
    return _join(
      this,
      first,
      second,
      third,
      forth,
      fifth,
      sixth,
      seventh,
      eighth,
    );
  }

  /// {@macro union.map}
  // ignore: missing_return, the switch always returns
  Union8<A2, B2, C2, D2, E2, F2, G2, H2> map<A2, B2, C2, D2, E2, F2, G2, H2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
    D2 forth(D value),
    E2 fifth(E value),
    F2 sixth(F value),
    G2 seventh(G value),
    H2 eighth(H value),
  ) {
    return _join<Union8<A2, B2, C2, D2, E2, F2, G2, H2>, A, B, C, D, E, F, G,
        H>(
      this,
      (value) => Union8.first(first(value)),
      (value) => Union8.second(second(value)),
      (value) => Union8.third(third(value)),
      (value) => Union8.forth(forth(value)),
      (value) => Union8.fifth(fifth(value)),
      (value) => Union8.sixth(sixth(value)),
      (value) => Union8.seventh(seventh(value)),
      (value) => Union8.eighth(eighth(value)),
    );
  }
}

/// {@macro union}
class Union9<A, B, C, D, E, F, G, H, I> extends _UnionBase {
  /// Create a union from its first generic type
  const Union9.first(A value)
      : _join = _first9,
        super(value);

  /// Create a union from its second generic type
  const Union9.second(B value)
      : _join = _second9,
        super(value);

  /// Create a union from its third generic type
  const Union9.third(C value)
      : _join = _third9,
        super(value);

  /// Create a union from its forth generic type
  const Union9.forth(D value)
      : _join = _forth9,
        super(value);

  /// Create a union from its seventh generic type
  const Union9.fifth(E value)
      : _join = _fifth9,
        super(value);

  /// Create a union from its seventh generic type
  const Union9.sixth(F value)
      : _join = _sixth9,
        super(value);

  /// Create a union from its seventh generic type
  const Union9.seventh(G value)
      : _join = _seventh9,
        super(value);

  /// Create a union from its eighth generic type
  const Union9.eighth(H value)
      : _join = _eighth9,
        super(value);

  /// Create a union from its ninth generic type
  const Union9.ninth(I value)
      : _join = _ninth9,
        super(value);

  @override
  final T Function<T, A, B, C, D, E, F, G, H, I>(
    Union9<A, B, C, D, E, F, G, H, I> union,
    T Function(A a),
    T Function(B b),
    T Function(C c),
    T Function(D c),
    T Function(E c),
    T Function(F c),
    T Function(G c),
    T Function(H c),
    T Function(I c),
  ) _join;

  /// {@macro union.forEach}
  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
    void fifth(E value),
    void sixth(F value),
    void seventh(G value),
    void eighth(H value),
    void ninth(I value),
  ) {
    return _join(
      this,
      first ?? _noop,
      second ?? _noop,
      third ?? _noop,
      forth ?? _noop,
      fifth ?? _noop,
      sixth ?? _noop,
      seventh ?? _noop,
      eighth ?? _noop,
      ninth ?? _noop,
    );
  }

  /// {@macro union.join}
  // ignore: missing_return, the switch always returns
  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
    T forth(D value),
    T fifth(E value),
    T sixth(F value),
    T seventh(G value),
    T eighth(H value),
    T ninth(I value),
  ) {
    return _join(
      this,
      first,
      second,
      third,
      forth,
      fifth,
      sixth,
      seventh,
      eighth,
      ninth,
    );
  }

  /// {@macro union.map}
  // ignore: missing_return, the switch always returns
  Union9<A2, B2, C2, D2, E2, F2, G2, H2, I2>
      map<A2, B2, C2, D2, E2, F2, G2, H2, I2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
    D2 forth(D value),
    E2 fifth(E value),
    F2 sixth(F value),
    G2 seventh(G value),
    H2 eighth(H value),
    I2 ninth(I value),
  ) {
    return _join<Union9<A2, B2, C2, D2, E2, F2, G2, H2, I2>, A, B, C, D, E, F,
        G, H, I>(
      this,
      (value) => Union9.first(first(value)),
      (value) => Union9.second(second(value)),
      (value) => Union9.third(third(value)),
      (value) => Union9.forth(forth(value)),
      (value) => Union9.fifth(fifth(value)),
      (value) => Union9.sixth(sixth(value)),
      (value) => Union9.seventh(seventh(value)),
      (value) => Union9.eighth(eighth(value)),
      (value) => Union9.ninth(ninth(value)),
    );
  }
}

/// An extension that expose the current value.
extension Union2Value<A> on Union2<A, A> {
  /// {@template union.value}
  /// The current value of the union.
  ///
  /// Its type is based the nearest common interface of all the types
  /// that the value can take.
  ///
  /// See [Union2] for examples on how [value] works.
  /// {@endtemplate}
  A get value => _value as A;
}

/// An extension that expose the current value.
extension Union3Value<A> on Union3<A, A, A> {
  /// {@macro union.value}
  A get value => _value as A;
}

/// An extension that expose the current value.
extension Union4Value<A> on Union4<A, A, A, A> {
  /// {@macro union.value}
  A get value => _value as A;
}

/// An extension that expose the current value.
extension Union5Value<A> on Union5<A, A, A, A, A> {
  /// {@macro union.value}
  A get value => _value as A;
}

/// An extension that expose the current value.
extension Union6Value<A> on Union6<A, A, A, A, A, A> {
  /// {@macro union.value}
  A get value => _value as A;
}

/// An extension that expose the current value.
extension Union7Value<A> on Union7<A, A, A, A, A, A, A> {
  /// {@macro union.value}
  A get value => _value as A;
}

/// An extension that expose the current value.
extension Union8Value<A> on Union8<A, A, A, A, A, A, A, A> {
  /// {@macro union.value}
  A get value => _value as A;
}

/// An extension that expose the current value.
extension Union9Value<A> on Union9<A, A, A, A, A, A, A, A, A> {
  /// {@macro union.value}
  A get value => _value as A;
}
