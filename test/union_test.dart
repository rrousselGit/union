import 'package:union/union.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
  group('Union1', () {
    final first = a.asFirst();

    test('value', () {
      expect(first.value, equals(a));
    });
  });
  group('Union2', () {
    final Union2<A, B> first = a.asFirst();
    final second = b.asSecond<A>();

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
    test('switchCase', () {
      var callCount = 0;
      first.switchCase(
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.switchCase(
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(2));
    });

    test('switchCase null', () {
      first.switchCase(null, null);
      second.switchCase(null, null);
    });
  });

  group('Union3', () {
    final Union3<A, B, C> first = a.asFirst();
    final Union3<A, B, C> second = b.asSecond();
    final third = c.asThird<A, B>();
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
    test('switchCase', () {
      var callCount = 0;
      first.switchCase(
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.switchCase(
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(2));
      third.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(3));
    });

    test('switchCase null', () {
      first.switchCase(null, null, null);
      second.switchCase(null, null, null);
      third.switchCase(null, null, null);
    });
  });

  group('Union4', () {
    final Union4<A, B, C, D> first = a.asFirst();
    final Union4<A, B, C, D> second = b.asSecond();
    final Union4<A, B, C, D> third = c.asThird();
    final forth = d.asForth<A, B, C>();

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
    test('switchCase', () {
      var callCount = 0;
      first.switchCase(
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.switchCase(
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(2));
      third.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(3));
      forth.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(4));
    });

    test('switchCase null', () {
      first.switchCase(null, null, null, null);
      second.switchCase(null, null, null, null);
      third.switchCase(null, null, null, null);
      forth.switchCase(null, null, null, null);
    });
  });

  group('Union5', () {
    final Union5<A, B, C, D, E> first = a.asFirst();
    final Union5<A, B, C, D, E> second = b.asSecond();
    final Union5<A, B, C, D, E> third = c.asThird();
    final Union5<A, B, C, D, E> forth = d.asForth();
    final fifth = e.asFifth<A, B, C, D>();

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
    test('switchCase', () {
      var callCount = 0;
      first.switchCase(
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.switchCase(
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(2));
      third.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(3));
      forth.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(4));
      fifth.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(5));
    });

    test('switchCase null', () {
      first.switchCase(null, null, null, null, null);
      second.switchCase(null, null, null, null, null);
      third.switchCase(null, null, null, null, null);
      forth.switchCase(null, null, null, null, null);
      fifth.switchCase(null, null, null, null, null);
    });
  });
  group('Union6', () {
    final Union6<A, B, C, D, E, F> first = a.asFirst();
    final Union6<A, B, C, D, E, F> second = b.asSecond();
    final Union6<A, B, C, D, E, F> third = c.asThird();
    final Union6<A, B, C, D, E, F> forth = d.asForth();
    final Union6<A, B, C, D, E, F> fifth = e.asFifth();
    final sixth = f.asSixth<A, B, C, D, E>();

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
    test('switchCase', () {
      var callCount = 0;
      first.switchCase(
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.switchCase(
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(2));
      third.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(3));
      forth.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(4));
      fifth.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(5));
      sixth.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
      );
      expect(callCount, equals(6));
    });

    test('switchCase null', () {
      first.switchCase(null, null, null, null, null, null);
      second.switchCase(null, null, null, null, null, null);
      third.switchCase(null, null, null, null, null, null);
      forth.switchCase(null, null, null, null, null, null);
      fifth.switchCase(null, null, null, null, null, null);
      sixth.switchCase(null, null, null, null, null, null);
    });
  });

  group('Union7', () {
    final Union7<A, B, C, D, E, F, G> first = a.asFirst();
    final Union7<A, B, C, D, E, F, G> second = b.asSecond();
    final Union7<A, B, C, D, E, F, G> third = c.asThird();
    final Union7<A, B, C, D, E, F, G> forth = d.asForth();
    final Union7<A, B, C, D, E, F, G> fifth = e.asFifth();
    final Union7<A, B, C, D, E, F, G> sixth = f.asSixth();
    final seventh = g.asSeventh<A, B, C, D, E, F>();

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
    test('switchCase', () {
      var callCount = 0;
      first.switchCase(
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(1));
      second.switchCase(
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(2));
      third.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(3));
      forth.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(4));
      fifth.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
        (v) => throw Error(),
      );
      expect(callCount, equals(5));
      sixth.switchCase(
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => throw Error(),
        (v) => callCount++,
        (v) => throw Error(),
      );
      expect(callCount, equals(6));
      seventh.switchCase(
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
    test('switchCase null', () {
      first.switchCase(null, null, null, null, null, null, null);
      second.switchCase(null, null, null, null, null, null, null);
      third.switchCase(null, null, null, null, null, null, null);
      forth.switchCase(null, null, null, null, null, null, null);
      fifth.switchCase(null, null, null, null, null, null, null);
      sixth.switchCase(null, null, null, null, null, null, null);
      seventh.switchCase(null, null, null, null, null, null, null);
    });
  });

  group('Union8', () {
    final Union8<A, B, C, D, E, F, G, H> first = a.asFirst();
    final Union8<A, B, C, D, E, F, G, H> second = b.asSecond();
    final Union8<A, B, C, D, E, F, G, H> third = c.asThird();
    final Union8<A, B, C, D, E, F, G, H> forth = d.asForth();
    final Union8<A, B, C, D, E, F, G, H> fifth = e.asFifth();
    final Union8<A, B, C, D, E, F, G, H> sixth = f.asSixth();
    final Union8<A, B, C, D, E, F, G, H> seventh = g.asSeventh();
    final eighth = h.asEighth<A, B, C, D, E, F, G>();

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
    test('switchCase', () {
      var callCount = 0;
      first.switchCase(
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
      second.switchCase(
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
      third.switchCase(
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
      forth.switchCase(
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
      fifth.switchCase(
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
      sixth.switchCase(
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
      seventh.switchCase(
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
      eighth.switchCase(
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

    test('switchCase null', () {
      first.switchCase(null, null, null, null, null, null, null, null);
      second.switchCase(null, null, null, null, null, null, null, null);
      third.switchCase(null, null, null, null, null, null, null, null);
      forth.switchCase(null, null, null, null, null, null, null, null);
      fifth.switchCase(null, null, null, null, null, null, null, null);
      sixth.switchCase(null, null, null, null, null, null, null, null);
      seventh.switchCase(null, null, null, null, null, null, null, null);
      eighth.switchCase(null, null, null, null, null, null, null, null);
    });
  });

  group('Union9', () {
    final Union9<A, B, C, D, E, F, G, H, I> first = a.asFirst();
    final Union9<A, B, C, D, E, F, G, H, I> second = b.asSecond();
    final Union9<A, B, C, D, E, F, G, H, I> third = c.asThird();
    final Union9<A, B, C, D, E, F, G, H, I> forth = d.asForth();
    final Union9<A, B, C, D, E, F, G, H, I> fifth = e.asFifth();
    final Union9<A, B, C, D, E, F, G, H, I> sixth = f.asSixth();
    final Union9<A, B, C, D, E, F, G, H, I> seventh = g.asSeventh();
    final Union9<A, B, C, D, E, F, G, H, I> eighth = h.asEighth();
    final ninth = i.asNinth<A, B, C, D, E, F, G, H>();

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
    test('switchCase', () {
      var callCount = 0;
      first.switchCase(
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
      second.switchCase(
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
      third.switchCase(
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
      forth.switchCase(
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
      fifth.switchCase(
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
      sixth.switchCase(
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
      seventh.switchCase(
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
      eighth.switchCase(
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
      ninth.switchCase(
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

    test('switchCase null', () {
      first.switchCase(null, null, null, null, null, null, null, null, null);
      second.switchCase(null, null, null, null, null, null, null, null, null);
      third.switchCase(null, null, null, null, null, null, null, null, null);
      forth.switchCase(null, null, null, null, null, null, null, null, null);
      fifth.switchCase(null, null, null, null, null, null, null, null, null);
      sixth.switchCase(null, null, null, null, null, null, null, null, null);
      seventh.switchCase(null, null, null, null, null, null, null, null, null);
      eighth.switchCase(null, null, null, null, null, null, null, null, null);
      ninth.switchCase(null, null, null, null, null, null, null, null, null);
    });
  });
}
