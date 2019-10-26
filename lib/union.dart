enum _Union {
  first,
  second,
  third,
  forth,
  fifth,
  sixth,
  seventh,
  eighth,
  ninth,
}

abstract class _UnionBase {
  /// Create a union from _UnionBase first generic type
  const _UnionBase(this._value, this._type);

  final _Union _type;
  final Object _value;

  @override
  bool operator ==(Object other) {
    return other is _UnionBase &&
        runtimeType == other.runtimeType &&
        other._type == _type &&
        other._value == _value;
  }

  @override
  int get hashCode => runtimeType.hashCode ^ _type.hashCode ^ _value.hashCode;
}

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
  const Union2.first(A value) : super(value, _Union.first);

  /// Create a union from its second generic type
  const Union2.second(B value) : super(value, _Union.second);

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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first?.call(_value as A);
      case _Union.second:
        return second?.call(_value as B);
    }
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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
    }
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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return Union2.first(first(_value as A));
      case _Union.second:
        return Union2.second(second(_value as B));
    }
  }
}

/// {@macro union}
class Union3<A, B, C> extends _UnionBase {
  /// Create a union from its first generic type
  const Union3.first(A value) : super(value, _Union.first);

  /// Create a union from its second generic type
  const Union3.second(B value) : super(value, _Union.second);

  /// Create a union from its third generic type
  const Union3.third(C value) : super(value, _Union.third);

  /// {@macro union.forEach}
  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
  ) {
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first?.call(_value as A);
      case _Union.second:
        return second?.call(_value as B);
      case _Union.third:
        return third?.call(_value as C);
    }
  }

  /// {@macro union.join}
  // ignore: missing_return, the switch always returns
  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
  ) {
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      case _Union.third:
        return third(_value as C);
    }
  }

  /// {@macro union.map}
  // ignore: missing_return, the switch always returns
  Union3<A2, B2, C2> map<A2, B2, C2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
  ) {
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return Union3.first(first(_value as A));
      case _Union.second:
        return Union3.second(second(_value as B));
      case _Union.third:
        return Union3.third(third(_value as C));
    }
  }
}

/// {@macro union}
class Union4<A, B, C, D> extends _UnionBase {
  /// Create a union from its first generic type
  const Union4.first(A value) : super(value, _Union.first);

  /// Create a union from its second generic type
  const Union4.second(B value) : super(value, _Union.second);

  /// Create a union from its third generic type
  const Union4.third(C value) : super(value, _Union.third);

  /// Create a union from its forth generic type
  const Union4.forth(D value) : super(value, _Union.forth);

  /// {@macro union.forEach}
  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
  ) {
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first?.call(_value as A);
      case _Union.second:
        return second?.call(_value as B);
      case _Union.third:
        return third?.call(_value as C);
      case _Union.forth:
        return forth?.call(_value as D);
    }
  }

  /// {@macro union.join}
  // ignore: missing_return, the switch always returns
  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
    T forth(D value),
  ) {
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      case _Union.third:
        return third(_value as C);
      case _Union.forth:
        return forth(_value as D);
    }
  }

  /// {@macro union.map}
  // ignore: missing_return, the switch always return
  Union4<A2, B2, C2, D2> map<A2, B2, C2, D2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
    D2 forth(D value),
  ) {
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return Union4.first(first(_value as A));
      case _Union.second:
        return Union4.second(second(_value as B));
      case _Union.third:
        return Union4.third(third(_value as C));
      case _Union.forth:
        return Union4.forth(forth(_value as D));
    }
  }
}

/// {@macro union}
class Union5<A, B, C, D, E> extends _UnionBase {
  /// Create a union from its first generic type
  const Union5.first(A value) : super(value, _Union.first);

  /// Create a union from its second generic type
  const Union5.second(B value) : super(value, _Union.second);

  /// Create a union from its third generic type
  const Union5.third(C value) : super(value, _Union.third);

  /// Create a union from its forth generic type
  const Union5.forth(D value) : super(value, _Union.forth);

  /// Create a union from its fifth generic type
  const Union5.fifth(E value) : super(value, _Union.fifth);

  /// {@macro union.forEach}
  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
    void fifth(E value),
  ) {
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first?.call(_value as A);
      case _Union.second:
        return second?.call(_value as B);
      case _Union.third:
        return third?.call(_value as C);
      case _Union.forth:
        return forth?.call(_value as D);
      case _Union.fifth:
        return fifth?.call(_value as E);
    }
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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      case _Union.third:
        return third(_value as C);
      case _Union.forth:
        return forth(_value as D);
      case _Union.fifth:
        return fifth(_value as E);
    }
  }

  /// {@macro union.map}
  // ignore: missing_return, the switch always return
  Union5<A2, B2, C2, D2, E2> map<A2, B2, C2, D2, E2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
    D2 forth(D value),
    E2 fifth(E value),
  ) {
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return Union5.first(first(_value as A));
      case _Union.second:
        return Union5.second(second(_value as B));
      case _Union.third:
        return Union5.third(third(_value as C));
      case _Union.forth:
        return Union5.forth(forth(_value as D));
      case _Union.fifth:
        return Union5.fifth(fifth(_value as E));
    }
  }
}

