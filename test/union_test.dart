import 'package:union/union.dart';
import 'package:test/test.dart';

class A {}

class B {}

class C {}

class D {}

class E {}

class F {}

class G {}

class H {}

class I {}

void main() {
  final a = A();
  final b = B();
  final c = C();
  final d = D();
  final e = E();
  final f = F();
  final g = G();
  final h = H();
  final i = I();

  group('Union2', () {
    final first = Union2<A, B>.first(a);
    final second = Union2<A, B>.second(b);

    test('equals', () {
      expect(
        Union2<A, B>.first(a),
        equals(Union2<A, B>.first(a)),
      );

      expect(
        Union2<A, B>.second(b),
        equals(Union2<A, B>.second(b)),
      );

      expect(
        Union2<A, B>.first(a),
        isNot(
          equals(Union2<A, int>.first(a)),
        ),
      );
    });
    test('hash', () {
      expect(
        Union2<A, B>.first(a).hashCode,
        equals(Union2<A, B>.first(a).hashCode),
      );

      expect(
        Union2<A, B>.second(b).hashCode,
        equals(Union2<A, B>.second(b).hashCode),
      );

      expect(
        Union2<A, B>.first(a).hashCode,
        isNot(
          equals(
            Union2<A, int>.first(a).hashCode,
          ),
        ),
      );
    });
    test('join', () {
      expect(
        first.join(
          (v) => 1,
          (v) => 2,
        ),
        equals(1),
      );
      expect(
        second.join(
          (v) => 1,
          (v) => 2,
        ),
        equals(2),
      );
    });

    test('map', () {
      expect(
        first
            .map(
              (v) => 1,
              (v) => 2,
            )
            .value,
        equals(1),
      );
      expect(
        second
            .map(
              (v) => 1,
              (v) => 2,
            )
            .value,
        equals(2),
      );
    });
    test('forEach', () {
      var callCount = 0;
      first.forEach(
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.forEach(
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(2));
    });

    test('forEach null', () {
      first.forEach(null, null);
      second.forEach(null, null);
    });
  });

  group('Union3', () {
    final first = Union3<A, B, C>.first(a);
    final second = Union3<A, B, C>.second(b);
    final third = Union3<A, B, C>.third(c);

    test('equals', () {
      expect(
        Union3<A, B, C>.first(a),
        equals(Union3<A, B, C>.first(a)),
      );

      expect(
        Union3<A, B, C>.second(b),
        equals(Union3<A, B, C>.second(b)),
      );

      expect(
        Union3<A, B, C>.first(a),
        isNot(
          equals(Union3<A, int, int>.first(a)),
        ),
      );
    });
    test('hash', () {
      expect(
        Union3<A, B, C>.first(a).hashCode,
        equals(Union3<A, B, C>.first(a).hashCode),
      );

      expect(
        Union3<A, B, C>.second(b).hashCode,
        equals(Union3<A, B, C>.second(b).hashCode),
      );

      expect(
        Union3<A, B, C>.first(a).hashCode,
        isNot(
          equals(
            Union3<A, int, int>.first(a).hashCode,
          ),
        ),
      );
    });
    test('join', () {
      expect(
        first.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
        ),
        equals(1),
      );
      expect(
        second.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
        ),
        equals(2),
      );
      expect(
        third.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
        ),
        equals(3),
      );
    });

    test('map', () {
      expect(
        first
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
            )
            .value,
        equals(1),
      );
      expect(
        second
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
            )
            .value,
        equals(2),
      );
      expect(
        third
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
            )
            .value,
        equals(3),
      );
    });
    test('forEach', () {
      var callCount = 0;
      first.forEach(
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.forEach(
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(2));
      third.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(3));
    });

    test('forEach null', () {
      first.forEach(null, null, null);
      second.forEach(null, null, null);
      third.forEach(null, null, null);
    });
  });

  group('Union4', () {
    final first = Union4<A, B, C, D>.first(a);
    final second = Union4<A, B, C, D>.second(b);
    final third = Union4<A, B, C, D>.third(c);
    final forth = Union4<A, B, C, D>.forth(d);

    test('equals', () {
      expect(
        Union4<A, B, C, D>.first(a),
        equals(Union4<A, B, C, D>.first(a)),
      );

      expect(
        Union4<A, B, C, D>.second(b),
        equals(Union4<A, B, C, D>.second(b)),
      );

      expect(
        Union4<A, B, C, D>.first(a),
        isNot(
          equals(Union4<A, int, int, int>.first(a)),
        ),
      );
    });
    test('hash', () {
      expect(
        Union4<A, B, C, D>.first(a).hashCode,
        equals(Union4<A, B, C, D>.first(a).hashCode),
      );

      expect(
        Union4<A, B, C, D>.second(b).hashCode,
        equals(Union4<A, B, C, D>.second(b).hashCode),
      );

      expect(
        Union4<A, B, C, D>.first(a).hashCode,
        isNot(
          equals(
            Union4<A, int, int, int>.first(a).hashCode,
          ),
        ),
      );
    });
    test('join', () {
      expect(
        first.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
        ),
        equals(1),
      );
      expect(
        second.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
        ),
        equals(2),
      );
      expect(
        third.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
        ),
        equals(3),
      );
      expect(
        forth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
        ),
        equals(4),
      );
    });

    test('map', () {
      expect(
        first
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
            )
            .value,
        equals(1),
      );
      expect(
        second
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
            )
            .value,
        equals(2),
      );
      expect(
        third
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
            )
            .value,
        equals(3),
      );
      expect(
        forth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
            )
            .value,
        equals(4),
      );
    });
    test('forEach', () {
      var callCount = 0;
      first.forEach(
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.forEach(
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(2));
      third.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(3));
      forth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(4));
    });

    test('forEach null', () {
      first.forEach(null, null, null, null);
      second.forEach(null, null, null, null);
      third.forEach(null, null, null, null);
      forth.forEach(null, null, null, null);
    });
  });

  group('Union5', () {
    final first = Union5<A, B, C, D, E>.first(a);
    final second = Union5<A, B, C, D, E>.second(b);
    final third = Union5<A, B, C, D, E>.third(c);
    final forth = Union5<A, B, C, D, E>.forth(d);
    final fifth = Union5<A, B, C, D, E>.fifth(e);

    test('equals', () {
      expect(
        Union5<A, B, C, D, E>.first(a),
        equals(Union5<A, B, C, D, E>.first(a)),
      );

      expect(
        Union5<A, B, C, D, E>.second(b),
        equals(Union5<A, B, C, D, E>.second(b)),
      );

      expect(
        Union5<A, B, C, D, E>.first(a),
        isNot(
          equals(Union5<A, int, int, int, int>.first(a)),
        ),
      );
    });
    test('hash', () {
      expect(
        Union5<A, B, C, D, E>.first(a).hashCode,
        equals(Union5<A, B, C, D, E>.first(a).hashCode),
      );

      expect(
        Union5<A, B, C, D, E>.second(b).hashCode,
        equals(Union5<A, B, C, D, E>.second(b).hashCode),
      );

      expect(
        Union5<A, B, C, D, E>.first(a).hashCode,
        isNot(
          equals(
            Union5<A, int, int, int, int>.first(a).hashCode,
          ),
        ),
      );
    });
    test('join', () {
      expect(
        first.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
        ),
        equals(1),
      );
      expect(
        second.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
        ),
        equals(2),
      );
      expect(
        third.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
        ),
        equals(3),
      );
      expect(
        forth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
        ),
        equals(4),
      );
      expect(
        fifth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
        ),
        equals(5),
      );
    });

    test('map', () {
      expect(
        first
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
            )
            .value,
        equals(1),
      );
      expect(
        second
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
            )
            .value,
        equals(2),
      );
      expect(
        third
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
            )
            .value,
        equals(3),
      );
      expect(
        forth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
            )
            .value,
        equals(4),
      );
      expect(
        fifth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
            )
            .value,
        equals(5),
      );
    });
    test('forEach', () {
      var callCount = 0;
      first.forEach(
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.forEach(
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(2));
      third.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(3));
      forth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(4));
      fifth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(5));
    });

    test('forEach null', () {
      first.forEach(null, null, null, null, null);
      second.forEach(null, null, null, null, null);
      third.forEach(null, null, null, null, null);
      forth.forEach(null, null, null, null, null);
      fifth.forEach(null, null, null, null, null);
    });
  });
  group('Union6', () {
    final first = Union6<A, B, C, D, E, F>.first(a);
    final second = Union6<A, B, C, D, E, F>.second(b);
    final third = Union6<A, B, C, D, E, F>.third(c);
    final forth = Union6<A, B, C, D, E, F>.forth(d);
    final fifth = Union6<A, B, C, D, E, F>.fifth(e);
    final sixth = Union6<A, B, C, D, E, F>.sixth(f);

    test('equals', () {
      expect(
        Union6<A, B, C, D, E, F>.first(a),
        equals(Union6<A, B, C, D, E, F>.first(a)),
      );

      expect(
        Union6<A, B, C, D, E, F>.second(b),
        equals(Union6<A, B, C, D, E, F>.second(b)),
      );

      expect(
        Union6<A, B, C, D, E, F>.first(a),
        isNot(
          equals(Union6<A, int, int, int, int, int>.first(a)),
        ),
      );
    });
    test('hash', () {
      expect(
        Union6<A, B, C, D, E, F>.first(a).hashCode,
        equals(Union6<A, B, C, D, E, F>.first(a).hashCode),
      );

      expect(
        Union6<A, B, C, D, E, F>.second(b).hashCode,
        equals(Union6<A, B, C, D, E, F>.second(b).hashCode),
      );

      expect(
        Union6<A, B, C, D, E, F>.first(a).hashCode,
        isNot(
          equals(
            Union6<A, int, int, int, int, int>.first(a).hashCode,
          ),
        ),
      );
    });
    test('join', () {
      expect(
        first.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
        ),
        equals(1),
      );
      expect(
        second.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
        ),
        equals(2),
      );
      expect(
        third.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
        ),
        equals(3),
      );
      expect(
        forth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
        ),
        equals(4),
      );
      expect(
        fifth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
        ),
        equals(5),
      );
      expect(
        sixth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
        ),
        equals(6),
      );
    });

    test('map', () {
      expect(
        first
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
            )
            .value,
        equals(1),
      );
      expect(
        second
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
            )
            .value,
        equals(2),
      );
      expect(
        third
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
            )
            .value,
        equals(3),
      );
      expect(
        forth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
            )
            .value,
        equals(4),
      );
      expect(
        fifth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
            )
            .value,
        equals(5),
      );
      expect(
        sixth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
            )
            .value,
        equals(6),
      );
    });
    test('forEach', () {
      var callCount = 0;
      first.forEach(
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.forEach(
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(2));
      third.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(3));
      forth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(4));
      fifth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(5));
      sixth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(6));
    });

    test('forEach null', () {
      first.forEach(null, null, null, null, null, null);
      second.forEach(null, null, null, null, null, null);
      third.forEach(null, null, null, null, null, null);
      forth.forEach(null, null, null, null, null, null);
      fifth.forEach(null, null, null, null, null, null);
      sixth.forEach(null, null, null, null, null, null);
    });
  });

  group('Union7', () {
    final first = Union7<A, B, C, D, E, F, G>.first(a);
    final second = Union7<A, B, C, D, E, F, G>.second(b);
    final third = Union7<A, B, C, D, E, F, G>.third(c);
    final forth = Union7<A, B, C, D, E, F, G>.forth(d);
    final fifth = Union7<A, B, C, D, E, F, G>.fifth(e);
    final sixth = Union7<A, B, C, D, E, F, G>.sixth(f);
    final seventh = Union7<A, B, C, D, E, F, G>.seventh(g);

    test('equals', () {
      expect(
        Union7<A, B, C, D, E, F, G>.first(a),
        equals(Union7<A, B, C, D, E, F, G>.first(a)),
      );

      expect(
        Union7<A, B, C, D, E, F, G>.second(b),
        equals(Union7<A, B, C, D, E, F, G>.second(b)),
      );

      expect(
        Union7<A, B, C, D, E, F, G>.first(a),
        isNot(
          equals(Union7<A, int, int, int, int, int, int>.first(a)),
        ),
      );
    });
    test('hash', () {
      expect(
        Union7<A, B, C, D, E, F, G>.first(a).hashCode,
        equals(Union7<A, B, C, D, E, F, G>.first(a).hashCode),
      );

      expect(
        Union7<A, B, C, D, E, F, G>.second(b).hashCode,
        equals(Union7<A, B, C, D, E, F, G>.second(b).hashCode),
      );

      expect(
        Union7<A, B, C, D, E, F, G>.first(a).hashCode,
        isNot(
          equals(
            Union7<A, int, int, int, int, int, int>.first(a).hashCode,
          ),
        ),
      );
    });
    test('join', () {
      expect(
        first.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
        ),
        equals(1),
      );
      expect(
        second.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
        ),
        equals(2),
      );
      expect(
        third.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
        ),
        equals(3),
      );
      expect(
        forth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
        ),
        equals(4),
      );
      expect(
        fifth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
        ),
        equals(5),
      );
      expect(
        sixth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
        ),
        equals(6),
      );
      expect(
        seventh.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
        ),
        equals(7),
      );
    });

    test('map', () {
      expect(
        first
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
            )
            .value,
        equals(1),
      );
      expect(
        second
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
            )
            .value,
        equals(2),
      );
      expect(
        third
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
            )
            .value,
        equals(3),
      );
      expect(
        forth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
            )
            .value,
        equals(4),
      );
      expect(
        fifth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
            )
            .value,
        equals(5),
      );
      expect(
        sixth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
            )
            .value,
        equals(6),
      );
      expect(
        seventh
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
            )
            .value,
        equals(7),
      );
    });
    test('forEach', () {
      var callCount = 0;
      first.forEach(
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.forEach(
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(2));
      third.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(3));
      forth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(4));
      fifth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(5));
      sixth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(6));
      seventh.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(7));
    });
    test('forEach null', () {
      first.forEach(null, null, null, null, null, null, null);
      second.forEach(null, null, null, null, null, null, null);
      third.forEach(null, null, null, null, null, null, null);
      forth.forEach(null, null, null, null, null, null, null);
      fifth.forEach(null, null, null, null, null, null, null);
      sixth.forEach(null, null, null, null, null, null, null);
      seventh.forEach(null, null, null, null, null, null, null);
    });
  });

  group('Union8', () {
    final first = Union8<A, B, C, D, E, F, G, H>.first(a);
    final second = Union8<A, B, C, D, E, F, G, H>.second(b);
    final third = Union8<A, B, C, D, E, F, G, H>.third(c);
    final forth = Union8<A, B, C, D, E, F, G, H>.forth(d);
    final fifth = Union8<A, B, C, D, E, F, G, H>.fifth(e);
    final sixth = Union8<A, B, C, D, E, F, G, H>.sixth(f);
    final seventh = Union8<A, B, C, D, E, F, G, H>.seventh(g);
    final eighth = Union8<A, B, C, D, E, F, G, H>.eighth(h);

    test('equals', () {
      expect(
        Union8<A, B, C, D, E, F, G, H>.first(a),
        equals(Union8<A, B, C, D, E, F, G, H>.first(a)),
      );

      expect(
        Union8<A, B, C, D, E, F, G, H>.second(b),
        equals(Union8<A, B, C, D, E, F, G, H>.second(b)),
      );

      expect(
        Union8<A, B, C, D, E, F, G, H>.first(a),
        isNot(
          equals(Union8<A, int, int, int, int, int, int, int>.first(a)),
        ),
      );
    });
    test('hash', () {
      expect(
        Union8<A, B, C, D, E, F, G, H>.first(a).hashCode,
        equals(Union8<A, B, C, D, E, F, G, H>.first(a).hashCode),
      );

      expect(
        Union8<A, B, C, D, E, F, G, H>.second(b).hashCode,
        equals(Union8<A, B, C, D, E, F, G, H>.second(b).hashCode),
      );

      expect(
        Union8<A, B, C, D, E, F, G, H>.first(a).hashCode,
        isNot(
          equals(
            Union8<A, int, int, int, int, int, int, int>.first(a).hashCode,
          ),
        ),
      );
    });
    test('join', () {
      expect(
        first.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
        ),
        equals(1),
      );
      expect(
        second.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
        ),
        equals(2),
      );
      expect(
        third.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
        ),
        equals(3),
      );
      expect(
        forth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
        ),
        equals(4),
      );
      expect(
        fifth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
        ),
        equals(5),
      );
      expect(
        sixth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
        ),
        equals(6),
      );
      expect(
        seventh.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
        ),
        equals(7),
      );
      expect(
        eighth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
        ),
        equals(8),
      );
    });

    test('map', () {
      expect(
        first
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
            )
            .value,
        equals(1),
      );
      expect(
        second
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
            )
            .value,
        equals(2),
      );
      expect(
        third
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
            )
            .value,
        equals(3),
      );
      expect(
        forth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
            )
            .value,
        equals(4),
      );
      expect(
        fifth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
            )
            .value,
        equals(5),
      );
      expect(
        sixth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
            )
            .value,
        equals(6),
      );
      expect(
        seventh
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
            )
            .value,
        equals(7),
      );
      expect(
        eighth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
            )
            .value,
        equals(8),
      );
    });
    test('forEach', () {
      var callCount = 0;
      first.forEach(
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.forEach(
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(2));
      third.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(3));
      forth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(4));
      fifth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(5));
      sixth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(6));
      seventh.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(7));
      eighth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(8));
    });

    test('forEach null', () {
      first.forEach(null, null, null, null, null, null, null, null);
      second.forEach(null, null, null, null, null, null, null, null);
      third.forEach(null, null, null, null, null, null, null, null);
      forth.forEach(null, null, null, null, null, null, null, null);
      fifth.forEach(null, null, null, null, null, null, null, null);
      sixth.forEach(null, null, null, null, null, null, null, null);
      seventh.forEach(null, null, null, null, null, null, null, null);
      eighth.forEach(null, null, null, null, null, null, null, null);
    });
  });

  group('Union9', () {
    final first = Union9<A, B, C, D, E, F, G, H, I>.first(a);
    final second = Union9<A, B, C, D, E, F, G, H, I>.second(b);
    final third = Union9<A, B, C, D, E, F, G, H, I>.third(c);
    final forth = Union9<A, B, C, D, E, F, G, H, I>.forth(d);
    final fifth = Union9<A, B, C, D, E, F, G, H, I>.fifth(e);
    final sixth = Union9<A, B, C, D, E, F, G, H, I>.sixth(f);
    final seventh = Union9<A, B, C, D, E, F, G, H, I>.seventh(g);
    final eighth = Union9<A, B, C, D, E, F, G, H, I>.eighth(h);
    final ninth = Union9<A, B, C, D, E, F, G, H, I>.ninth(i);

    test('equals', () {
      expect(
        Union9<A, B, C, D, E, F, G, H, I>.first(a),
        equals(Union9<A, B, C, D, E, F, G, H, I>.first(a)),
      );

      expect(
        Union9<A, B, C, D, E, F, G, H, I>.second(b),
        equals(Union9<A, B, C, D, E, F, G, H, I>.second(b)),
      );

      expect(
        Union9<A, B, C, D, E, F, G, H, I>.first(a),
        isNot(
          equals(Union9<A, int, int, int, int, int, int, int, int>.first(a)),
        ),
      );
    });
    test('hash', () {
      expect(
        Union9<A, B, C, D, E, F, G, H, I>.first(a).hashCode,
        equals(Union9<A, B, C, D, E, F, G, H, I>.first(a).hashCode),
      );

      expect(
        Union9<A, B, C, D, E, F, G, H, I>.second(b).hashCode,
        equals(Union9<A, B, C, D, E, F, G, H, I>.second(b).hashCode),
      );

      expect(
        Union9<A, B, C, D, E, F, G, H, I>.first(a).hashCode,
        isNot(
          equals(
            Union9<A, int, int, int, int, int, int, int, int>.first(a).hashCode,
          ),
        ),
      );
    });
    test('join', () {
      expect(
        first.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
          (v) => 9,
        ),
        equals(1),
      );
      expect(
        second.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
          (v) => 9,
        ),
        equals(2),
      );
      expect(
        third.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
          (v) => 9,
        ),
        equals(3),
      );
      expect(
        forth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
          (v) => 9,
        ),
        equals(4),
      );
      expect(
        fifth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
          (v) => 9,
        ),
        equals(5),
      );
      expect(
        sixth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
          (v) => 9,
        ),
        equals(6),
      );
      expect(
        seventh.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
          (v) => 9,
        ),
        equals(7),
      );
      expect(
        eighth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
          (v) => 9,
        ),
        equals(8),
      );
      expect(
        ninth.join(
          (v) => 1,
          (v) => 2,
          (v) => 3,
          (v) => 4,
          (v) => 5,
          (v) => 6,
          (v) => 7,
          (v) => 8,
          (v) => 9,
        ),
        equals(9),
      );
    });

    test('map', () {
      expect(
        first
            .map((v) => 1, (v) => 2, (v) => 3, (v) => 4, (v) => 5, (v) => 6,
                (v) => 7, (v) => 8, (v) => 9)
            .value,
        equals(1),
      );
      expect(
        second
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
              (v) => 9,
            )
            .value,
        equals(2),
      );
      expect(
        third
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
              (v) => 9,
            )
            .value,
        equals(3),
      );
      expect(
        forth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
              (v) => 9,
            )
            .value,
        equals(4),
      );
      expect(
        fifth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
              (v) => 9,
            )
            .value,
        equals(5),
      );
      expect(
        sixth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
              (v) => 9,
            )
            .value,
        equals(6),
      );
      expect(
        seventh
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
              (v) => 9,
            )
            .value,
        equals(7),
      );
      expect(
        eighth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
              (v) => 9,
            )
            .value,
        equals(8),
      );
      expect(
        ninth
            .map(
              (v) => 1,
              (v) => 2,
              (v) => 3,
              (v) => 4,
              (v) => 5,
              (v) => 6,
              (v) => 7,
              (v) => 8,
              (v) => 9,
            )
            .value,
        equals(9),
      );
    });
    test('forEach', () {
      var callCount = 0;
      first.forEach(
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.forEach(
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(2));
      third.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(3));
      forth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(4));
      fifth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(5));
      sixth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(6));
      seventh.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(7));
      eighth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(8));
      ninth.forEach(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(9));
    });

    test('forEach null', () {
      first.forEach(null, null, null, null, null, null, null, null, null);
      second.forEach(null, null, null, null, null, null, null, null, null);
      third.forEach(null, null, null, null, null, null, null, null, null);
      forth.forEach(null, null, null, null, null, null, null, null, null);
      fifth.forEach(null, null, null, null, null, null, null, null, null);
      sixth.forEach(null, null, null, null, null, null, null, null, null);
      seventh.forEach(null, null, null, null, null, null, null, null, null);
      eighth.forEach(null, null, null, null, null, null, null, null, null);
      ninth.forEach(null, null, null, null, null, null, null, null, null);
    });
  });
}
