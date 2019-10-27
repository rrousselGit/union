part of 'union.dart';

extension Merge3A<A, B, C> on Union4<A, A, B, C> {
  Union3<A, B, C> merge3() {
    return join(
      (v) => Union3.first(v),
      (v) => Union3.first(v),
      (v) => Union3.second(v),
      (v) => Union3.third(v),
    );
  }
}

extension Merge3B<A, B, C> on Union4<A, B, A, C> {
  Union3<A, B, C> merge3() {
    return join(
      (v) => Union3.first(v),
      (v) => Union3.second(v),
      (v) => Union3.first(v),
      (v) => Union3.third(v),
    );
  }
}

extension Merge3C<A, B, C> on Union4<A, B, C, A> {
  Union3<A, B, C> merge3() {
    return join(
      (v) => Union3.first(v),
      (v) => Union3.second(v),
      (v) => Union3.third(v),
      (v) => Union3.first(v),
    );
  }
}

extension Merge3D<A, B, C> on Union4<A, B, B, C> {
  Union3<A, B, C> merge3() {
    return join(
      (v) => Union3.first(v),
      (v) => Union3.second(v),
      (v) => Union3.second(v),
      (v) => Union3.third(v),
    );
  }
}

extension Merge3E<A, B, C> on Union4<A, B, C, B> {
  Union3<A, B, C> merge3() {
    return join(
      (v) => Union3.first(v),
      (v) => Union3.second(v),
      (v) => Union3.third(v),
      (v) => Union3.second(v),
    );
  }
}

extension Merge3F<A, B, C> on Union4<A, B, C, C> {
  Union3<A, B, C> merge3() {
    return join(
      (v) => Union3.first(v),
      (v) => Union3.second(v),
      (v) => Union3.third(v),
      (v) => Union3.third(v),
    );
  }
}

extension Merge2A<A, B> on Union4<A, A, A, B> {
  Union2<A, B> merge2() {
    return join(
      (v) => Union2.first(v),
      (v) => Union2.first(v),
      (v) => Union2.first(v),
      (v) => Union2.second(v),
    );
  }
}

extension Merge2B<A, B> on Union4<A, A, B, A> {
  Union2<A, B> merge2() {
    return join(
      (v) => Union2.first(v),
      (v) => Union2.first(v),
      (v) => Union2.second(v),
      (v) => Union2.first(v),
    );
  }
}

extension Merge2C<A, B> on Union4<A, B, A, A> {
  Union2<A, B> merge2() {
    return join(
      (v) => Union2.first(v),
      (v) => Union2.second(v),
      (v) => Union2.first(v),
      (v) => Union2.first(v),
    );
  }
}

extension Merge2D<A, B> on Union4<A, A, B, B> {
  Union2<A, B> merge2() {
    return join(
      (v) => Union2.first(v),
      (v) => Union2.first(v),
      (v) => Union2.second(v),
      (v) => Union2.second(v),
    );
  }
}

extension Merge2E<A, B> on Union4<A, B, A, B> {
  Union2<A, B> merge2() {
    return join(
      (v) => Union2.first(v),
      (v) => Union2.second(v),
      (v) => Union2.first(v),
      (v) => Union2.second(v),
    );
  }
}

extension Merge2F<A, B> on Union4<A, B, B, A> {
  Union2<A, B> merge2() {
    return join(
      (v) => Union2.first(v),
      (v) => Union2.second(v),
      (v) => Union2.second(v),
      (v) => Union2.first(v),
    );
  }
}

extension Merge2G<A, B> on Union4<A, B, B, B> {
  Union2<A, B> merge2() {
    return join(
      (v) => Union2.first(v),
      (v) => Union2.second(v),
      (v) => Union2.second(v),
      (v) => Union2.second(v),
    );
  }
}