/// {@macro union}
class Union6<A, B, C, D, E, F> extends _UnionBase {
  /// Create a union from its first generic type
  const Union6.first(A value) : super(value, _Union.first);

  /// Create a union from its second generic type
  const Union6.second(B value) : super(value, _Union.second);

  /// Create a union from its third generic type
  const Union6.third(C value) : super(value, _Union.third);

  /// Create a union from its forth generic type
  const Union6.forth(D value) : super(value, _Union.forth);

  /// Create a union from its fifth generic type
  const Union6.fifth(E value) : super(value, _Union.fifth);

  /// Create a union from its sixth generic type
  const Union6.sixth(F value) : super(value, _Union.sixth);

  /// {@macro union.forEach}
  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
    void fifth(E value),
    void sixth(F value),
  ) {
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first?.call(_value as A);
      case _Union.second:
        return second?.call(_value as B);
      case _Union.third:
        return third?.call(_value as C);
      case _Union.forth:
        return forth?.call(_value as D);
      case _Union.fifth:
        return fifth?.call(_value as E);
      case _Union.sixth:
        return sixth?.call(_value as F);
    }
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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      case _Union.third:
        return third(_value as C);
      case _Union.forth:
        return forth(_value as D);
      case _Union.fifth:
        return fifth(_value as E);
      case _Union.sixth:
        return sixth(_value as F);
    }
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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return Union6.first(first(_value as A));
      case _Union.second:
        return Union6.second(second(_value as B));
      case _Union.third:
        return Union6.third(third(_value as C));
      case _Union.forth:
        return Union6.forth(forth(_value as D));
      case _Union.fifth:
        return Union6.fifth(fifth(_value as E));
      case _Union.sixth:
        return Union6.sixth(sixth(_value as F));
    }
  }
}

/// {@macro union}
class Union7<A, B, C, D, E, F, G> extends _UnionBase {
  /// Create a union from its first generic type
  const Union7.first(A value) : super(value, _Union.first);

  /// Create a union from its second generic type
  const Union7.second(B value) : super(value, _Union.second);

  /// Create a union from its third generic type
  const Union7.third(C value) : super(value, _Union.third);

  /// Create a union from its forth generic type
  const Union7.forth(D value) : super(value, _Union.forth);

  /// Create a union from its fifth generic type
  const Union7.fifth(E value) : super(value, _Union.fifth);

  /// Create a union from its sixth generic type
  const Union7.sixth(F value) : super(value, _Union.sixth);

  /// Create a union from its seventh generic type
  const Union7.seventh(G value) : super(value, _Union.seventh);

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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first?.call(_value as A);
      case _Union.second:
        return second?.call(_value as B);
      case _Union.third:
        return third?.call(_value as C);
      case _Union.forth:
        return forth?.call(_value as D);
      case _Union.fifth:
        return fifth?.call(_value as E);
      case _Union.sixth:
        return sixth?.call(_value as F);
      case _Union.seventh:
        return seventh?.call(_value as G);
    }
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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      case _Union.third:
        return third(_value as C);
      case _Union.forth:
        return forth(_value as D);
      case _Union.fifth:
        return fifth(_value as E);
      case _Union.sixth:
        return sixth(_value as F);
      case _Union.seventh:
        return seventh(_value as G);
    }
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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return Union7.first(first(_value as A));
      case _Union.second:
        return Union7.second(second(_value as B));
      case _Union.third:
        return Union7.third(third(_value as C));
      case _Union.forth:
        return Union7.forth(forth(_value as D));
      case _Union.fifth:
        return Union7.fifth(fifth(_value as E));
      case _Union.sixth:
        return Union7.sixth(sixth(_value as F));
      case _Union.seventh:
        return Union7.seventh(seventh(_value as G));
    }
  }
}

/// {@macro union}
class Union8<A, B, C, D, E, F, G, H> extends _UnionBase {
  /// Create a union from its first generic type
  const Union8.first(A value) : super(value, _Union.first);

  /// Create a union from its second generic type
  const Union8.second(B value) : super(value, _Union.second);

  /// Create a union from its third generic type
  const Union8.third(C value) : super(value, _Union.third);

