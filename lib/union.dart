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

class Union2<A, B> extends _UnionBase {
  const Union2.first(A value) : super(value, _Union.first);
  const Union2.second(B value) : super(value, _Union.second);

  void forEach(
    void first(A value),
    void second(B value),
  ) {
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      default:
        throw FallThroughError();
    }
  }

  T join<T>(
    T first(A value),
    T second(B value),
  ) {
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      default:
        throw FallThroughError();
    }
  }

  Union2<A2, B2> map<A2, B2>(
    A2 first(A value),
    B2 second(B value),
  ) {
    switch (_type) {
      case _Union.first:
        return Union2.first(first(_value as A));
      case _Union.second:
        return Union2.second(second(_value as B));
      default:
        throw FallThroughError();
    }
  }
}

class Union3<A, B, C> extends _UnionBase {
  const Union3.first(A value) : super(value, _Union.first);
  const Union3.second(B value) : super(value, _Union.second);
  const Union3.third(C value) : super(value, _Union.third);

  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
  ) {
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      case _Union.third:
        return third(_value as C);
      default:
        throw FallThroughError();
    }
  }

  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
  ) {
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      case _Union.third:
        return third(_value as C);
      default:
        throw FallThroughError();
    }
  }

  Union3<A2, B2, C2> map<A2, B2, C2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
  ) {
    switch (_type) {
      case _Union.first:
        return Union3.first(first(_value as A));
      case _Union.second:
        return Union3.second(second(_value as B));
      case _Union.third:
        return Union3.third(third(_value as C));
      default:
        throw FallThroughError();
    }
  }
}

class Union4<A, B, C, D> extends _UnionBase {
  const Union4.first(A value) : super(value, _Union.first);
  const Union4.second(B value) : super(value, _Union.second);
  const Union4.third(C value) : super(value, _Union.third);
  const Union4.forth(D value) : super(value, _Union.forth);

  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
  ) {
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      case _Union.third:
        return third(_value as C);
      case _Union.forth:
        return forth(_value as D);
      default:
        throw FallThroughError();
    }
  }

  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
    T forth(D value),
  ) {
    switch (_type) {
      case _Union.first:
        return first(_value as A);
      case _Union.second:
        return second(_value as B);
      case _Union.third:
        return third(_value as C);
      case _Union.forth:
        return forth(_value as D);
      default:
        throw FallThroughError();
    }
  }

  Union4<A2, B2, C2, D2> map<A2, B2, C2, D2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
    D2 forth(D value),
  ) {
    switch (_type) {
      case _Union.first:
        return Union4.first(first(_value as A));
      case _Union.second:
        return Union4.second(second(_value as B));
      case _Union.third:
        return Union4.third(third(_value as C));
      case _Union.forth:
        return Union4.forth(forth(_value as D));
      default:
        throw FallThroughError();
    }
  }
}

class Union5<A, B, C, D, E> extends _UnionBase {
  const Union5.first(A value) : super(value, _Union.first);
  const Union5.second(B value) : super(value, _Union.second);
  const Union5.third(C value) : super(value, _Union.third);
  const Union5.forth(D value) : super(value, _Union.forth);
  const Union5.fifth(E value) : super(value, _Union.fifth);

  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
    void fifth(E value),
  ) {
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
      default:
        throw FallThroughError();
    }
  }

  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
    T forth(D value),
    T fifth(E value),
  ) {
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
      default:
        throw FallThroughError();
    }
  }

  Union5<A2, B2, C2, D2, E2> map<A2, B2, C2, D2, E2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
    D2 forth(D value),
    E2 fifth(E value),
  ) {
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
      default:
        throw FallThroughError();
    }
  }
}

class Union6<A, B, C, D, E, F> extends _UnionBase {
  const Union6.first(A value) : super(value, _Union.first);
  const Union6.second(B value) : super(value, _Union.second);
  const Union6.third(C value) : super(value, _Union.third);
  const Union6.forth(D value) : super(value, _Union.forth);
  const Union6.fifth(E value) : super(value, _Union.fifth);
  const Union6.sixth(F value) : super(value, _Union.sixth);

  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
    void fifth(E value),
    void sixth(F value),
  ) {
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
      default:
        throw FallThroughError();
    }
  }

  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
    T forth(D value),
    T fifth(E value),
    T sixth(F value),
  ) {
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
      default:
        throw FallThroughError();
    }
  }

  Union6<A2, B2, C2, D2, E2, F2> map<A2, B2, C2, D2, E2, F2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
    D2 forth(D value),
    E2 fifth(E value),
    F2 sixth(F value),
  ) {
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
      default:
        throw FallThroughError();
    }
  }
}

class Union7<A, B, C, D, E, F, G> extends _UnionBase {
  const Union7.first(A value) : super(value, _Union.first);
  const Union7.second(B value) : super(value, _Union.second);
  const Union7.third(C value) : super(value, _Union.third);
  const Union7.forth(D value) : super(value, _Union.forth);
  const Union7.fifth(E value) : super(value, _Union.fifth);
  const Union7.sixth(F value) : super(value, _Union.sixth);
  const Union7.seventh(G value) : super(value, _Union.seventh);

  void forEach(
    void first(A value),
    void second(B value),
    void third(C value),
    void forth(D value),
    void fifth(E value),
    void sixth(F value),
    void seventh(G value),
  ) {
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
      default:
        throw FallThroughError();
    }
  }

  T join<T>(
    T first(A value),
    T second(B value),
    T third(C value),
    T forth(D value),
    T fifth(E value),
    T sixth(F value),
    T seventh(G value),
  ) {
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
      default:
        throw FallThroughError();
    }
  }

  Union7<A2, B2, C2, D2, E2, F2, G2> map<A2, B2, C2, D2, E2, F2, G2>(
    A2 first(A value),
    B2 second(B value),
    C2 third(C value),
    D2 forth(D value),
    E2 fifth(E value),
    F2 sixth(F value),
    G2 seventh(G value),
  ) {
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
      default:
        throw FallThroughError();
    }
  }
}

class Union8<A, B, C, D, E, F, G, H> extends _UnionBase {
  const Union8.first(A value) : super(value, _Union.first);
  const Union8.second(B value) : super(value, _Union.second);
  const Union8.third(C value) : super(value, _Union.third);
  const Union8.forth(D value) : super(value, _Union.forth);
  const Union8.fifth(E value) : super(value, _Union.fifth);
  const Union8.sixth(F value) : super(value, _Union.sixth);
  const Union8.seventh(G value) : super(value, _Union.seventh);
  const Union8.eighth(H value) : super(value, _Union.eighth);

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
      default:
        throw FallThroughError();
    }
  }

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
      default:
        throw FallThroughError();
    }
  }

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
      default:
        throw FallThroughError();
    }
  }
}

class Union9<A, B, C, D, E, F, G, H, I> extends _UnionBase {
  const Union9.first(A value) : super(value, _Union.first);
  const Union9.second(B value) : super(value, _Union.second);
  const Union9.third(C value) : super(value, _Union.third);
  const Union9.forth(D value) : super(value, _Union.forth);
  const Union9.fifth(E value) : super(value, _Union.fifth);
  const Union9.sixth(F value) : super(value, _Union.sixth);
  const Union9.seventh(G value) : super(value, _Union.seventh);
  const Union9.eighth(H value) : super(value, _Union.eighth);
  const Union9.ninth(I value) : super(value, _Union.ninth);

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
      default:
        throw FallThroughError();
    }
  }

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
      default:
        throw FallThroughError();
    }
  }

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
      default:
        throw FallThroughError();
    }
  }
}

extension Union2Value<A> on Union2<A, A> {
  A get value => _value as A;
}

extension Union3Value<A> on Union3<A, A, A> {
  A get value => _value as A;
}

extension Union4Value<A> on Union4<A, A, A, A> {
  A get value => _value as A;
}

extension Union5Value<A> on Union5<A, A, A, A, A> {
  A get value => _value as A;
}

extension Union6Value<A> on Union6<A, A, A, A, A, A> {
  A get value => _value as A;
}

extension Union7Value<A> on Union7<A, A, A, A, A, A, A> {
  A get value => _value as A;
}

extension Union8Value<A> on Union8<A, A, A, A, A, A, A, A> {
  A get value => _value as A;
}

extension Union9Value<A> on Union9<A, A, A, A, A, A, A, A, A> {
  A get value => _value as A;
}