  /// Create a union from its forth generic type
  const Union8.forth(D value) : super(value, _Union.forth);

  /// Create a union from its fifth generic type
  const Union8.fifth(E value) : super(value, _Union.fifth);

  /// Create a union from its sixth generic type
  const Union8.sixth(F value) : super(value, _Union.sixth);

  /// Create a union from its seventh generic type
  const Union8.seventh(G value) : super(value, _Union.seventh);

  /// Create a union from its eighth generic type
  const Union8.eighth(H value) : super(value, _Union.eighth);

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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first?.call(_value as A);
      case _Union.second:
        return second?.call(_value as B);
      case _Union.third:
        return third?.call(_value as C);
      case _Union.forth:
        return forth?.call(_value as D);
      case _Union.fifth:
        return fifth?.call(_value as E);
      case _Union.sixth:
        return sixth?.call(_value as F);
      case _Union.seventh:
        return seventh?.call(_value as G);
      case _Union.eighth:
        return eighth?.call(_value as H);
    }
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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      case _Union.third:
        return third(_value as C);
      case _Union.forth:
        return forth(_value as D);
      case _Union.fifth:
        return fifth(_value as E);
      case _Union.sixth:
        return sixth(_value as F);
      case _Union.seventh:
        return seventh(_value as G);
      case _Union.eighth:
        return eighth(_value as H);
    }
  }

  /// {@macro union.map}
  // ignore: missing_return, the switch always return
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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return Union8.first(first(_value as A));
      case _Union.second:
        return Union8.second(second(_value as B));
      case _Union.third:
        return Union8.third(third(_value as C));
      case _Union.forth:
        return Union8.forth(forth(_value as D));
      case _Union.fifth:
        return Union8.fifth(fifth(_value as E));
      case _Union.sixth:
        return Union8.sixth(sixth(_value as F));
      case _Union.seventh:
        return Union8.seventh(seventh(_value as G));
      case _Union.eighth:
        return Union8.eighth(eighth(_value as H));
    }
  }
}

/// {@macro union}
class Union9<A, B, C, D, E, F, G, H, I> extends _UnionBase {
  /// Create a union from its first generic type
  const Union9.first(A value) : super(value, _Union.first);

  /// Create a union from its second generic type
  const Union9.second(B value) : super(value, _Union.second);

  /// Create a union from its third generic type
  const Union9.third(C value) : super(value, _Union.third);

  /// Create a union from its forth generic type
  const Union9.forth(D value) : super(value, _Union.forth);

  /// Create a union from its fifth generic type
  const Union9.fifth(E value) : super(value, _Union.fifth);

  /// Create a union from its sixth generic type
  const Union9.sixth(F value) : super(value, _Union.sixth);

  /// Create a union from its seventh generic type
  const Union9.seventh(G value) : super(value, _Union.seventh);

  /// Create a union from its eighth generic type
  const Union9.eighth(H value) : super(value, _Union.eighth);

  /// Create a union from its ninth generic type
  const Union9.ninth(I value) : super(value, _Union.ninth);

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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first?.call(_value as A);
      case _Union.second:
        return second?.call(_value as B);
      case _Union.third:
        return third?.call(_value as C);
      case _Union.forth:
        return forth?.call(_value as D);
      case _Union.fifth:
        return fifth?.call(_value as E);
      case _Union.sixth:
        return sixth?.call(_value as F);
      case _Union.seventh:
        return seventh?.call(_value as G);
      case _Union.eighth:
        return eighth?.call(_value as H);
      case _Union.ninth:
        return ninth?.call(_value as I);
    }
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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      case _Union.third:
        return third(_value as C);
      case _Union.forth:
        return forth(_value as D);
      case _Union.fifth:
        return fifth(_value as E);
      case _Union.sixth:
        return sixth(_value as F);
      case _Union.seventh:
        return seventh(_value as G);
      case _Union.eighth:
        return eighth(_value as H);
      case _Union.ninth:
        return ninth(_value as I);
    }
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
    // ignore: missing_enum_constant_in_switch, _type can never be anything else
    switch (_type) {
      case _Union.first:
        return Union9.first(first(_value as A));
      case _Union.second:
        return Union9.second(second(_value as B));
      case _Union.third:
        return Union9.third(third(_value as C));
      case _Union.forth:
        return Union9.forth(forth(_value as D));
      case _Union.fifth:
        return Union9.fifth(fifth(_value as E));
      case _Union.sixth:
        return Union9.sixth(sixth(_value as F));
      case _Union.seventh:
        return Union9.seventh(seventh(_value as G));
      case _Union.eighth:
        return Union9.eighth(eighth(_value as H));
      case _Union.ninth:
        return Union9.ninth(ninth(_value as I));
    }
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
