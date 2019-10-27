/// ignore_for_file: lines_longer_than_80_chars, omit_local_variable_types, prefer_const_constructors

import 'package:union/union.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
  group('Union6', () {
    test('to Union5', () {
      Union5<A, B, C, D, E> merge0 = Union6<A, A, B, C, D, E>.first(a).merge5();
      expect(merge0.value, equals(a));

      Union5<A, B, C, D, E> merge1 =
          Union6<A, A, B, C, D, E>.second(a).merge5();
      expect(merge1.value, equals(a));

      Union5<A, B, C, D, E> merge2 = Union6<A, A, B, C, D, E>.third(b).merge5();
      expect(merge2.value, equals(b));

      Union5<A, B, C, D, E> merge3 = Union6<A, A, B, C, D, E>.forth(c).merge5();
      expect(merge3.value, equals(c));

      Union5<A, B, C, D, E> merge4 = Union6<A, A, B, C, D, E>.fifth(d).merge5();
      expect(merge4.value, equals(d));

      Union5<A, B, C, D, E> merge5 = Union6<A, A, B, C, D, E>.sixth(e).merge5();
      expect(merge5.value, equals(e));

      Union5<A, B, C, D, E> merge6 = Union6<A, B, A, C, D, E>.first(a).merge5();
      expect(merge6.value, equals(a));

      Union5<A, B, C, D, E> merge7 =
          Union6<A, B, A, C, D, E>.second(b).merge5();
      expect(merge7.value, equals(b));

      Union5<A, B, C, D, E> merge8 = Union6<A, B, A, C, D, E>.third(a).merge5();
      expect(merge8.value, equals(a));

      Union5<A, B, C, D, E> merge9 = Union6<A, B, A, C, D, E>.forth(c).merge5();
      expect(merge9.value, equals(c));

      Union5<A, B, C, D, E> merge10 =
          Union6<A, B, A, C, D, E>.fifth(d).merge5();
      expect(merge10.value, equals(d));

      Union5<A, B, C, D, E> merge11 =
          Union6<A, B, A, C, D, E>.sixth(e).merge5();
      expect(merge11.value, equals(e));

      Union5<A, B, C, D, E> merge12 =
          Union6<A, B, B, C, D, E>.first(a).merge5();
      expect(merge12.value, equals(a));

      Union5<A, B, C, D, E> merge13 =
          Union6<A, B, B, C, D, E>.second(b).merge5();
      expect(merge13.value, equals(b));

      Union5<A, B, C, D, E> merge14 =
          Union6<A, B, B, C, D, E>.third(b).merge5();
      expect(merge14.value, equals(b));

      Union5<A, B, C, D, E> merge15 =
          Union6<A, B, B, C, D, E>.forth(c).merge5();
      expect(merge15.value, equals(c));

      Union5<A, B, C, D, E> merge16 =
          Union6<A, B, B, C, D, E>.fifth(d).merge5();
      expect(merge16.value, equals(d));

      Union5<A, B, C, D, E> merge17 =
          Union6<A, B, B, C, D, E>.sixth(e).merge5();
      expect(merge17.value, equals(e));

      Union5<A, B, C, D, E> merge18 =
          Union6<A, B, C, A, D, E>.first(a).merge5();
      expect(merge18.value, equals(a));

      Union5<A, B, C, D, E> merge19 =
          Union6<A, B, C, A, D, E>.second(b).merge5();
      expect(merge19.value, equals(b));

      Union5<A, B, C, D, E> merge20 =
          Union6<A, B, C, A, D, E>.third(c).merge5();
      expect(merge20.value, equals(c));

      Union5<A, B, C, D, E> merge21 =
          Union6<A, B, C, A, D, E>.forth(a).merge5();
      expect(merge21.value, equals(a));

      Union5<A, B, C, D, E> merge22 =
          Union6<A, B, C, A, D, E>.fifth(d).merge5();
      expect(merge22.value, equals(d));

      Union5<A, B, C, D, E> merge23 =
          Union6<A, B, C, A, D, E>.sixth(e).merge5();
      expect(merge23.value, equals(e));

      Union5<A, B, C, D, E> merge24 =
          Union6<A, B, C, B, D, E>.first(a).merge5();
      expect(merge24.value, equals(a));

      Union5<A, B, C, D, E> merge25 =
          Union6<A, B, C, B, D, E>.second(b).merge5();
      expect(merge25.value, equals(b));

      Union5<A, B, C, D, E> merge26 =
          Union6<A, B, C, B, D, E>.third(c).merge5();
      expect(merge26.value, equals(c));

      Union5<A, B, C, D, E> merge27 =
          Union6<A, B, C, B, D, E>.forth(b).merge5();
      expect(merge27.value, equals(b));

      Union5<A, B, C, D, E> merge28 =
          Union6<A, B, C, B, D, E>.fifth(d).merge5();
      expect(merge28.value, equals(d));

      Union5<A, B, C, D, E> merge29 =
          Union6<A, B, C, B, D, E>.sixth(e).merge5();
      expect(merge29.value, equals(e));

      Union5<A, B, C, D, E> merge30 =
          Union6<A, B, C, C, D, E>.first(a).merge5();
      expect(merge30.value, equals(a));

      Union5<A, B, C, D, E> merge31 =
          Union6<A, B, C, C, D, E>.second(b).merge5();
      expect(merge31.value, equals(b));

      Union5<A, B, C, D, E> merge32 =
          Union6<A, B, C, C, D, E>.third(c).merge5();
      expect(merge32.value, equals(c));

      Union5<A, B, C, D, E> merge33 =
          Union6<A, B, C, C, D, E>.forth(c).merge5();
      expect(merge33.value, equals(c));

      Union5<A, B, C, D, E> merge34 =
          Union6<A, B, C, C, D, E>.fifth(d).merge5();
      expect(merge34.value, equals(d));

      Union5<A, B, C, D, E> merge35 =
          Union6<A, B, C, C, D, E>.sixth(e).merge5();
      expect(merge35.value, equals(e));

      Union5<A, B, C, D, E> merge36 =
          Union6<A, B, C, D, A, E>.first(a).merge5();
      expect(merge36.value, equals(a));

      Union5<A, B, C, D, E> merge37 =
          Union6<A, B, C, D, A, E>.second(b).merge5();
      expect(merge37.value, equals(b));

      Union5<A, B, C, D, E> merge38 =
          Union6<A, B, C, D, A, E>.third(c).merge5();
      expect(merge38.value, equals(c));

      Union5<A, B, C, D, E> merge39 =
          Union6<A, B, C, D, A, E>.forth(d).merge5();
      expect(merge39.value, equals(d));

      Union5<A, B, C, D, E> merge40 =
          Union6<A, B, C, D, A, E>.fifth(a).merge5();
      expect(merge40.value, equals(a));

      Union5<A, B, C, D, E> merge41 =
          Union6<A, B, C, D, A, E>.sixth(e).merge5();
      expect(merge41.value, equals(e));

      Union5<A, B, C, D, E> merge42 =
          Union6<A, B, C, D, B, E>.first(a).merge5();
      expect(merge42.value, equals(a));

      Union5<A, B, C, D, E> merge43 =
          Union6<A, B, C, D, B, E>.second(b).merge5();
      expect(merge43.value, equals(b));

      Union5<A, B, C, D, E> merge44 =
          Union6<A, B, C, D, B, E>.third(c).merge5();
      expect(merge44.value, equals(c));

      Union5<A, B, C, D, E> merge45 =
          Union6<A, B, C, D, B, E>.forth(d).merge5();
      expect(merge45.value, equals(d));

      Union5<A, B, C, D, E> merge46 =
          Union6<A, B, C, D, B, E>.fifth(b).merge5();
      expect(merge46.value, equals(b));

      Union5<A, B, C, D, E> merge47 =
          Union6<A, B, C, D, B, E>.sixth(e).merge5();
      expect(merge47.value, equals(e));

      Union5<A, B, C, D, E> merge48 =
          Union6<A, B, C, D, C, E>.first(a).merge5();
      expect(merge48.value, equals(a));

      Union5<A, B, C, D, E> merge49 =
          Union6<A, B, C, D, C, E>.second(b).merge5();
      expect(merge49.value, equals(b));

      Union5<A, B, C, D, E> merge50 =
          Union6<A, B, C, D, C, E>.third(c).merge5();
      expect(merge50.value, equals(c));

      Union5<A, B, C, D, E> merge51 =
          Union6<A, B, C, D, C, E>.forth(d).merge5();
      expect(merge51.value, equals(d));

      Union5<A, B, C, D, E> merge52 =
          Union6<A, B, C, D, C, E>.fifth(c).merge5();
      expect(merge52.value, equals(c));

      Union5<A, B, C, D, E> merge53 =
          Union6<A, B, C, D, C, E>.sixth(e).merge5();
      expect(merge53.value, equals(e));

      Union5<A, B, C, D, E> merge54 =
          Union6<A, B, C, D, D, E>.first(a).merge5();
      expect(merge54.value, equals(a));

      Union5<A, B, C, D, E> merge55 =
          Union6<A, B, C, D, D, E>.second(b).merge5();
      expect(merge55.value, equals(b));

      Union5<A, B, C, D, E> merge56 =
          Union6<A, B, C, D, D, E>.third(c).merge5();
      expect(merge56.value, equals(c));

      Union5<A, B, C, D, E> merge57 =
          Union6<A, B, C, D, D, E>.forth(d).merge5();
      expect(merge57.value, equals(d));

      Union5<A, B, C, D, E> merge58 =
          Union6<A, B, C, D, D, E>.fifth(d).merge5();
      expect(merge58.value, equals(d));

      Union5<A, B, C, D, E> merge59 =
          Union6<A, B, C, D, D, E>.sixth(e).merge5();
      expect(merge59.value, equals(e));

      Union5<A, B, C, D, E> merge60 =
          Union6<A, B, C, D, E, A>.first(a).merge5();
      expect(merge60.value, equals(a));

      Union5<A, B, C, D, E> merge61 =
          Union6<A, B, C, D, E, A>.second(b).merge5();
      expect(merge61.value, equals(b));

      Union5<A, B, C, D, E> merge62 =
          Union6<A, B, C, D, E, A>.third(c).merge5();
      expect(merge62.value, equals(c));

      Union5<A, B, C, D, E> merge63 =
          Union6<A, B, C, D, E, A>.forth(d).merge5();
      expect(merge63.value, equals(d));

      Union5<A, B, C, D, E> merge64 =
          Union6<A, B, C, D, E, A>.fifth(e).merge5();
      expect(merge64.value, equals(e));

      Union5<A, B, C, D, E> merge65 =
          Union6<A, B, C, D, E, A>.sixth(a).merge5();
      expect(merge65.value, equals(a));

      Union5<A, B, C, D, E> merge66 =
          Union6<A, B, C, D, E, B>.first(a).merge5();
      expect(merge66.value, equals(a));

      Union5<A, B, C, D, E> merge67 =
          Union6<A, B, C, D, E, B>.second(b).merge5();
      expect(merge67.value, equals(b));

      Union5<A, B, C, D, E> merge68 =
          Union6<A, B, C, D, E, B>.third(c).merge5();
      expect(merge68.value, equals(c));

      Union5<A, B, C, D, E> merge69 =
          Union6<A, B, C, D, E, B>.forth(d).merge5();
      expect(merge69.value, equals(d));

      Union5<A, B, C, D, E> merge70 =
          Union6<A, B, C, D, E, B>.fifth(e).merge5();
      expect(merge70.value, equals(e));

      Union5<A, B, C, D, E> merge71 =
          Union6<A, B, C, D, E, B>.sixth(b).merge5();
      expect(merge71.value, equals(b));

      Union5<A, B, C, D, E> merge72 =
          Union6<A, B, C, D, E, C>.first(a).merge5();
      expect(merge72.value, equals(a));

      Union5<A, B, C, D, E> merge73 =
          Union6<A, B, C, D, E, C>.second(b).merge5();
      expect(merge73.value, equals(b));

      Union5<A, B, C, D, E> merge74 =
          Union6<A, B, C, D, E, C>.third(c).merge5();
      expect(merge74.value, equals(c));

      Union5<A, B, C, D, E> merge75 =
          Union6<A, B, C, D, E, C>.forth(d).merge5();
      expect(merge75.value, equals(d));

      Union5<A, B, C, D, E> merge76 =
          Union6<A, B, C, D, E, C>.fifth(e).merge5();
      expect(merge76.value, equals(e));

      Union5<A, B, C, D, E> merge77 =
          Union6<A, B, C, D, E, C>.sixth(c).merge5();
      expect(merge77.value, equals(c));

      Union5<A, B, C, D, E> merge78 =
          Union6<A, B, C, D, E, D>.first(a).merge5();
      expect(merge78.value, equals(a));

      Union5<A, B, C, D, E> merge79 =
          Union6<A, B, C, D, E, D>.second(b).merge5();
      expect(merge79.value, equals(b));

      Union5<A, B, C, D, E> merge80 =
          Union6<A, B, C, D, E, D>.third(c).merge5();
      expect(merge80.value, equals(c));

      Union5<A, B, C, D, E> merge81 =
          Union6<A, B, C, D, E, D>.forth(d).merge5();
      expect(merge81.value, equals(d));

      Union5<A, B, C, D, E> merge82 =
          Union6<A, B, C, D, E, D>.fifth(e).merge5();
      expect(merge82.value, equals(e));

      Union5<A, B, C, D, E> merge83 =
          Union6<A, B, C, D, E, D>.sixth(d).merge5();
      expect(merge83.value, equals(d));

      Union5<A, B, C, D, E> merge84 =
          Union6<A, B, C, D, E, E>.first(a).merge5();
      expect(merge84.value, equals(a));

      Union5<A, B, C, D, E> merge85 =
          Union6<A, B, C, D, E, E>.second(b).merge5();
      expect(merge85.value, equals(b));

      Union5<A, B, C, D, E> merge86 =
          Union6<A, B, C, D, E, E>.third(c).merge5();
      expect(merge86.value, equals(c));

      Union5<A, B, C, D, E> merge87 =
          Union6<A, B, C, D, E, E>.forth(d).merge5();
      expect(merge87.value, equals(d));

      Union5<A, B, C, D, E> merge88 =
          Union6<A, B, C, D, E, E>.fifth(e).merge5();
      expect(merge88.value, equals(e));

      Union5<A, B, C, D, E> merge89 =
          Union6<A, B, C, D, E, E>.sixth(e).merge5();
      expect(merge89.value, equals(e));
    });
    test('to Union4', () {
      Union4<A, B, C, D> merge0 = Union6<A, A, A, B, C, D>.first(a).merge4();
      expect(merge0.value, equals(a));

      Union4<A, B, C, D> merge1 = Union6<A, A, A, B, C, D>.second(a).merge4();
      expect(merge1.value, equals(a));

      Union4<A, B, C, D> merge2 = Union6<A, A, A, B, C, D>.third(a).merge4();
      expect(merge2.value, equals(a));

      Union4<A, B, C, D> merge3 = Union6<A, A, A, B, C, D>.forth(b).merge4();
      expect(merge3.value, equals(b));

      Union4<A, B, C, D> merge4 = Union6<A, A, A, B, C, D>.fifth(c).merge4();
      expect(merge4.value, equals(c));

      Union4<A, B, C, D> merge5 = Union6<A, A, A, B, C, D>.sixth(d).merge4();
      expect(merge5.value, equals(d));

      Union4<A, B, C, D> merge6 = Union6<A, A, B, A, C, D>.first(a).merge4();
      expect(merge6.value, equals(a));

      Union4<A, B, C, D> merge7 = Union6<A, A, B, A, C, D>.second(a).merge4();
      expect(merge7.value, equals(a));

      Union4<A, B, C, D> merge8 = Union6<A, A, B, A, C, D>.third(b).merge4();
      expect(merge8.value, equals(b));

      Union4<A, B, C, D> merge9 = Union6<A, A, B, A, C, D>.forth(a).merge4();
      expect(merge9.value, equals(a));

      Union4<A, B, C, D> merge10 = Union6<A, A, B, A, C, D>.fifth(c).merge4();
      expect(merge10.value, equals(c));

      Union4<A, B, C, D> merge11 = Union6<A, A, B, A, C, D>.sixth(d).merge4();
      expect(merge11.value, equals(d));

      Union4<A, B, C, D> merge12 = Union6<A, A, B, B, C, D>.first(a).merge4();
      expect(merge12.value, equals(a));

      Union4<A, B, C, D> merge13 = Union6<A, A, B, B, C, D>.second(a).merge4();
      expect(merge13.value, equals(a));

      Union4<A, B, C, D> merge14 = Union6<A, A, B, B, C, D>.third(b).merge4();
      expect(merge14.value, equals(b));

      Union4<A, B, C, D> merge15 = Union6<A, A, B, B, C, D>.forth(b).merge4();
      expect(merge15.value, equals(b));

      Union4<A, B, C, D> merge16 = Union6<A, A, B, B, C, D>.fifth(c).merge4();
      expect(merge16.value, equals(c));

      Union4<A, B, C, D> merge17 = Union6<A, A, B, B, C, D>.sixth(d).merge4();
      expect(merge17.value, equals(d));

      Union4<A, B, C, D> merge18 = Union6<A, A, B, C, A, D>.first(a).merge4();
      expect(merge18.value, equals(a));

      Union4<A, B, C, D> merge19 = Union6<A, A, B, C, A, D>.second(a).merge4();
      expect(merge19.value, equals(a));

      Union4<A, B, C, D> merge20 = Union6<A, A, B, C, A, D>.third(b).merge4();
      expect(merge20.value, equals(b));

      Union4<A, B, C, D> merge21 = Union6<A, A, B, C, A, D>.forth(c).merge4();
      expect(merge21.value, equals(c));

      Union4<A, B, C, D> merge22 = Union6<A, A, B, C, A, D>.fifth(a).merge4();
      expect(merge22.value, equals(a));

      Union4<A, B, C, D> merge23 = Union6<A, A, B, C, A, D>.sixth(d).merge4();
      expect(merge23.value, equals(d));

      Union4<A, B, C, D> merge24 = Union6<A, A, B, C, B, D>.first(a).merge4();
      expect(merge24.value, equals(a));

      Union4<A, B, C, D> merge25 = Union6<A, A, B, C, B, D>.second(a).merge4();
      expect(merge25.value, equals(a));

      Union4<A, B, C, D> merge26 = Union6<A, A, B, C, B, D>.third(b).merge4();
      expect(merge26.value, equals(b));

      Union4<A, B, C, D> merge27 = Union6<A, A, B, C, B, D>.forth(c).merge4();
      expect(merge27.value, equals(c));

      Union4<A, B, C, D> merge28 = Union6<A, A, B, C, B, D>.fifth(b).merge4();
      expect(merge28.value, equals(b));

      Union4<A, B, C, D> merge29 = Union6<A, A, B, C, B, D>.sixth(d).merge4();
      expect(merge29.value, equals(d));

      Union4<A, B, C, D> merge30 = Union6<A, A, B, C, C, D>.first(a).merge4();
      expect(merge30.value, equals(a));

      Union4<A, B, C, D> merge31 = Union6<A, A, B, C, C, D>.second(a).merge4();
      expect(merge31.value, equals(a));

      Union4<A, B, C, D> merge32 = Union6<A, A, B, C, C, D>.third(b).merge4();
      expect(merge32.value, equals(b));

      Union4<A, B, C, D> merge33 = Union6<A, A, B, C, C, D>.forth(c).merge4();
      expect(merge33.value, equals(c));

      Union4<A, B, C, D> merge34 = Union6<A, A, B, C, C, D>.fifth(c).merge4();
      expect(merge34.value, equals(c));

      Union4<A, B, C, D> merge35 = Union6<A, A, B, C, C, D>.sixth(d).merge4();
      expect(merge35.value, equals(d));

      Union4<A, B, C, D> merge36 = Union6<A, A, B, C, D, A>.first(a).merge4();
      expect(merge36.value, equals(a));

      Union4<A, B, C, D> merge37 = Union6<A, A, B, C, D, A>.second(a).merge4();
      expect(merge37.value, equals(a));

      Union4<A, B, C, D> merge38 = Union6<A, A, B, C, D, A>.third(b).merge4();
      expect(merge38.value, equals(b));

      Union4<A, B, C, D> merge39 = Union6<A, A, B, C, D, A>.forth(c).merge4();
      expect(merge39.value, equals(c));

      Union4<A, B, C, D> merge40 = Union6<A, A, B, C, D, A>.fifth(d).merge4();
      expect(merge40.value, equals(d));

      Union4<A, B, C, D> merge41 = Union6<A, A, B, C, D, A>.sixth(a).merge4();
      expect(merge41.value, equals(a));

      Union4<A, B, C, D> merge42 = Union6<A, A, B, C, D, B>.first(a).merge4();
      expect(merge42.value, equals(a));

      Union4<A, B, C, D> merge43 = Union6<A, A, B, C, D, B>.second(a).merge4();
      expect(merge43.value, equals(a));

      Union4<A, B, C, D> merge44 = Union6<A, A, B, C, D, B>.third(b).merge4();
      expect(merge44.value, equals(b));

      Union4<A, B, C, D> merge45 = Union6<A, A, B, C, D, B>.forth(c).merge4();
      expect(merge45.value, equals(c));

      Union4<A, B, C, D> merge46 = Union6<A, A, B, C, D, B>.fifth(d).merge4();
      expect(merge46.value, equals(d));

      Union4<A, B, C, D> merge47 = Union6<A, A, B, C, D, B>.sixth(b).merge4();
      expect(merge47.value, equals(b));

      Union4<A, B, C, D> merge48 = Union6<A, A, B, C, D, C>.first(a).merge4();
      expect(merge48.value, equals(a));

      Union4<A, B, C, D> merge49 = Union6<A, A, B, C, D, C>.second(a).merge4();
      expect(merge49.value, equals(a));

      Union4<A, B, C, D> merge50 = Union6<A, A, B, C, D, C>.third(b).merge4();
      expect(merge50.value, equals(b));

      Union4<A, B, C, D> merge51 = Union6<A, A, B, C, D, C>.forth(c).merge4();
      expect(merge51.value, equals(c));

      Union4<A, B, C, D> merge52 = Union6<A, A, B, C, D, C>.fifth(d).merge4();
      expect(merge52.value, equals(d));

      Union4<A, B, C, D> merge53 = Union6<A, A, B, C, D, C>.sixth(c).merge4();
      expect(merge53.value, equals(c));

      Union4<A, B, C, D> merge54 = Union6<A, A, B, C, D, D>.first(a).merge4();
      expect(merge54.value, equals(a));

      Union4<A, B, C, D> merge55 = Union6<A, A, B, C, D, D>.second(a).merge4();
      expect(merge55.value, equals(a));

      Union4<A, B, C, D> merge56 = Union6<A, A, B, C, D, D>.third(b).merge4();
      expect(merge56.value, equals(b));

      Union4<A, B, C, D> merge57 = Union6<A, A, B, C, D, D>.forth(c).merge4();
      expect(merge57.value, equals(c));

      Union4<A, B, C, D> merge58 = Union6<A, A, B, C, D, D>.fifth(d).merge4();
      expect(merge58.value, equals(d));

      Union4<A, B, C, D> merge59 = Union6<A, A, B, C, D, D>.sixth(d).merge4();
      expect(merge59.value, equals(d));

      Union4<A, B, C, D> merge60 = Union6<A, B, A, A, C, D>.first(a).merge4();
      expect(merge60.value, equals(a));

      Union4<A, B, C, D> merge61 = Union6<A, B, A, A, C, D>.second(b).merge4();
      expect(merge61.value, equals(b));

      Union4<A, B, C, D> merge62 = Union6<A, B, A, A, C, D>.third(a).merge4();
      expect(merge62.value, equals(a));

      Union4<A, B, C, D> merge63 = Union6<A, B, A, A, C, D>.forth(a).merge4();
      expect(merge63.value, equals(a));

      Union4<A, B, C, D> merge64 = Union6<A, B, A, A, C, D>.fifth(c).merge4();
      expect(merge64.value, equals(c));

      Union4<A, B, C, D> merge65 = Union6<A, B, A, A, C, D>.sixth(d).merge4();
      expect(merge65.value, equals(d));

      Union4<A, B, C, D> merge66 = Union6<A, B, A, B, C, D>.first(a).merge4();
      expect(merge66.value, equals(a));

      Union4<A, B, C, D> merge67 = Union6<A, B, A, B, C, D>.second(b).merge4();
      expect(merge67.value, equals(b));

      Union4<A, B, C, D> merge68 = Union6<A, B, A, B, C, D>.third(a).merge4();
      expect(merge68.value, equals(a));

      Union4<A, B, C, D> merge69 = Union6<A, B, A, B, C, D>.forth(b).merge4();
      expect(merge69.value, equals(b));

      Union4<A, B, C, D> merge70 = Union6<A, B, A, B, C, D>.fifth(c).merge4();
      expect(merge70.value, equals(c));

      Union4<A, B, C, D> merge71 = Union6<A, B, A, B, C, D>.sixth(d).merge4();
      expect(merge71.value, equals(d));

      Union4<A, B, C, D> merge72 = Union6<A, B, A, C, A, D>.first(a).merge4();
      expect(merge72.value, equals(a));

      Union4<A, B, C, D> merge73 = Union6<A, B, A, C, A, D>.second(b).merge4();
      expect(merge73.value, equals(b));

      Union4<A, B, C, D> merge74 = Union6<A, B, A, C, A, D>.third(a).merge4();
      expect(merge74.value, equals(a));

      Union4<A, B, C, D> merge75 = Union6<A, B, A, C, A, D>.forth(c).merge4();
      expect(merge75.value, equals(c));

      Union4<A, B, C, D> merge76 = Union6<A, B, A, C, A, D>.fifth(a).merge4();
      expect(merge76.value, equals(a));

      Union4<A, B, C, D> merge77 = Union6<A, B, A, C, A, D>.sixth(d).merge4();
      expect(merge77.value, equals(d));

      Union4<A, B, C, D> merge78 = Union6<A, B, A, C, B, D>.first(a).merge4();
      expect(merge78.value, equals(a));

      Union4<A, B, C, D> merge79 = Union6<A, B, A, C, B, D>.second(b).merge4();
      expect(merge79.value, equals(b));

      Union4<A, B, C, D> merge80 = Union6<A, B, A, C, B, D>.third(a).merge4();
      expect(merge80.value, equals(a));

      Union4<A, B, C, D> merge81 = Union6<A, B, A, C, B, D>.forth(c).merge4();
      expect(merge81.value, equals(c));

      Union4<A, B, C, D> merge82 = Union6<A, B, A, C, B, D>.fifth(b).merge4();
      expect(merge82.value, equals(b));

      Union4<A, B, C, D> merge83 = Union6<A, B, A, C, B, D>.sixth(d).merge4();
      expect(merge83.value, equals(d));

      Union4<A, B, C, D> merge84 = Union6<A, B, A, C, C, D>.first(a).merge4();
      expect(merge84.value, equals(a));

      Union4<A, B, C, D> merge85 = Union6<A, B, A, C, C, D>.second(b).merge4();
      expect(merge85.value, equals(b));

      Union4<A, B, C, D> merge86 = Union6<A, B, A, C, C, D>.third(a).merge4();
      expect(merge86.value, equals(a));

      Union4<A, B, C, D> merge87 = Union6<A, B, A, C, C, D>.forth(c).merge4();
      expect(merge87.value, equals(c));

      Union4<A, B, C, D> merge88 = Union6<A, B, A, C, C, D>.fifth(c).merge4();
      expect(merge88.value, equals(c));

      Union4<A, B, C, D> merge89 = Union6<A, B, A, C, C, D>.sixth(d).merge4();
      expect(merge89.value, equals(d));

      Union4<A, B, C, D> merge90 = Union6<A, B, A, C, D, A>.first(a).merge4();
      expect(merge90.value, equals(a));

      Union4<A, B, C, D> merge91 = Union6<A, B, A, C, D, A>.second(b).merge4();
      expect(merge91.value, equals(b));

      Union4<A, B, C, D> merge92 = Union6<A, B, A, C, D, A>.third(a).merge4();
      expect(merge92.value, equals(a));

      Union4<A, B, C, D> merge93 = Union6<A, B, A, C, D, A>.forth(c).merge4();
      expect(merge93.value, equals(c));

      Union4<A, B, C, D> merge94 = Union6<A, B, A, C, D, A>.fifth(d).merge4();
      expect(merge94.value, equals(d));

      Union4<A, B, C, D> merge95 = Union6<A, B, A, C, D, A>.sixth(a).merge4();
      expect(merge95.value, equals(a));

      Union4<A, B, C, D> merge96 = Union6<A, B, A, C, D, B>.first(a).merge4();
      expect(merge96.value, equals(a));

      Union4<A, B, C, D> merge97 = Union6<A, B, A, C, D, B>.second(b).merge4();
      expect(merge97.value, equals(b));

      Union4<A, B, C, D> merge98 = Union6<A, B, A, C, D, B>.third(a).merge4();
      expect(merge98.value, equals(a));

      Union4<A, B, C, D> merge99 = Union6<A, B, A, C, D, B>.forth(c).merge4();
      expect(merge99.value, equals(c));

      Union4<A, B, C, D> merge100 = Union6<A, B, A, C, D, B>.fifth(d).merge4();
      expect(merge100.value, equals(d));

      Union4<A, B, C, D> merge101 = Union6<A, B, A, C, D, B>.sixth(b).merge4();
      expect(merge101.value, equals(b));

      Union4<A, B, C, D> merge102 = Union6<A, B, A, C, D, C>.first(a).merge4();
      expect(merge102.value, equals(a));

      Union4<A, B, C, D> merge103 = Union6<A, B, A, C, D, C>.second(b).merge4();
      expect(merge103.value, equals(b));

      Union4<A, B, C, D> merge104 = Union6<A, B, A, C, D, C>.third(a).merge4();
      expect(merge104.value, equals(a));

      Union4<A, B, C, D> merge105 = Union6<A, B, A, C, D, C>.forth(c).merge4();
      expect(merge105.value, equals(c));

      Union4<A, B, C, D> merge106 = Union6<A, B, A, C, D, C>.fifth(d).merge4();
      expect(merge106.value, equals(d));

      Union4<A, B, C, D> merge107 = Union6<A, B, A, C, D, C>.sixth(c).merge4();
      expect(merge107.value, equals(c));

      Union4<A, B, C, D> merge108 = Union6<A, B, A, C, D, D>.first(a).merge4();
      expect(merge108.value, equals(a));

      Union4<A, B, C, D> merge109 = Union6<A, B, A, C, D, D>.second(b).merge4();
      expect(merge109.value, equals(b));

      Union4<A, B, C, D> merge110 = Union6<A, B, A, C, D, D>.third(a).merge4();
      expect(merge110.value, equals(a));

      Union4<A, B, C, D> merge111 = Union6<A, B, A, C, D, D>.forth(c).merge4();
      expect(merge111.value, equals(c));

      Union4<A, B, C, D> merge112 = Union6<A, B, A, C, D, D>.fifth(d).merge4();
      expect(merge112.value, equals(d));

      Union4<A, B, C, D> merge113 = Union6<A, B, A, C, D, D>.sixth(d).merge4();
      expect(merge113.value, equals(d));

      Union4<A, B, C, D> merge114 = Union6<A, B, B, A, C, D>.first(a).merge4();
      expect(merge114.value, equals(a));

      Union4<A, B, C, D> merge115 = Union6<A, B, B, A, C, D>.second(b).merge4();
      expect(merge115.value, equals(b));

      Union4<A, B, C, D> merge116 = Union6<A, B, B, A, C, D>.third(b).merge4();
      expect(merge116.value, equals(b));

      Union4<A, B, C, D> merge117 = Union6<A, B, B, A, C, D>.forth(a).merge4();
      expect(merge117.value, equals(a));

      Union4<A, B, C, D> merge118 = Union6<A, B, B, A, C, D>.fifth(c).merge4();
      expect(merge118.value, equals(c));

      Union4<A, B, C, D> merge119 = Union6<A, B, B, A, C, D>.sixth(d).merge4();
      expect(merge119.value, equals(d));

      Union4<A, B, C, D> merge120 = Union6<A, B, B, B, C, D>.first(a).merge4();
      expect(merge120.value, equals(a));

      Union4<A, B, C, D> merge121 = Union6<A, B, B, B, C, D>.second(b).merge4();
      expect(merge121.value, equals(b));

      Union4<A, B, C, D> merge122 = Union6<A, B, B, B, C, D>.third(b).merge4();
      expect(merge122.value, equals(b));

      Union4<A, B, C, D> merge123 = Union6<A, B, B, B, C, D>.forth(b).merge4();
      expect(merge123.value, equals(b));

      Union4<A, B, C, D> merge124 = Union6<A, B, B, B, C, D>.fifth(c).merge4();
      expect(merge124.value, equals(c));

      Union4<A, B, C, D> merge125 = Union6<A, B, B, B, C, D>.sixth(d).merge4();
      expect(merge125.value, equals(d));

      Union4<A, B, C, D> merge126 = Union6<A, B, B, C, A, D>.first(a).merge4();
      expect(merge126.value, equals(a));

      Union4<A, B, C, D> merge127 = Union6<A, B, B, C, A, D>.second(b).merge4();
      expect(merge127.value, equals(b));

      Union4<A, B, C, D> merge128 = Union6<A, B, B, C, A, D>.third(b).merge4();
      expect(merge128.value, equals(b));

      Union4<A, B, C, D> merge129 = Union6<A, B, B, C, A, D>.forth(c).merge4();
      expect(merge129.value, equals(c));

      Union4<A, B, C, D> merge130 = Union6<A, B, B, C, A, D>.fifth(a).merge4();
      expect(merge130.value, equals(a));

      Union4<A, B, C, D> merge131 = Union6<A, B, B, C, A, D>.sixth(d).merge4();
      expect(merge131.value, equals(d));

      Union4<A, B, C, D> merge132 = Union6<A, B, B, C, B, D>.first(a).merge4();
      expect(merge132.value, equals(a));

      Union4<A, B, C, D> merge133 = Union6<A, B, B, C, B, D>.second(b).merge4();
      expect(merge133.value, equals(b));

      Union4<A, B, C, D> merge134 = Union6<A, B, B, C, B, D>.third(b).merge4();
      expect(merge134.value, equals(b));

      Union4<A, B, C, D> merge135 = Union6<A, B, B, C, B, D>.forth(c).merge4();
      expect(merge135.value, equals(c));

      Union4<A, B, C, D> merge136 = Union6<A, B, B, C, B, D>.fifth(b).merge4();
      expect(merge136.value, equals(b));

      Union4<A, B, C, D> merge137 = Union6<A, B, B, C, B, D>.sixth(d).merge4();
      expect(merge137.value, equals(d));

      Union4<A, B, C, D> merge138 = Union6<A, B, B, C, C, D>.first(a).merge4();
      expect(merge138.value, equals(a));

      Union4<A, B, C, D> merge139 = Union6<A, B, B, C, C, D>.second(b).merge4();
      expect(merge139.value, equals(b));

      Union4<A, B, C, D> merge140 = Union6<A, B, B, C, C, D>.third(b).merge4();
      expect(merge140.value, equals(b));

      Union4<A, B, C, D> merge141 = Union6<A, B, B, C, C, D>.forth(c).merge4();
      expect(merge141.value, equals(c));

      Union4<A, B, C, D> merge142 = Union6<A, B, B, C, C, D>.fifth(c).merge4();
      expect(merge142.value, equals(c));

      Union4<A, B, C, D> merge143 = Union6<A, B, B, C, C, D>.sixth(d).merge4();
      expect(merge143.value, equals(d));

      Union4<A, B, C, D> merge144 = Union6<A, B, B, C, D, A>.first(a).merge4();
      expect(merge144.value, equals(a));

      Union4<A, B, C, D> merge145 = Union6<A, B, B, C, D, A>.second(b).merge4();
      expect(merge145.value, equals(b));

      Union4<A, B, C, D> merge146 = Union6<A, B, B, C, D, A>.third(b).merge4();
      expect(merge146.value, equals(b));

      Union4<A, B, C, D> merge147 = Union6<A, B, B, C, D, A>.forth(c).merge4();
      expect(merge147.value, equals(c));

      Union4<A, B, C, D> merge148 = Union6<A, B, B, C, D, A>.fifth(d).merge4();
      expect(merge148.value, equals(d));

      Union4<A, B, C, D> merge149 = Union6<A, B, B, C, D, A>.sixth(a).merge4();
      expect(merge149.value, equals(a));

      Union4<A, B, C, D> merge150 = Union6<A, B, B, C, D, B>.first(a).merge4();
      expect(merge150.value, equals(a));

      Union4<A, B, C, D> merge151 = Union6<A, B, B, C, D, B>.second(b).merge4();
      expect(merge151.value, equals(b));

      Union4<A, B, C, D> merge152 = Union6<A, B, B, C, D, B>.third(b).merge4();
      expect(merge152.value, equals(b));

      Union4<A, B, C, D> merge153 = Union6<A, B, B, C, D, B>.forth(c).merge4();
      expect(merge153.value, equals(c));

      Union4<A, B, C, D> merge154 = Union6<A, B, B, C, D, B>.fifth(d).merge4();
      expect(merge154.value, equals(d));

      Union4<A, B, C, D> merge155 = Union6<A, B, B, C, D, B>.sixth(b).merge4();
      expect(merge155.value, equals(b));

      Union4<A, B, C, D> merge156 = Union6<A, B, B, C, D, C>.first(a).merge4();
      expect(merge156.value, equals(a));

      Union4<A, B, C, D> merge157 = Union6<A, B, B, C, D, C>.second(b).merge4();
      expect(merge157.value, equals(b));

      Union4<A, B, C, D> merge158 = Union6<A, B, B, C, D, C>.third(b).merge4();
      expect(merge158.value, equals(b));

      Union4<A, B, C, D> merge159 = Union6<A, B, B, C, D, C>.forth(c).merge4();
      expect(merge159.value, equals(c));

      Union4<A, B, C, D> merge160 = Union6<A, B, B, C, D, C>.fifth(d).merge4();
      expect(merge160.value, equals(d));

      Union4<A, B, C, D> merge161 = Union6<A, B, B, C, D, C>.sixth(c).merge4();
      expect(merge161.value, equals(c));

      Union4<A, B, C, D> merge162 = Union6<A, B, B, C, D, D>.first(a).merge4();
      expect(merge162.value, equals(a));

      Union4<A, B, C, D> merge163 = Union6<A, B, B, C, D, D>.second(b).merge4();
      expect(merge163.value, equals(b));

      Union4<A, B, C, D> merge164 = Union6<A, B, B, C, D, D>.third(b).merge4();
      expect(merge164.value, equals(b));

      Union4<A, B, C, D> merge165 = Union6<A, B, B, C, D, D>.forth(c).merge4();
      expect(merge165.value, equals(c));

      Union4<A, B, C, D> merge166 = Union6<A, B, B, C, D, D>.fifth(d).merge4();
      expect(merge166.value, equals(d));

      Union4<A, B, C, D> merge167 = Union6<A, B, B, C, D, D>.sixth(d).merge4();
      expect(merge167.value, equals(d));

      Union4<A, B, C, D> merge168 = Union6<A, B, C, A, A, D>.first(a).merge4();
      expect(merge168.value, equals(a));

      Union4<A, B, C, D> merge169 = Union6<A, B, C, A, A, D>.second(b).merge4();
      expect(merge169.value, equals(b));

      Union4<A, B, C, D> merge170 = Union6<A, B, C, A, A, D>.third(c).merge4();
      expect(merge170.value, equals(c));

      Union4<A, B, C, D> merge171 = Union6<A, B, C, A, A, D>.forth(a).merge4();
      expect(merge171.value, equals(a));

      Union4<A, B, C, D> merge172 = Union6<A, B, C, A, A, D>.fifth(a).merge4();
      expect(merge172.value, equals(a));

      Union4<A, B, C, D> merge173 = Union6<A, B, C, A, A, D>.sixth(d).merge4();
      expect(merge173.value, equals(d));

      Union4<A, B, C, D> merge174 = Union6<A, B, C, A, B, D>.first(a).merge4();
      expect(merge174.value, equals(a));

      Union4<A, B, C, D> merge175 = Union6<A, B, C, A, B, D>.second(b).merge4();
      expect(merge175.value, equals(b));

      Union4<A, B, C, D> merge176 = Union6<A, B, C, A, B, D>.third(c).merge4();
      expect(merge176.value, equals(c));

      Union4<A, B, C, D> merge177 = Union6<A, B, C, A, B, D>.forth(a).merge4();
      expect(merge177.value, equals(a));

      Union4<A, B, C, D> merge178 = Union6<A, B, C, A, B, D>.fifth(b).merge4();
      expect(merge178.value, equals(b));

      Union4<A, B, C, D> merge179 = Union6<A, B, C, A, B, D>.sixth(d).merge4();
      expect(merge179.value, equals(d));

      Union4<A, B, C, D> merge180 = Union6<A, B, C, A, C, D>.first(a).merge4();
      expect(merge180.value, equals(a));

      Union4<A, B, C, D> merge181 = Union6<A, B, C, A, C, D>.second(b).merge4();
      expect(merge181.value, equals(b));

      Union4<A, B, C, D> merge182 = Union6<A, B, C, A, C, D>.third(c).merge4();
      expect(merge182.value, equals(c));

      Union4<A, B, C, D> merge183 = Union6<A, B, C, A, C, D>.forth(a).merge4();
      expect(merge183.value, equals(a));

      Union4<A, B, C, D> merge184 = Union6<A, B, C, A, C, D>.fifth(c).merge4();
      expect(merge184.value, equals(c));

      Union4<A, B, C, D> merge185 = Union6<A, B, C, A, C, D>.sixth(d).merge4();
      expect(merge185.value, equals(d));

      Union4<A, B, C, D> merge186 = Union6<A, B, C, A, D, A>.first(a).merge4();
      expect(merge186.value, equals(a));

      Union4<A, B, C, D> merge187 = Union6<A, B, C, A, D, A>.second(b).merge4();
      expect(merge187.value, equals(b));

      Union4<A, B, C, D> merge188 = Union6<A, B, C, A, D, A>.third(c).merge4();
      expect(merge188.value, equals(c));

      Union4<A, B, C, D> merge189 = Union6<A, B, C, A, D, A>.forth(a).merge4();
      expect(merge189.value, equals(a));

      Union4<A, B, C, D> merge190 = Union6<A, B, C, A, D, A>.fifth(d).merge4();
      expect(merge190.value, equals(d));

      Union4<A, B, C, D> merge191 = Union6<A, B, C, A, D, A>.sixth(a).merge4();
      expect(merge191.value, equals(a));

      Union4<A, B, C, D> merge192 = Union6<A, B, C, A, D, B>.first(a).merge4();
      expect(merge192.value, equals(a));

      Union4<A, B, C, D> merge193 = Union6<A, B, C, A, D, B>.second(b).merge4();
      expect(merge193.value, equals(b));

      Union4<A, B, C, D> merge194 = Union6<A, B, C, A, D, B>.third(c).merge4();
      expect(merge194.value, equals(c));

      Union4<A, B, C, D> merge195 = Union6<A, B, C, A, D, B>.forth(a).merge4();
      expect(merge195.value, equals(a));

      Union4<A, B, C, D> merge196 = Union6<A, B, C, A, D, B>.fifth(d).merge4();
      expect(merge196.value, equals(d));

      Union4<A, B, C, D> merge197 = Union6<A, B, C, A, D, B>.sixth(b).merge4();
      expect(merge197.value, equals(b));

      Union4<A, B, C, D> merge198 = Union6<A, B, C, A, D, C>.first(a).merge4();
      expect(merge198.value, equals(a));

      Union4<A, B, C, D> merge199 = Union6<A, B, C, A, D, C>.second(b).merge4();
      expect(merge199.value, equals(b));

      Union4<A, B, C, D> merge200 = Union6<A, B, C, A, D, C>.third(c).merge4();
      expect(merge200.value, equals(c));

      Union4<A, B, C, D> merge201 = Union6<A, B, C, A, D, C>.forth(a).merge4();
      expect(merge201.value, equals(a));

      Union4<A, B, C, D> merge202 = Union6<A, B, C, A, D, C>.fifth(d).merge4();
      expect(merge202.value, equals(d));

      Union4<A, B, C, D> merge203 = Union6<A, B, C, A, D, C>.sixth(c).merge4();
      expect(merge203.value, equals(c));

      Union4<A, B, C, D> merge204 = Union6<A, B, C, A, D, D>.first(a).merge4();
      expect(merge204.value, equals(a));

      Union4<A, B, C, D> merge205 = Union6<A, B, C, A, D, D>.second(b).merge4();
      expect(merge205.value, equals(b));

      Union4<A, B, C, D> merge206 = Union6<A, B, C, A, D, D>.third(c).merge4();
      expect(merge206.value, equals(c));

      Union4<A, B, C, D> merge207 = Union6<A, B, C, A, D, D>.forth(a).merge4();
      expect(merge207.value, equals(a));

      Union4<A, B, C, D> merge208 = Union6<A, B, C, A, D, D>.fifth(d).merge4();
      expect(merge208.value, equals(d));

      Union4<A, B, C, D> merge209 = Union6<A, B, C, A, D, D>.sixth(d).merge4();
      expect(merge209.value, equals(d));

      Union4<A, B, C, D> merge210 = Union6<A, B, C, B, A, D>.first(a).merge4();
      expect(merge210.value, equals(a));

      Union4<A, B, C, D> merge211 = Union6<A, B, C, B, A, D>.second(b).merge4();
      expect(merge211.value, equals(b));

      Union4<A, B, C, D> merge212 = Union6<A, B, C, B, A, D>.third(c).merge4();
      expect(merge212.value, equals(c));

      Union4<A, B, C, D> merge213 = Union6<A, B, C, B, A, D>.forth(b).merge4();
      expect(merge213.value, equals(b));

      Union4<A, B, C, D> merge214 = Union6<A, B, C, B, A, D>.fifth(a).merge4();
      expect(merge214.value, equals(a));

      Union4<A, B, C, D> merge215 = Union6<A, B, C, B, A, D>.sixth(d).merge4();
      expect(merge215.value, equals(d));

      Union4<A, B, C, D> merge216 = Union6<A, B, C, B, B, D>.first(a).merge4();
      expect(merge216.value, equals(a));

      Union4<A, B, C, D> merge217 = Union6<A, B, C, B, B, D>.second(b).merge4();
      expect(merge217.value, equals(b));

      Union4<A, B, C, D> merge218 = Union6<A, B, C, B, B, D>.third(c).merge4();
      expect(merge218.value, equals(c));

      Union4<A, B, C, D> merge219 = Union6<A, B, C, B, B, D>.forth(b).merge4();
      expect(merge219.value, equals(b));

      Union4<A, B, C, D> merge220 = Union6<A, B, C, B, B, D>.fifth(b).merge4();
      expect(merge220.value, equals(b));

      Union4<A, B, C, D> merge221 = Union6<A, B, C, B, B, D>.sixth(d).merge4();
      expect(merge221.value, equals(d));

      Union4<A, B, C, D> merge222 = Union6<A, B, C, B, C, D>.first(a).merge4();
      expect(merge222.value, equals(a));

      Union4<A, B, C, D> merge223 = Union6<A, B, C, B, C, D>.second(b).merge4();
      expect(merge223.value, equals(b));

      Union4<A, B, C, D> merge224 = Union6<A, B, C, B, C, D>.third(c).merge4();
      expect(merge224.value, equals(c));

      Union4<A, B, C, D> merge225 = Union6<A, B, C, B, C, D>.forth(b).merge4();
      expect(merge225.value, equals(b));

      Union4<A, B, C, D> merge226 = Union6<A, B, C, B, C, D>.fifth(c).merge4();
      expect(merge226.value, equals(c));

      Union4<A, B, C, D> merge227 = Union6<A, B, C, B, C, D>.sixth(d).merge4();
      expect(merge227.value, equals(d));

      Union4<A, B, C, D> merge228 = Union6<A, B, C, B, D, A>.first(a).merge4();
      expect(merge228.value, equals(a));

      Union4<A, B, C, D> merge229 = Union6<A, B, C, B, D, A>.second(b).merge4();
      expect(merge229.value, equals(b));

      Union4<A, B, C, D> merge230 = Union6<A, B, C, B, D, A>.third(c).merge4();
      expect(merge230.value, equals(c));

      Union4<A, B, C, D> merge231 = Union6<A, B, C, B, D, A>.forth(b).merge4();
      expect(merge231.value, equals(b));

      Union4<A, B, C, D> merge232 = Union6<A, B, C, B, D, A>.fifth(d).merge4();
      expect(merge232.value, equals(d));

      Union4<A, B, C, D> merge233 = Union6<A, B, C, B, D, A>.sixth(a).merge4();
      expect(merge233.value, equals(a));

      Union4<A, B, C, D> merge234 = Union6<A, B, C, B, D, B>.first(a).merge4();
      expect(merge234.value, equals(a));

      Union4<A, B, C, D> merge235 = Union6<A, B, C, B, D, B>.second(b).merge4();
      expect(merge235.value, equals(b));

      Union4<A, B, C, D> merge236 = Union6<A, B, C, B, D, B>.third(c).merge4();
      expect(merge236.value, equals(c));

      Union4<A, B, C, D> merge237 = Union6<A, B, C, B, D, B>.forth(b).merge4();
      expect(merge237.value, equals(b));

      Union4<A, B, C, D> merge238 = Union6<A, B, C, B, D, B>.fifth(d).merge4();
      expect(merge238.value, equals(d));

      Union4<A, B, C, D> merge239 = Union6<A, B, C, B, D, B>.sixth(b).merge4();
      expect(merge239.value, equals(b));

      Union4<A, B, C, D> merge240 = Union6<A, B, C, B, D, C>.first(a).merge4();
      expect(merge240.value, equals(a));

      Union4<A, B, C, D> merge241 = Union6<A, B, C, B, D, C>.second(b).merge4();
      expect(merge241.value, equals(b));

      Union4<A, B, C, D> merge242 = Union6<A, B, C, B, D, C>.third(c).merge4();
      expect(merge242.value, equals(c));

      Union4<A, B, C, D> merge243 = Union6<A, B, C, B, D, C>.forth(b).merge4();
      expect(merge243.value, equals(b));

      Union4<A, B, C, D> merge244 = Union6<A, B, C, B, D, C>.fifth(d).merge4();
      expect(merge244.value, equals(d));

      Union4<A, B, C, D> merge245 = Union6<A, B, C, B, D, C>.sixth(c).merge4();
      expect(merge245.value, equals(c));

      Union4<A, B, C, D> merge246 = Union6<A, B, C, B, D, D>.first(a).merge4();
      expect(merge246.value, equals(a));

      Union4<A, B, C, D> merge247 = Union6<A, B, C, B, D, D>.second(b).merge4();
      expect(merge247.value, equals(b));

      Union4<A, B, C, D> merge248 = Union6<A, B, C, B, D, D>.third(c).merge4();
      expect(merge248.value, equals(c));

      Union4<A, B, C, D> merge249 = Union6<A, B, C, B, D, D>.forth(b).merge4();
      expect(merge249.value, equals(b));

      Union4<A, B, C, D> merge250 = Union6<A, B, C, B, D, D>.fifth(d).merge4();
      expect(merge250.value, equals(d));

      Union4<A, B, C, D> merge251 = Union6<A, B, C, B, D, D>.sixth(d).merge4();
      expect(merge251.value, equals(d));

      Union4<A, B, C, D> merge252 = Union6<A, B, C, C, A, D>.first(a).merge4();
      expect(merge252.value, equals(a));

      Union4<A, B, C, D> merge253 = Union6<A, B, C, C, A, D>.second(b).merge4();
      expect(merge253.value, equals(b));

      Union4<A, B, C, D> merge254 = Union6<A, B, C, C, A, D>.third(c).merge4();
      expect(merge254.value, equals(c));

      Union4<A, B, C, D> merge255 = Union6<A, B, C, C, A, D>.forth(c).merge4();
      expect(merge255.value, equals(c));

      Union4<A, B, C, D> merge256 = Union6<A, B, C, C, A, D>.fifth(a).merge4();
      expect(merge256.value, equals(a));

      Union4<A, B, C, D> merge257 = Union6<A, B, C, C, A, D>.sixth(d).merge4();
      expect(merge257.value, equals(d));

      Union4<A, B, C, D> merge258 = Union6<A, B, C, C, B, D>.first(a).merge4();
      expect(merge258.value, equals(a));

      Union4<A, B, C, D> merge259 = Union6<A, B, C, C, B, D>.second(b).merge4();
      expect(merge259.value, equals(b));

      Union4<A, B, C, D> merge260 = Union6<A, B, C, C, B, D>.third(c).merge4();
      expect(merge260.value, equals(c));

      Union4<A, B, C, D> merge261 = Union6<A, B, C, C, B, D>.forth(c).merge4();
      expect(merge261.value, equals(c));

      Union4<A, B, C, D> merge262 = Union6<A, B, C, C, B, D>.fifth(b).merge4();
      expect(merge262.value, equals(b));

      Union4<A, B, C, D> merge263 = Union6<A, B, C, C, B, D>.sixth(d).merge4();
      expect(merge263.value, equals(d));

      Union4<A, B, C, D> merge264 = Union6<A, B, C, C, C, D>.first(a).merge4();
      expect(merge264.value, equals(a));

      Union4<A, B, C, D> merge265 = Union6<A, B, C, C, C, D>.second(b).merge4();
      expect(merge265.value, equals(b));

      Union4<A, B, C, D> merge266 = Union6<A, B, C, C, C, D>.third(c).merge4();
      expect(merge266.value, equals(c));

      Union4<A, B, C, D> merge267 = Union6<A, B, C, C, C, D>.forth(c).merge4();
      expect(merge267.value, equals(c));

      Union4<A, B, C, D> merge268 = Union6<A, B, C, C, C, D>.fifth(c).merge4();
      expect(merge268.value, equals(c));

      Union4<A, B, C, D> merge269 = Union6<A, B, C, C, C, D>.sixth(d).merge4();
      expect(merge269.value, equals(d));

      Union4<A, B, C, D> merge270 = Union6<A, B, C, C, D, A>.first(a).merge4();
      expect(merge270.value, equals(a));

      Union4<A, B, C, D> merge271 = Union6<A, B, C, C, D, A>.second(b).merge4();
      expect(merge271.value, equals(b));

      Union4<A, B, C, D> merge272 = Union6<A, B, C, C, D, A>.third(c).merge4();
      expect(merge272.value, equals(c));

      Union4<A, B, C, D> merge273 = Union6<A, B, C, C, D, A>.forth(c).merge4();
      expect(merge273.value, equals(c));

      Union4<A, B, C, D> merge274 = Union6<A, B, C, C, D, A>.fifth(d).merge4();
      expect(merge274.value, equals(d));

      Union4<A, B, C, D> merge275 = Union6<A, B, C, C, D, A>.sixth(a).merge4();
      expect(merge275.value, equals(a));

      Union4<A, B, C, D> merge276 = Union6<A, B, C, C, D, B>.first(a).merge4();
      expect(merge276.value, equals(a));

      Union4<A, B, C, D> merge277 = Union6<A, B, C, C, D, B>.second(b).merge4();
      expect(merge277.value, equals(b));

      Union4<A, B, C, D> merge278 = Union6<A, B, C, C, D, B>.third(c).merge4();
      expect(merge278.value, equals(c));

      Union4<A, B, C, D> merge279 = Union6<A, B, C, C, D, B>.forth(c).merge4();
      expect(merge279.value, equals(c));

      Union4<A, B, C, D> merge280 = Union6<A, B, C, C, D, B>.fifth(d).merge4();
      expect(merge280.value, equals(d));

      Union4<A, B, C, D> merge281 = Union6<A, B, C, C, D, B>.sixth(b).merge4();
      expect(merge281.value, equals(b));

      Union4<A, B, C, D> merge282 = Union6<A, B, C, C, D, C>.first(a).merge4();
      expect(merge282.value, equals(a));

      Union4<A, B, C, D> merge283 = Union6<A, B, C, C, D, C>.second(b).merge4();
      expect(merge283.value, equals(b));

      Union4<A, B, C, D> merge284 = Union6<A, B, C, C, D, C>.third(c).merge4();
      expect(merge284.value, equals(c));

      Union4<A, B, C, D> merge285 = Union6<A, B, C, C, D, C>.forth(c).merge4();
      expect(merge285.value, equals(c));

      Union4<A, B, C, D> merge286 = Union6<A, B, C, C, D, C>.fifth(d).merge4();
      expect(merge286.value, equals(d));

      Union4<A, B, C, D> merge287 = Union6<A, B, C, C, D, C>.sixth(c).merge4();
      expect(merge287.value, equals(c));

      Union4<A, B, C, D> merge288 = Union6<A, B, C, C, D, D>.first(a).merge4();
      expect(merge288.value, equals(a));

      Union4<A, B, C, D> merge289 = Union6<A, B, C, C, D, D>.second(b).merge4();
      expect(merge289.value, equals(b));

      Union4<A, B, C, D> merge290 = Union6<A, B, C, C, D, D>.third(c).merge4();
      expect(merge290.value, equals(c));

      Union4<A, B, C, D> merge291 = Union6<A, B, C, C, D, D>.forth(c).merge4();
      expect(merge291.value, equals(c));

      Union4<A, B, C, D> merge292 = Union6<A, B, C, C, D, D>.fifth(d).merge4();
      expect(merge292.value, equals(d));

      Union4<A, B, C, D> merge293 = Union6<A, B, C, C, D, D>.sixth(d).merge4();
      expect(merge293.value, equals(d));

      Union4<A, B, C, D> merge294 = Union6<A, B, C, D, A, A>.first(a).merge4();
      expect(merge294.value, equals(a));

      Union4<A, B, C, D> merge295 = Union6<A, B, C, D, A, A>.second(b).merge4();
      expect(merge295.value, equals(b));

      Union4<A, B, C, D> merge296 = Union6<A, B, C, D, A, A>.third(c).merge4();
      expect(merge296.value, equals(c));

      Union4<A, B, C, D> merge297 = Union6<A, B, C, D, A, A>.forth(d).merge4();
      expect(merge297.value, equals(d));

      Union4<A, B, C, D> merge298 = Union6<A, B, C, D, A, A>.fifth(a).merge4();
      expect(merge298.value, equals(a));

      Union4<A, B, C, D> merge299 = Union6<A, B, C, D, A, A>.sixth(a).merge4();
      expect(merge299.value, equals(a));

      Union4<A, B, C, D> merge300 = Union6<A, B, C, D, A, B>.first(a).merge4();
      expect(merge300.value, equals(a));

      Union4<A, B, C, D> merge301 = Union6<A, B, C, D, A, B>.second(b).merge4();
      expect(merge301.value, equals(b));

      Union4<A, B, C, D> merge302 = Union6<A, B, C, D, A, B>.third(c).merge4();
      expect(merge302.value, equals(c));

      Union4<A, B, C, D> merge303 = Union6<A, B, C, D, A, B>.forth(d).merge4();
      expect(merge303.value, equals(d));

      Union4<A, B, C, D> merge304 = Union6<A, B, C, D, A, B>.fifth(a).merge4();
      expect(merge304.value, equals(a));

      Union4<A, B, C, D> merge305 = Union6<A, B, C, D, A, B>.sixth(b).merge4();
      expect(merge305.value, equals(b));

      Union4<A, B, C, D> merge306 = Union6<A, B, C, D, A, C>.first(a).merge4();
      expect(merge306.value, equals(a));

      Union4<A, B, C, D> merge307 = Union6<A, B, C, D, A, C>.second(b).merge4();
      expect(merge307.value, equals(b));

      Union4<A, B, C, D> merge308 = Union6<A, B, C, D, A, C>.third(c).merge4();
      expect(merge308.value, equals(c));

      Union4<A, B, C, D> merge309 = Union6<A, B, C, D, A, C>.forth(d).merge4();
      expect(merge309.value, equals(d));

      Union4<A, B, C, D> merge310 = Union6<A, B, C, D, A, C>.fifth(a).merge4();
      expect(merge310.value, equals(a));

      Union4<A, B, C, D> merge311 = Union6<A, B, C, D, A, C>.sixth(c).merge4();
      expect(merge311.value, equals(c));

      Union4<A, B, C, D> merge312 = Union6<A, B, C, D, A, D>.first(a).merge4();
      expect(merge312.value, equals(a));

      Union4<A, B, C, D> merge313 = Union6<A, B, C, D, A, D>.second(b).merge4();
      expect(merge313.value, equals(b));

      Union4<A, B, C, D> merge314 = Union6<A, B, C, D, A, D>.third(c).merge4();
      expect(merge314.value, equals(c));

      Union4<A, B, C, D> merge315 = Union6<A, B, C, D, A, D>.forth(d).merge4();
      expect(merge315.value, equals(d));

      Union4<A, B, C, D> merge316 = Union6<A, B, C, D, A, D>.fifth(a).merge4();
      expect(merge316.value, equals(a));

      Union4<A, B, C, D> merge317 = Union6<A, B, C, D, A, D>.sixth(d).merge4();
      expect(merge317.value, equals(d));

      Union4<A, B, C, D> merge318 = Union6<A, B, C, D, B, A>.first(a).merge4();
      expect(merge318.value, equals(a));

      Union4<A, B, C, D> merge319 = Union6<A, B, C, D, B, A>.second(b).merge4();
      expect(merge319.value, equals(b));

      Union4<A, B, C, D> merge320 = Union6<A, B, C, D, B, A>.third(c).merge4();
      expect(merge320.value, equals(c));

      Union4<A, B, C, D> merge321 = Union6<A, B, C, D, B, A>.forth(d).merge4();
      expect(merge321.value, equals(d));

      Union4<A, B, C, D> merge322 = Union6<A, B, C, D, B, A>.fifth(b).merge4();
      expect(merge322.value, equals(b));

      Union4<A, B, C, D> merge323 = Union6<A, B, C, D, B, A>.sixth(a).merge4();
      expect(merge323.value, equals(a));

      Union4<A, B, C, D> merge324 = Union6<A, B, C, D, B, B>.first(a).merge4();
      expect(merge324.value, equals(a));

      Union4<A, B, C, D> merge325 = Union6<A, B, C, D, B, B>.second(b).merge4();
      expect(merge325.value, equals(b));

      Union4<A, B, C, D> merge326 = Union6<A, B, C, D, B, B>.third(c).merge4();
      expect(merge326.value, equals(c));

      Union4<A, B, C, D> merge327 = Union6<A, B, C, D, B, B>.forth(d).merge4();
      expect(merge327.value, equals(d));

      Union4<A, B, C, D> merge328 = Union6<A, B, C, D, B, B>.fifth(b).merge4();
      expect(merge328.value, equals(b));

      Union4<A, B, C, D> merge329 = Union6<A, B, C, D, B, B>.sixth(b).merge4();
      expect(merge329.value, equals(b));

      Union4<A, B, C, D> merge330 = Union6<A, B, C, D, B, C>.first(a).merge4();
      expect(merge330.value, equals(a));

      Union4<A, B, C, D> merge331 = Union6<A, B, C, D, B, C>.second(b).merge4();
      expect(merge331.value, equals(b));

      Union4<A, B, C, D> merge332 = Union6<A, B, C, D, B, C>.third(c).merge4();
      expect(merge332.value, equals(c));

      Union4<A, B, C, D> merge333 = Union6<A, B, C, D, B, C>.forth(d).merge4();
      expect(merge333.value, equals(d));

      Union4<A, B, C, D> merge334 = Union6<A, B, C, D, B, C>.fifth(b).merge4();
      expect(merge334.value, equals(b));

      Union4<A, B, C, D> merge335 = Union6<A, B, C, D, B, C>.sixth(c).merge4();
      expect(merge335.value, equals(c));

      Union4<A, B, C, D> merge336 = Union6<A, B, C, D, B, D>.first(a).merge4();
      expect(merge336.value, equals(a));

      Union4<A, B, C, D> merge337 = Union6<A, B, C, D, B, D>.second(b).merge4();
      expect(merge337.value, equals(b));

      Union4<A, B, C, D> merge338 = Union6<A, B, C, D, B, D>.third(c).merge4();
      expect(merge338.value, equals(c));

      Union4<A, B, C, D> merge339 = Union6<A, B, C, D, B, D>.forth(d).merge4();
      expect(merge339.value, equals(d));

      Union4<A, B, C, D> merge340 = Union6<A, B, C, D, B, D>.fifth(b).merge4();
      expect(merge340.value, equals(b));

      Union4<A, B, C, D> merge341 = Union6<A, B, C, D, B, D>.sixth(d).merge4();
      expect(merge341.value, equals(d));

      Union4<A, B, C, D> merge342 = Union6<A, B, C, D, C, A>.first(a).merge4();
      expect(merge342.value, equals(a));

      Union4<A, B, C, D> merge343 = Union6<A, B, C, D, C, A>.second(b).merge4();
      expect(merge343.value, equals(b));

      Union4<A, B, C, D> merge344 = Union6<A, B, C, D, C, A>.third(c).merge4();
      expect(merge344.value, equals(c));

      Union4<A, B, C, D> merge345 = Union6<A, B, C, D, C, A>.forth(d).merge4();
      expect(merge345.value, equals(d));

      Union4<A, B, C, D> merge346 = Union6<A, B, C, D, C, A>.fifth(c).merge4();
      expect(merge346.value, equals(c));

      Union4<A, B, C, D> merge347 = Union6<A, B, C, D, C, A>.sixth(a).merge4();
      expect(merge347.value, equals(a));

      Union4<A, B, C, D> merge348 = Union6<A, B, C, D, C, B>.first(a).merge4();
      expect(merge348.value, equals(a));

      Union4<A, B, C, D> merge349 = Union6<A, B, C, D, C, B>.second(b).merge4();
      expect(merge349.value, equals(b));

      Union4<A, B, C, D> merge350 = Union6<A, B, C, D, C, B>.third(c).merge4();
      expect(merge350.value, equals(c));

      Union4<A, B, C, D> merge351 = Union6<A, B, C, D, C, B>.forth(d).merge4();
      expect(merge351.value, equals(d));

      Union4<A, B, C, D> merge352 = Union6<A, B, C, D, C, B>.fifth(c).merge4();
      expect(merge352.value, equals(c));

      Union4<A, B, C, D> merge353 = Union6<A, B, C, D, C, B>.sixth(b).merge4();
      expect(merge353.value, equals(b));

      Union4<A, B, C, D> merge354 = Union6<A, B, C, D, C, C>.first(a).merge4();
      expect(merge354.value, equals(a));

      Union4<A, B, C, D> merge355 = Union6<A, B, C, D, C, C>.second(b).merge4();
      expect(merge355.value, equals(b));

      Union4<A, B, C, D> merge356 = Union6<A, B, C, D, C, C>.third(c).merge4();
      expect(merge356.value, equals(c));

      Union4<A, B, C, D> merge357 = Union6<A, B, C, D, C, C>.forth(d).merge4();
      expect(merge357.value, equals(d));

      Union4<A, B, C, D> merge358 = Union6<A, B, C, D, C, C>.fifth(c).merge4();
      expect(merge358.value, equals(c));

      Union4<A, B, C, D> merge359 = Union6<A, B, C, D, C, C>.sixth(c).merge4();
      expect(merge359.value, equals(c));

      Union4<A, B, C, D> merge360 = Union6<A, B, C, D, C, D>.first(a).merge4();
      expect(merge360.value, equals(a));

      Union4<A, B, C, D> merge361 = Union6<A, B, C, D, C, D>.second(b).merge4();
      expect(merge361.value, equals(b));

      Union4<A, B, C, D> merge362 = Union6<A, B, C, D, C, D>.third(c).merge4();
      expect(merge362.value, equals(c));

      Union4<A, B, C, D> merge363 = Union6<A, B, C, D, C, D>.forth(d).merge4();
      expect(merge363.value, equals(d));

      Union4<A, B, C, D> merge364 = Union6<A, B, C, D, C, D>.fifth(c).merge4();
      expect(merge364.value, equals(c));

      Union4<A, B, C, D> merge365 = Union6<A, B, C, D, C, D>.sixth(d).merge4();
      expect(merge365.value, equals(d));

      Union4<A, B, C, D> merge366 = Union6<A, B, C, D, D, A>.first(a).merge4();
      expect(merge366.value, equals(a));

      Union4<A, B, C, D> merge367 = Union6<A, B, C, D, D, A>.second(b).merge4();
      expect(merge367.value, equals(b));

      Union4<A, B, C, D> merge368 = Union6<A, B, C, D, D, A>.third(c).merge4();
      expect(merge368.value, equals(c));

      Union4<A, B, C, D> merge369 = Union6<A, B, C, D, D, A>.forth(d).merge4();
      expect(merge369.value, equals(d));

      Union4<A, B, C, D> merge370 = Union6<A, B, C, D, D, A>.fifth(d).merge4();
      expect(merge370.value, equals(d));

      Union4<A, B, C, D> merge371 = Union6<A, B, C, D, D, A>.sixth(a).merge4();
      expect(merge371.value, equals(a));

      Union4<A, B, C, D> merge372 = Union6<A, B, C, D, D, B>.first(a).merge4();
      expect(merge372.value, equals(a));

      Union4<A, B, C, D> merge373 = Union6<A, B, C, D, D, B>.second(b).merge4();
      expect(merge373.value, equals(b));

      Union4<A, B, C, D> merge374 = Union6<A, B, C, D, D, B>.third(c).merge4();
      expect(merge374.value, equals(c));

      Union4<A, B, C, D> merge375 = Union6<A, B, C, D, D, B>.forth(d).merge4();
      expect(merge375.value, equals(d));

      Union4<A, B, C, D> merge376 = Union6<A, B, C, D, D, B>.fifth(d).merge4();
      expect(merge376.value, equals(d));

      Union4<A, B, C, D> merge377 = Union6<A, B, C, D, D, B>.sixth(b).merge4();
      expect(merge377.value, equals(b));

      Union4<A, B, C, D> merge378 = Union6<A, B, C, D, D, C>.first(a).merge4();
      expect(merge378.value, equals(a));

      Union4<A, B, C, D> merge379 = Union6<A, B, C, D, D, C>.second(b).merge4();
      expect(merge379.value, equals(b));

      Union4<A, B, C, D> merge380 = Union6<A, B, C, D, D, C>.third(c).merge4();
      expect(merge380.value, equals(c));

      Union4<A, B, C, D> merge381 = Union6<A, B, C, D, D, C>.forth(d).merge4();
      expect(merge381.value, equals(d));

      Union4<A, B, C, D> merge382 = Union6<A, B, C, D, D, C>.fifth(d).merge4();
      expect(merge382.value, equals(d));

      Union4<A, B, C, D> merge383 = Union6<A, B, C, D, D, C>.sixth(c).merge4();
      expect(merge383.value, equals(c));

      Union4<A, B, C, D> merge384 = Union6<A, B, C, D, D, D>.first(a).merge4();
      expect(merge384.value, equals(a));

      Union4<A, B, C, D> merge385 = Union6<A, B, C, D, D, D>.second(b).merge4();
      expect(merge385.value, equals(b));

      Union4<A, B, C, D> merge386 = Union6<A, B, C, D, D, D>.third(c).merge4();
      expect(merge386.value, equals(c));

      Union4<A, B, C, D> merge387 = Union6<A, B, C, D, D, D>.forth(d).merge4();
      expect(merge387.value, equals(d));

      Union4<A, B, C, D> merge388 = Union6<A, B, C, D, D, D>.fifth(d).merge4();
      expect(merge388.value, equals(d));

      Union4<A, B, C, D> merge389 = Union6<A, B, C, D, D, D>.sixth(d).merge4();
      expect(merge389.value, equals(d));
    });
    test('to Union3', () {
      Union3<A, B, C> merge0 = Union6<A, A, A, A, B, C>.first(a).merge3();
      expect(merge0.value, equals(a));

      Union3<A, B, C> merge1 = Union6<A, A, A, A, B, C>.second(a).merge3();
      expect(merge1.value, equals(a));

      Union3<A, B, C> merge2 = Union6<A, A, A, A, B, C>.third(a).merge3();
      expect(merge2.value, equals(a));

      Union3<A, B, C> merge3 = Union6<A, A, A, A, B, C>.forth(a).merge3();
      expect(merge3.value, equals(a));

      Union3<A, B, C> merge4 = Union6<A, A, A, A, B, C>.fifth(b).merge3();
      expect(merge4.value, equals(b));

      Union3<A, B, C> merge5 = Union6<A, A, A, A, B, C>.sixth(c).merge3();
      expect(merge5.value, equals(c));

      Union3<A, B, C> merge6 = Union6<A, A, A, B, A, C>.first(a).merge3();
      expect(merge6.value, equals(a));

      Union3<A, B, C> merge7 = Union6<A, A, A, B, A, C>.second(a).merge3();
      expect(merge7.value, equals(a));

      Union3<A, B, C> merge8 = Union6<A, A, A, B, A, C>.third(a).merge3();
      expect(merge8.value, equals(a));

      Union3<A, B, C> merge9 = Union6<A, A, A, B, A, C>.forth(b).merge3();
      expect(merge9.value, equals(b));

      Union3<A, B, C> merge10 = Union6<A, A, A, B, A, C>.fifth(a).merge3();
      expect(merge10.value, equals(a));

      Union3<A, B, C> merge11 = Union6<A, A, A, B, A, C>.sixth(c).merge3();
      expect(merge11.value, equals(c));

      Union3<A, B, C> merge12 = Union6<A, A, A, B, B, C>.first(a).merge3();
      expect(merge12.value, equals(a));

      Union3<A, B, C> merge13 = Union6<A, A, A, B, B, C>.second(a).merge3();
      expect(merge13.value, equals(a));

      Union3<A, B, C> merge14 = Union6<A, A, A, B, B, C>.third(a).merge3();
      expect(merge14.value, equals(a));

      Union3<A, B, C> merge15 = Union6<A, A, A, B, B, C>.forth(b).merge3();
      expect(merge15.value, equals(b));

      Union3<A, B, C> merge16 = Union6<A, A, A, B, B, C>.fifth(b).merge3();
      expect(merge16.value, equals(b));

      Union3<A, B, C> merge17 = Union6<A, A, A, B, B, C>.sixth(c).merge3();
      expect(merge17.value, equals(c));

      Union3<A, B, C> merge18 = Union6<A, A, A, B, C, A>.first(a).merge3();
      expect(merge18.value, equals(a));

      Union3<A, B, C> merge19 = Union6<A, A, A, B, C, A>.second(a).merge3();
      expect(merge19.value, equals(a));

      Union3<A, B, C> merge20 = Union6<A, A, A, B, C, A>.third(a).merge3();
      expect(merge20.value, equals(a));

      Union3<A, B, C> merge21 = Union6<A, A, A, B, C, A>.forth(b).merge3();
      expect(merge21.value, equals(b));

      Union3<A, B, C> merge22 = Union6<A, A, A, B, C, A>.fifth(c).merge3();
      expect(merge22.value, equals(c));

      Union3<A, B, C> merge23 = Union6<A, A, A, B, C, A>.sixth(a).merge3();
      expect(merge23.value, equals(a));

      Union3<A, B, C> merge24 = Union6<A, A, A, B, C, B>.first(a).merge3();
      expect(merge24.value, equals(a));

      Union3<A, B, C> merge25 = Union6<A, A, A, B, C, B>.second(a).merge3();
      expect(merge25.value, equals(a));

      Union3<A, B, C> merge26 = Union6<A, A, A, B, C, B>.third(a).merge3();
      expect(merge26.value, equals(a));

      Union3<A, B, C> merge27 = Union6<A, A, A, B, C, B>.forth(b).merge3();
      expect(merge27.value, equals(b));

      Union3<A, B, C> merge28 = Union6<A, A, A, B, C, B>.fifth(c).merge3();
      expect(merge28.value, equals(c));

      Union3<A, B, C> merge29 = Union6<A, A, A, B, C, B>.sixth(b).merge3();
      expect(merge29.value, equals(b));

      Union3<A, B, C> merge30 = Union6<A, A, A, B, C, C>.first(a).merge3();
      expect(merge30.value, equals(a));

      Union3<A, B, C> merge31 = Union6<A, A, A, B, C, C>.second(a).merge3();
      expect(merge31.value, equals(a));

      Union3<A, B, C> merge32 = Union6<A, A, A, B, C, C>.third(a).merge3();
      expect(merge32.value, equals(a));

      Union3<A, B, C> merge33 = Union6<A, A, A, B, C, C>.forth(b).merge3();
      expect(merge33.value, equals(b));

      Union3<A, B, C> merge34 = Union6<A, A, A, B, C, C>.fifth(c).merge3();
      expect(merge34.value, equals(c));

      Union3<A, B, C> merge35 = Union6<A, A, A, B, C, C>.sixth(c).merge3();
      expect(merge35.value, equals(c));

      Union3<A, B, C> merge36 = Union6<A, A, B, A, A, C>.first(a).merge3();
      expect(merge36.value, equals(a));

      Union3<A, B, C> merge37 = Union6<A, A, B, A, A, C>.second(a).merge3();
      expect(merge37.value, equals(a));

      Union3<A, B, C> merge38 = Union6<A, A, B, A, A, C>.third(b).merge3();
      expect(merge38.value, equals(b));

      Union3<A, B, C> merge39 = Union6<A, A, B, A, A, C>.forth(a).merge3();
      expect(merge39.value, equals(a));

      Union3<A, B, C> merge40 = Union6<A, A, B, A, A, C>.fifth(a).merge3();
      expect(merge40.value, equals(a));

      Union3<A, B, C> merge41 = Union6<A, A, B, A, A, C>.sixth(c).merge3();
      expect(merge41.value, equals(c));

      Union3<A, B, C> merge42 = Union6<A, A, B, A, B, C>.first(a).merge3();
      expect(merge42.value, equals(a));

      Union3<A, B, C> merge43 = Union6<A, A, B, A, B, C>.second(a).merge3();
      expect(merge43.value, equals(a));

      Union3<A, B, C> merge44 = Union6<A, A, B, A, B, C>.third(b).merge3();
      expect(merge44.value, equals(b));

      Union3<A, B, C> merge45 = Union6<A, A, B, A, B, C>.forth(a).merge3();
      expect(merge45.value, equals(a));

      Union3<A, B, C> merge46 = Union6<A, A, B, A, B, C>.fifth(b).merge3();
      expect(merge46.value, equals(b));

      Union3<A, B, C> merge47 = Union6<A, A, B, A, B, C>.sixth(c).merge3();
      expect(merge47.value, equals(c));

      Union3<A, B, C> merge48 = Union6<A, A, B, A, C, A>.first(a).merge3();
      expect(merge48.value, equals(a));

      Union3<A, B, C> merge49 = Union6<A, A, B, A, C, A>.second(a).merge3();
      expect(merge49.value, equals(a));

      Union3<A, B, C> merge50 = Union6<A, A, B, A, C, A>.third(b).merge3();
      expect(merge50.value, equals(b));

      Union3<A, B, C> merge51 = Union6<A, A, B, A, C, A>.forth(a).merge3();
      expect(merge51.value, equals(a));

      Union3<A, B, C> merge52 = Union6<A, A, B, A, C, A>.fifth(c).merge3();
      expect(merge52.value, equals(c));

      Union3<A, B, C> merge53 = Union6<A, A, B, A, C, A>.sixth(a).merge3();
      expect(merge53.value, equals(a));

      Union3<A, B, C> merge54 = Union6<A, A, B, A, C, B>.first(a).merge3();
      expect(merge54.value, equals(a));

      Union3<A, B, C> merge55 = Union6<A, A, B, A, C, B>.second(a).merge3();
      expect(merge55.value, equals(a));

      Union3<A, B, C> merge56 = Union6<A, A, B, A, C, B>.third(b).merge3();
      expect(merge56.value, equals(b));

      Union3<A, B, C> merge57 = Union6<A, A, B, A, C, B>.forth(a).merge3();
      expect(merge57.value, equals(a));

      Union3<A, B, C> merge58 = Union6<A, A, B, A, C, B>.fifth(c).merge3();
      expect(merge58.value, equals(c));

      Union3<A, B, C> merge59 = Union6<A, A, B, A, C, B>.sixth(b).merge3();
      expect(merge59.value, equals(b));

      Union3<A, B, C> merge60 = Union6<A, A, B, A, C, C>.first(a).merge3();
      expect(merge60.value, equals(a));

      Union3<A, B, C> merge61 = Union6<A, A, B, A, C, C>.second(a).merge3();
      expect(merge61.value, equals(a));

      Union3<A, B, C> merge62 = Union6<A, A, B, A, C, C>.third(b).merge3();
      expect(merge62.value, equals(b));

      Union3<A, B, C> merge63 = Union6<A, A, B, A, C, C>.forth(a).merge3();
      expect(merge63.value, equals(a));

      Union3<A, B, C> merge64 = Union6<A, A, B, A, C, C>.fifth(c).merge3();
      expect(merge64.value, equals(c));

      Union3<A, B, C> merge65 = Union6<A, A, B, A, C, C>.sixth(c).merge3();
      expect(merge65.value, equals(c));

      Union3<A, B, C> merge66 = Union6<A, A, B, B, A, C>.first(a).merge3();
      expect(merge66.value, equals(a));

      Union3<A, B, C> merge67 = Union6<A, A, B, B, A, C>.second(a).merge3();
      expect(merge67.value, equals(a));

      Union3<A, B, C> merge68 = Union6<A, A, B, B, A, C>.third(b).merge3();
      expect(merge68.value, equals(b));

      Union3<A, B, C> merge69 = Union6<A, A, B, B, A, C>.forth(b).merge3();
      expect(merge69.value, equals(b));

      Union3<A, B, C> merge70 = Union6<A, A, B, B, A, C>.fifth(a).merge3();
      expect(merge70.value, equals(a));

      Union3<A, B, C> merge71 = Union6<A, A, B, B, A, C>.sixth(c).merge3();
      expect(merge71.value, equals(c));

      Union3<A, B, C> merge72 = Union6<A, A, B, B, B, C>.first(a).merge3();
      expect(merge72.value, equals(a));

      Union3<A, B, C> merge73 = Union6<A, A, B, B, B, C>.second(a).merge3();
      expect(merge73.value, equals(a));

      Union3<A, B, C> merge74 = Union6<A, A, B, B, B, C>.third(b).merge3();
      expect(merge74.value, equals(b));

      Union3<A, B, C> merge75 = Union6<A, A, B, B, B, C>.forth(b).merge3();
      expect(merge75.value, equals(b));

      Union3<A, B, C> merge76 = Union6<A, A, B, B, B, C>.fifth(b).merge3();
      expect(merge76.value, equals(b));

      Union3<A, B, C> merge77 = Union6<A, A, B, B, B, C>.sixth(c).merge3();
      expect(merge77.value, equals(c));

      Union3<A, B, C> merge78 = Union6<A, A, B, B, C, A>.first(a).merge3();
      expect(merge78.value, equals(a));

      Union3<A, B, C> merge79 = Union6<A, A, B, B, C, A>.second(a).merge3();
      expect(merge79.value, equals(a));

      Union3<A, B, C> merge80 = Union6<A, A, B, B, C, A>.third(b).merge3();
      expect(merge80.value, equals(b));

      Union3<A, B, C> merge81 = Union6<A, A, B, B, C, A>.forth(b).merge3();
      expect(merge81.value, equals(b));

      Union3<A, B, C> merge82 = Union6<A, A, B, B, C, A>.fifth(c).merge3();
      expect(merge82.value, equals(c));

      Union3<A, B, C> merge83 = Union6<A, A, B, B, C, A>.sixth(a).merge3();
      expect(merge83.value, equals(a));

      Union3<A, B, C> merge84 = Union6<A, A, B, B, C, B>.first(a).merge3();
      expect(merge84.value, equals(a));

      Union3<A, B, C> merge85 = Union6<A, A, B, B, C, B>.second(a).merge3();
      expect(merge85.value, equals(a));

      Union3<A, B, C> merge86 = Union6<A, A, B, B, C, B>.third(b).merge3();
      expect(merge86.value, equals(b));

      Union3<A, B, C> merge87 = Union6<A, A, B, B, C, B>.forth(b).merge3();
      expect(merge87.value, equals(b));

      Union3<A, B, C> merge88 = Union6<A, A, B, B, C, B>.fifth(c).merge3();
      expect(merge88.value, equals(c));

      Union3<A, B, C> merge89 = Union6<A, A, B, B, C, B>.sixth(b).merge3();
      expect(merge89.value, equals(b));

      Union3<A, B, C> merge90 = Union6<A, A, B, B, C, C>.first(a).merge3();
      expect(merge90.value, equals(a));

      Union3<A, B, C> merge91 = Union6<A, A, B, B, C, C>.second(a).merge3();
      expect(merge91.value, equals(a));

      Union3<A, B, C> merge92 = Union6<A, A, B, B, C, C>.third(b).merge3();
      expect(merge92.value, equals(b));

      Union3<A, B, C> merge93 = Union6<A, A, B, B, C, C>.forth(b).merge3();
      expect(merge93.value, equals(b));

      Union3<A, B, C> merge94 = Union6<A, A, B, B, C, C>.fifth(c).merge3();
      expect(merge94.value, equals(c));

      Union3<A, B, C> merge95 = Union6<A, A, B, B, C, C>.sixth(c).merge3();
      expect(merge95.value, equals(c));

      Union3<A, B, C> merge96 = Union6<A, A, B, C, A, A>.first(a).merge3();
      expect(merge96.value, equals(a));

      Union3<A, B, C> merge97 = Union6<A, A, B, C, A, A>.second(a).merge3();
      expect(merge97.value, equals(a));

      Union3<A, B, C> merge98 = Union6<A, A, B, C, A, A>.third(b).merge3();
      expect(merge98.value, equals(b));

      Union3<A, B, C> merge99 = Union6<A, A, B, C, A, A>.forth(c).merge3();
      expect(merge99.value, equals(c));

      Union3<A, B, C> merge100 = Union6<A, A, B, C, A, A>.fifth(a).merge3();
      expect(merge100.value, equals(a));

      Union3<A, B, C> merge101 = Union6<A, A, B, C, A, A>.sixth(a).merge3();
      expect(merge101.value, equals(a));

      Union3<A, B, C> merge102 = Union6<A, A, B, C, A, B>.first(a).merge3();
      expect(merge102.value, equals(a));

      Union3<A, B, C> merge103 = Union6<A, A, B, C, A, B>.second(a).merge3();
      expect(merge103.value, equals(a));

      Union3<A, B, C> merge104 = Union6<A, A, B, C, A, B>.third(b).merge3();
      expect(merge104.value, equals(b));

      Union3<A, B, C> merge105 = Union6<A, A, B, C, A, B>.forth(c).merge3();
      expect(merge105.value, equals(c));

      Union3<A, B, C> merge106 = Union6<A, A, B, C, A, B>.fifth(a).merge3();
      expect(merge106.value, equals(a));

      Union3<A, B, C> merge107 = Union6<A, A, B, C, A, B>.sixth(b).merge3();
      expect(merge107.value, equals(b));

      Union3<A, B, C> merge108 = Union6<A, A, B, C, A, C>.first(a).merge3();
      expect(merge108.value, equals(a));

      Union3<A, B, C> merge109 = Union6<A, A, B, C, A, C>.second(a).merge3();
      expect(merge109.value, equals(a));

      Union3<A, B, C> merge110 = Union6<A, A, B, C, A, C>.third(b).merge3();
      expect(merge110.value, equals(b));

      Union3<A, B, C> merge111 = Union6<A, A, B, C, A, C>.forth(c).merge3();
      expect(merge111.value, equals(c));

      Union3<A, B, C> merge112 = Union6<A, A, B, C, A, C>.fifth(a).merge3();
      expect(merge112.value, equals(a));

      Union3<A, B, C> merge113 = Union6<A, A, B, C, A, C>.sixth(c).merge3();
      expect(merge113.value, equals(c));

      Union3<A, B, C> merge114 = Union6<A, A, B, C, B, A>.first(a).merge3();
      expect(merge114.value, equals(a));

      Union3<A, B, C> merge115 = Union6<A, A, B, C, B, A>.second(a).merge3();
      expect(merge115.value, equals(a));

      Union3<A, B, C> merge116 = Union6<A, A, B, C, B, A>.third(b).merge3();
      expect(merge116.value, equals(b));

      Union3<A, B, C> merge117 = Union6<A, A, B, C, B, A>.forth(c).merge3();
      expect(merge117.value, equals(c));

      Union3<A, B, C> merge118 = Union6<A, A, B, C, B, A>.fifth(b).merge3();
      expect(merge118.value, equals(b));

      Union3<A, B, C> merge119 = Union6<A, A, B, C, B, A>.sixth(a).merge3();
      expect(merge119.value, equals(a));

      Union3<A, B, C> merge120 = Union6<A, A, B, C, B, B>.first(a).merge3();
      expect(merge120.value, equals(a));

      Union3<A, B, C> merge121 = Union6<A, A, B, C, B, B>.second(a).merge3();
      expect(merge121.value, equals(a));

      Union3<A, B, C> merge122 = Union6<A, A, B, C, B, B>.third(b).merge3();
      expect(merge122.value, equals(b));

      Union3<A, B, C> merge123 = Union6<A, A, B, C, B, B>.forth(c).merge3();
      expect(merge123.value, equals(c));

      Union3<A, B, C> merge124 = Union6<A, A, B, C, B, B>.fifth(b).merge3();
      expect(merge124.value, equals(b));

      Union3<A, B, C> merge125 = Union6<A, A, B, C, B, B>.sixth(b).merge3();
      expect(merge125.value, equals(b));

      Union3<A, B, C> merge126 = Union6<A, A, B, C, B, C>.first(a).merge3();
      expect(merge126.value, equals(a));

      Union3<A, B, C> merge127 = Union6<A, A, B, C, B, C>.second(a).merge3();
      expect(merge127.value, equals(a));

      Union3<A, B, C> merge128 = Union6<A, A, B, C, B, C>.third(b).merge3();
      expect(merge128.value, equals(b));

      Union3<A, B, C> merge129 = Union6<A, A, B, C, B, C>.forth(c).merge3();
      expect(merge129.value, equals(c));

      Union3<A, B, C> merge130 = Union6<A, A, B, C, B, C>.fifth(b).merge3();
      expect(merge130.value, equals(b));

      Union3<A, B, C> merge131 = Union6<A, A, B, C, B, C>.sixth(c).merge3();
      expect(merge131.value, equals(c));

      Union3<A, B, C> merge132 = Union6<A, A, B, C, C, A>.first(a).merge3();
      expect(merge132.value, equals(a));

      Union3<A, B, C> merge133 = Union6<A, A, B, C, C, A>.second(a).merge3();
      expect(merge133.value, equals(a));

      Union3<A, B, C> merge134 = Union6<A, A, B, C, C, A>.third(b).merge3();
      expect(merge134.value, equals(b));

      Union3<A, B, C> merge135 = Union6<A, A, B, C, C, A>.forth(c).merge3();
      expect(merge135.value, equals(c));

      Union3<A, B, C> merge136 = Union6<A, A, B, C, C, A>.fifth(c).merge3();
      expect(merge136.value, equals(c));

      Union3<A, B, C> merge137 = Union6<A, A, B, C, C, A>.sixth(a).merge3();
      expect(merge137.value, equals(a));

      Union3<A, B, C> merge138 = Union6<A, A, B, C, C, B>.first(a).merge3();
      expect(merge138.value, equals(a));

      Union3<A, B, C> merge139 = Union6<A, A, B, C, C, B>.second(a).merge3();
      expect(merge139.value, equals(a));

      Union3<A, B, C> merge140 = Union6<A, A, B, C, C, B>.third(b).merge3();
      expect(merge140.value, equals(b));

      Union3<A, B, C> merge141 = Union6<A, A, B, C, C, B>.forth(c).merge3();
      expect(merge141.value, equals(c));

      Union3<A, B, C> merge142 = Union6<A, A, B, C, C, B>.fifth(c).merge3();
      expect(merge142.value, equals(c));

      Union3<A, B, C> merge143 = Union6<A, A, B, C, C, B>.sixth(b).merge3();
      expect(merge143.value, equals(b));

      Union3<A, B, C> merge144 = Union6<A, A, B, C, C, C>.first(a).merge3();
      expect(merge144.value, equals(a));

      Union3<A, B, C> merge145 = Union6<A, A, B, C, C, C>.second(a).merge3();
      expect(merge145.value, equals(a));

      Union3<A, B, C> merge146 = Union6<A, A, B, C, C, C>.third(b).merge3();
      expect(merge146.value, equals(b));

      Union3<A, B, C> merge147 = Union6<A, A, B, C, C, C>.forth(c).merge3();
      expect(merge147.value, equals(c));

      Union3<A, B, C> merge148 = Union6<A, A, B, C, C, C>.fifth(c).merge3();
      expect(merge148.value, equals(c));

      Union3<A, B, C> merge149 = Union6<A, A, B, C, C, C>.sixth(c).merge3();
      expect(merge149.value, equals(c));

      Union3<A, B, C> merge150 = Union6<A, B, A, A, A, C>.first(a).merge3();
      expect(merge150.value, equals(a));

      Union3<A, B, C> merge151 = Union6<A, B, A, A, A, C>.second(b).merge3();
      expect(merge151.value, equals(b));

      Union3<A, B, C> merge152 = Union6<A, B, A, A, A, C>.third(a).merge3();
      expect(merge152.value, equals(a));

      Union3<A, B, C> merge153 = Union6<A, B, A, A, A, C>.forth(a).merge3();
      expect(merge153.value, equals(a));

      Union3<A, B, C> merge154 = Union6<A, B, A, A, A, C>.fifth(a).merge3();
      expect(merge154.value, equals(a));

      Union3<A, B, C> merge155 = Union6<A, B, A, A, A, C>.sixth(c).merge3();
      expect(merge155.value, equals(c));

      Union3<A, B, C> merge156 = Union6<A, B, A, A, B, C>.first(a).merge3();
      expect(merge156.value, equals(a));

      Union3<A, B, C> merge157 = Union6<A, B, A, A, B, C>.second(b).merge3();
      expect(merge157.value, equals(b));

      Union3<A, B, C> merge158 = Union6<A, B, A, A, B, C>.third(a).merge3();
      expect(merge158.value, equals(a));

      Union3<A, B, C> merge159 = Union6<A, B, A, A, B, C>.forth(a).merge3();
      expect(merge159.value, equals(a));

      Union3<A, B, C> merge160 = Union6<A, B, A, A, B, C>.fifth(b).merge3();
      expect(merge160.value, equals(b));

      Union3<A, B, C> merge161 = Union6<A, B, A, A, B, C>.sixth(c).merge3();
      expect(merge161.value, equals(c));

      Union3<A, B, C> merge162 = Union6<A, B, A, A, C, A>.first(a).merge3();
      expect(merge162.value, equals(a));

      Union3<A, B, C> merge163 = Union6<A, B, A, A, C, A>.second(b).merge3();
      expect(merge163.value, equals(b));

      Union3<A, B, C> merge164 = Union6<A, B, A, A, C, A>.third(a).merge3();
      expect(merge164.value, equals(a));

      Union3<A, B, C> merge165 = Union6<A, B, A, A, C, A>.forth(a).merge3();
      expect(merge165.value, equals(a));

      Union3<A, B, C> merge166 = Union6<A, B, A, A, C, A>.fifth(c).merge3();
      expect(merge166.value, equals(c));

      Union3<A, B, C> merge167 = Union6<A, B, A, A, C, A>.sixth(a).merge3();
      expect(merge167.value, equals(a));

      Union3<A, B, C> merge168 = Union6<A, B, A, A, C, B>.first(a).merge3();
      expect(merge168.value, equals(a));

      Union3<A, B, C> merge169 = Union6<A, B, A, A, C, B>.second(b).merge3();
      expect(merge169.value, equals(b));

      Union3<A, B, C> merge170 = Union6<A, B, A, A, C, B>.third(a).merge3();
      expect(merge170.value, equals(a));

      Union3<A, B, C> merge171 = Union6<A, B, A, A, C, B>.forth(a).merge3();
      expect(merge171.value, equals(a));

      Union3<A, B, C> merge172 = Union6<A, B, A, A, C, B>.fifth(c).merge3();
      expect(merge172.value, equals(c));

      Union3<A, B, C> merge173 = Union6<A, B, A, A, C, B>.sixth(b).merge3();
      expect(merge173.value, equals(b));

      Union3<A, B, C> merge174 = Union6<A, B, A, A, C, C>.first(a).merge3();
      expect(merge174.value, equals(a));

      Union3<A, B, C> merge175 = Union6<A, B, A, A, C, C>.second(b).merge3();
      expect(merge175.value, equals(b));

      Union3<A, B, C> merge176 = Union6<A, B, A, A, C, C>.third(a).merge3();
      expect(merge176.value, equals(a));

      Union3<A, B, C> merge177 = Union6<A, B, A, A, C, C>.forth(a).merge3();
      expect(merge177.value, equals(a));

      Union3<A, B, C> merge178 = Union6<A, B, A, A, C, C>.fifth(c).merge3();
      expect(merge178.value, equals(c));

      Union3<A, B, C> merge179 = Union6<A, B, A, A, C, C>.sixth(c).merge3();
      expect(merge179.value, equals(c));

      Union3<A, B, C> merge180 = Union6<A, B, A, B, A, C>.first(a).merge3();
      expect(merge180.value, equals(a));

      Union3<A, B, C> merge181 = Union6<A, B, A, B, A, C>.second(b).merge3();
      expect(merge181.value, equals(b));

      Union3<A, B, C> merge182 = Union6<A, B, A, B, A, C>.third(a).merge3();
      expect(merge182.value, equals(a));

      Union3<A, B, C> merge183 = Union6<A, B, A, B, A, C>.forth(b).merge3();
      expect(merge183.value, equals(b));

      Union3<A, B, C> merge184 = Union6<A, B, A, B, A, C>.fifth(a).merge3();
      expect(merge184.value, equals(a));

      Union3<A, B, C> merge185 = Union6<A, B, A, B, A, C>.sixth(c).merge3();
      expect(merge185.value, equals(c));

      Union3<A, B, C> merge186 = Union6<A, B, A, B, B, C>.first(a).merge3();
      expect(merge186.value, equals(a));

      Union3<A, B, C> merge187 = Union6<A, B, A, B, B, C>.second(b).merge3();
      expect(merge187.value, equals(b));

      Union3<A, B, C> merge188 = Union6<A, B, A, B, B, C>.third(a).merge3();
      expect(merge188.value, equals(a));

      Union3<A, B, C> merge189 = Union6<A, B, A, B, B, C>.forth(b).merge3();
      expect(merge189.value, equals(b));

      Union3<A, B, C> merge190 = Union6<A, B, A, B, B, C>.fifth(b).merge3();
      expect(merge190.value, equals(b));

      Union3<A, B, C> merge191 = Union6<A, B, A, B, B, C>.sixth(c).merge3();
      expect(merge191.value, equals(c));

      Union3<A, B, C> merge192 = Union6<A, B, A, B, C, A>.first(a).merge3();
      expect(merge192.value, equals(a));

      Union3<A, B, C> merge193 = Union6<A, B, A, B, C, A>.second(b).merge3();
      expect(merge193.value, equals(b));

      Union3<A, B, C> merge194 = Union6<A, B, A, B, C, A>.third(a).merge3();
      expect(merge194.value, equals(a));

      Union3<A, B, C> merge195 = Union6<A, B, A, B, C, A>.forth(b).merge3();
      expect(merge195.value, equals(b));

      Union3<A, B, C> merge196 = Union6<A, B, A, B, C, A>.fifth(c).merge3();
      expect(merge196.value, equals(c));

      Union3<A, B, C> merge197 = Union6<A, B, A, B, C, A>.sixth(a).merge3();
      expect(merge197.value, equals(a));

      Union3<A, B, C> merge198 = Union6<A, B, A, B, C, B>.first(a).merge3();
      expect(merge198.value, equals(a));

      Union3<A, B, C> merge199 = Union6<A, B, A, B, C, B>.second(b).merge3();
      expect(merge199.value, equals(b));

      Union3<A, B, C> merge200 = Union6<A, B, A, B, C, B>.third(a).merge3();
      expect(merge200.value, equals(a));

      Union3<A, B, C> merge201 = Union6<A, B, A, B, C, B>.forth(b).merge3();
      expect(merge201.value, equals(b));

      Union3<A, B, C> merge202 = Union6<A, B, A, B, C, B>.fifth(c).merge3();
      expect(merge202.value, equals(c));

      Union3<A, B, C> merge203 = Union6<A, B, A, B, C, B>.sixth(b).merge3();
      expect(merge203.value, equals(b));

      Union3<A, B, C> merge204 = Union6<A, B, A, B, C, C>.first(a).merge3();
      expect(merge204.value, equals(a));

      Union3<A, B, C> merge205 = Union6<A, B, A, B, C, C>.second(b).merge3();
      expect(merge205.value, equals(b));

      Union3<A, B, C> merge206 = Union6<A, B, A, B, C, C>.third(a).merge3();
      expect(merge206.value, equals(a));

      Union3<A, B, C> merge207 = Union6<A, B, A, B, C, C>.forth(b).merge3();
      expect(merge207.value, equals(b));

      Union3<A, B, C> merge208 = Union6<A, B, A, B, C, C>.fifth(c).merge3();
      expect(merge208.value, equals(c));

      Union3<A, B, C> merge209 = Union6<A, B, A, B, C, C>.sixth(c).merge3();
      expect(merge209.value, equals(c));

      Union3<A, B, C> merge210 = Union6<A, B, A, C, A, A>.first(a).merge3();
      expect(merge210.value, equals(a));

      Union3<A, B, C> merge211 = Union6<A, B, A, C, A, A>.second(b).merge3();
      expect(merge211.value, equals(b));

      Union3<A, B, C> merge212 = Union6<A, B, A, C, A, A>.third(a).merge3();
      expect(merge212.value, equals(a));

      Union3<A, B, C> merge213 = Union6<A, B, A, C, A, A>.forth(c).merge3();
      expect(merge213.value, equals(c));

      Union3<A, B, C> merge214 = Union6<A, B, A, C, A, A>.fifth(a).merge3();
      expect(merge214.value, equals(a));

      Union3<A, B, C> merge215 = Union6<A, B, A, C, A, A>.sixth(a).merge3();
      expect(merge215.value, equals(a));

      Union3<A, B, C> merge216 = Union6<A, B, A, C, A, B>.first(a).merge3();
      expect(merge216.value, equals(a));

      Union3<A, B, C> merge217 = Union6<A, B, A, C, A, B>.second(b).merge3();
      expect(merge217.value, equals(b));

      Union3<A, B, C> merge218 = Union6<A, B, A, C, A, B>.third(a).merge3();
      expect(merge218.value, equals(a));

      Union3<A, B, C> merge219 = Union6<A, B, A, C, A, B>.forth(c).merge3();
      expect(merge219.value, equals(c));

      Union3<A, B, C> merge220 = Union6<A, B, A, C, A, B>.fifth(a).merge3();
      expect(merge220.value, equals(a));

      Union3<A, B, C> merge221 = Union6<A, B, A, C, A, B>.sixth(b).merge3();
      expect(merge221.value, equals(b));

      Union3<A, B, C> merge222 = Union6<A, B, A, C, A, C>.first(a).merge3();
      expect(merge222.value, equals(a));

      Union3<A, B, C> merge223 = Union6<A, B, A, C, A, C>.second(b).merge3();
      expect(merge223.value, equals(b));

      Union3<A, B, C> merge224 = Union6<A, B, A, C, A, C>.third(a).merge3();
      expect(merge224.value, equals(a));

      Union3<A, B, C> merge225 = Union6<A, B, A, C, A, C>.forth(c).merge3();
      expect(merge225.value, equals(c));

      Union3<A, B, C> merge226 = Union6<A, B, A, C, A, C>.fifth(a).merge3();
      expect(merge226.value, equals(a));

      Union3<A, B, C> merge227 = Union6<A, B, A, C, A, C>.sixth(c).merge3();
      expect(merge227.value, equals(c));

      Union3<A, B, C> merge228 = Union6<A, B, A, C, B, A>.first(a).merge3();
      expect(merge228.value, equals(a));

      Union3<A, B, C> merge229 = Union6<A, B, A, C, B, A>.second(b).merge3();
      expect(merge229.value, equals(b));

      Union3<A, B, C> merge230 = Union6<A, B, A, C, B, A>.third(a).merge3();
      expect(merge230.value, equals(a));

      Union3<A, B, C> merge231 = Union6<A, B, A, C, B, A>.forth(c).merge3();
      expect(merge231.value, equals(c));

      Union3<A, B, C> merge232 = Union6<A, B, A, C, B, A>.fifth(b).merge3();
      expect(merge232.value, equals(b));

      Union3<A, B, C> merge233 = Union6<A, B, A, C, B, A>.sixth(a).merge3();
      expect(merge233.value, equals(a));

      Union3<A, B, C> merge234 = Union6<A, B, A, C, B, B>.first(a).merge3();
      expect(merge234.value, equals(a));

      Union3<A, B, C> merge235 = Union6<A, B, A, C, B, B>.second(b).merge3();
      expect(merge235.value, equals(b));

      Union3<A, B, C> merge236 = Union6<A, B, A, C, B, B>.third(a).merge3();
      expect(merge236.value, equals(a));

      Union3<A, B, C> merge237 = Union6<A, B, A, C, B, B>.forth(c).merge3();
      expect(merge237.value, equals(c));

      Union3<A, B, C> merge238 = Union6<A, B, A, C, B, B>.fifth(b).merge3();
      expect(merge238.value, equals(b));

      Union3<A, B, C> merge239 = Union6<A, B, A, C, B, B>.sixth(b).merge3();
      expect(merge239.value, equals(b));

      Union3<A, B, C> merge240 = Union6<A, B, A, C, B, C>.first(a).merge3();
      expect(merge240.value, equals(a));

      Union3<A, B, C> merge241 = Union6<A, B, A, C, B, C>.second(b).merge3();
      expect(merge241.value, equals(b));

      Union3<A, B, C> merge242 = Union6<A, B, A, C, B, C>.third(a).merge3();
      expect(merge242.value, equals(a));

      Union3<A, B, C> merge243 = Union6<A, B, A, C, B, C>.forth(c).merge3();
      expect(merge243.value, equals(c));

      Union3<A, B, C> merge244 = Union6<A, B, A, C, B, C>.fifth(b).merge3();
      expect(merge244.value, equals(b));

      Union3<A, B, C> merge245 = Union6<A, B, A, C, B, C>.sixth(c).merge3();
      expect(merge245.value, equals(c));

      Union3<A, B, C> merge246 = Union6<A, B, A, C, C, A>.first(a).merge3();
      expect(merge246.value, equals(a));

      Union3<A, B, C> merge247 = Union6<A, B, A, C, C, A>.second(b).merge3();
      expect(merge247.value, equals(b));

      Union3<A, B, C> merge248 = Union6<A, B, A, C, C, A>.third(a).merge3();
      expect(merge248.value, equals(a));

      Union3<A, B, C> merge249 = Union6<A, B, A, C, C, A>.forth(c).merge3();
      expect(merge249.value, equals(c));

      Union3<A, B, C> merge250 = Union6<A, B, A, C, C, A>.fifth(c).merge3();
      expect(merge250.value, equals(c));

      Union3<A, B, C> merge251 = Union6<A, B, A, C, C, A>.sixth(a).merge3();
      expect(merge251.value, equals(a));

      Union3<A, B, C> merge252 = Union6<A, B, A, C, C, B>.first(a).merge3();
      expect(merge252.value, equals(a));

      Union3<A, B, C> merge253 = Union6<A, B, A, C, C, B>.second(b).merge3();
      expect(merge253.value, equals(b));

      Union3<A, B, C> merge254 = Union6<A, B, A, C, C, B>.third(a).merge3();
      expect(merge254.value, equals(a));

      Union3<A, B, C> merge255 = Union6<A, B, A, C, C, B>.forth(c).merge3();
      expect(merge255.value, equals(c));

      Union3<A, B, C> merge256 = Union6<A, B, A, C, C, B>.fifth(c).merge3();
      expect(merge256.value, equals(c));

      Union3<A, B, C> merge257 = Union6<A, B, A, C, C, B>.sixth(b).merge3();
      expect(merge257.value, equals(b));

      Union3<A, B, C> merge258 = Union6<A, B, A, C, C, C>.first(a).merge3();
      expect(merge258.value, equals(a));

      Union3<A, B, C> merge259 = Union6<A, B, A, C, C, C>.second(b).merge3();
      expect(merge259.value, equals(b));

      Union3<A, B, C> merge260 = Union6<A, B, A, C, C, C>.third(a).merge3();
      expect(merge260.value, equals(a));

      Union3<A, B, C> merge261 = Union6<A, B, A, C, C, C>.forth(c).merge3();
      expect(merge261.value, equals(c));

      Union3<A, B, C> merge262 = Union6<A, B, A, C, C, C>.fifth(c).merge3();
      expect(merge262.value, equals(c));

      Union3<A, B, C> merge263 = Union6<A, B, A, C, C, C>.sixth(c).merge3();
      expect(merge263.value, equals(c));

      Union3<A, B, C> merge264 = Union6<A, B, B, A, A, C>.first(a).merge3();
      expect(merge264.value, equals(a));

      Union3<A, B, C> merge265 = Union6<A, B, B, A, A, C>.second(b).merge3();
      expect(merge265.value, equals(b));

      Union3<A, B, C> merge266 = Union6<A, B, B, A, A, C>.third(b).merge3();
      expect(merge266.value, equals(b));

      Union3<A, B, C> merge267 = Union6<A, B, B, A, A, C>.forth(a).merge3();
      expect(merge267.value, equals(a));

      Union3<A, B, C> merge268 = Union6<A, B, B, A, A, C>.fifth(a).merge3();
      expect(merge268.value, equals(a));

      Union3<A, B, C> merge269 = Union6<A, B, B, A, A, C>.sixth(c).merge3();
      expect(merge269.value, equals(c));

      Union3<A, B, C> merge270 = Union6<A, B, B, A, B, C>.first(a).merge3();
      expect(merge270.value, equals(a));

      Union3<A, B, C> merge271 = Union6<A, B, B, A, B, C>.second(b).merge3();
      expect(merge271.value, equals(b));

      Union3<A, B, C> merge272 = Union6<A, B, B, A, B, C>.third(b).merge3();
      expect(merge272.value, equals(b));

      Union3<A, B, C> merge273 = Union6<A, B, B, A, B, C>.forth(a).merge3();
      expect(merge273.value, equals(a));

      Union3<A, B, C> merge274 = Union6<A, B, B, A, B, C>.fifth(b).merge3();
      expect(merge274.value, equals(b));

      Union3<A, B, C> merge275 = Union6<A, B, B, A, B, C>.sixth(c).merge3();
      expect(merge275.value, equals(c));

      Union3<A, B, C> merge276 = Union6<A, B, B, A, C, A>.first(a).merge3();
      expect(merge276.value, equals(a));

      Union3<A, B, C> merge277 = Union6<A, B, B, A, C, A>.second(b).merge3();
      expect(merge277.value, equals(b));

      Union3<A, B, C> merge278 = Union6<A, B, B, A, C, A>.third(b).merge3();
      expect(merge278.value, equals(b));

      Union3<A, B, C> merge279 = Union6<A, B, B, A, C, A>.forth(a).merge3();
      expect(merge279.value, equals(a));

      Union3<A, B, C> merge280 = Union6<A, B, B, A, C, A>.fifth(c).merge3();
      expect(merge280.value, equals(c));

      Union3<A, B, C> merge281 = Union6<A, B, B, A, C, A>.sixth(a).merge3();
      expect(merge281.value, equals(a));

      Union3<A, B, C> merge282 = Union6<A, B, B, A, C, B>.first(a).merge3();
      expect(merge282.value, equals(a));

      Union3<A, B, C> merge283 = Union6<A, B, B, A, C, B>.second(b).merge3();
      expect(merge283.value, equals(b));

      Union3<A, B, C> merge284 = Union6<A, B, B, A, C, B>.third(b).merge3();
      expect(merge284.value, equals(b));

      Union3<A, B, C> merge285 = Union6<A, B, B, A, C, B>.forth(a).merge3();
      expect(merge285.value, equals(a));

      Union3<A, B, C> merge286 = Union6<A, B, B, A, C, B>.fifth(c).merge3();
      expect(merge286.value, equals(c));

      Union3<A, B, C> merge287 = Union6<A, B, B, A, C, B>.sixth(b).merge3();
      expect(merge287.value, equals(b));

      Union3<A, B, C> merge288 = Union6<A, B, B, A, C, C>.first(a).merge3();
      expect(merge288.value, equals(a));

      Union3<A, B, C> merge289 = Union6<A, B, B, A, C, C>.second(b).merge3();
      expect(merge289.value, equals(b));

      Union3<A, B, C> merge290 = Union6<A, B, B, A, C, C>.third(b).merge3();
      expect(merge290.value, equals(b));

      Union3<A, B, C> merge291 = Union6<A, B, B, A, C, C>.forth(a).merge3();
      expect(merge291.value, equals(a));

      Union3<A, B, C> merge292 = Union6<A, B, B, A, C, C>.fifth(c).merge3();
      expect(merge292.value, equals(c));

      Union3<A, B, C> merge293 = Union6<A, B, B, A, C, C>.sixth(c).merge3();
      expect(merge293.value, equals(c));

      Union3<A, B, C> merge294 = Union6<A, B, B, B, A, C>.first(a).merge3();
      expect(merge294.value, equals(a));

      Union3<A, B, C> merge295 = Union6<A, B, B, B, A, C>.second(b).merge3();
      expect(merge295.value, equals(b));

      Union3<A, B, C> merge296 = Union6<A, B, B, B, A, C>.third(b).merge3();
      expect(merge296.value, equals(b));

      Union3<A, B, C> merge297 = Union6<A, B, B, B, A, C>.forth(b).merge3();
      expect(merge297.value, equals(b));

      Union3<A, B, C> merge298 = Union6<A, B, B, B, A, C>.fifth(a).merge3();
      expect(merge298.value, equals(a));

      Union3<A, B, C> merge299 = Union6<A, B, B, B, A, C>.sixth(c).merge3();
      expect(merge299.value, equals(c));

      Union3<A, B, C> merge300 = Union6<A, B, B, B, B, C>.first(a).merge3();
      expect(merge300.value, equals(a));

      Union3<A, B, C> merge301 = Union6<A, B, B, B, B, C>.second(b).merge3();
      expect(merge301.value, equals(b));

      Union3<A, B, C> merge302 = Union6<A, B, B, B, B, C>.third(b).merge3();
      expect(merge302.value, equals(b));

      Union3<A, B, C> merge303 = Union6<A, B, B, B, B, C>.forth(b).merge3();
      expect(merge303.value, equals(b));

      Union3<A, B, C> merge304 = Union6<A, B, B, B, B, C>.fifth(b).merge3();
      expect(merge304.value, equals(b));

      Union3<A, B, C> merge305 = Union6<A, B, B, B, B, C>.sixth(c).merge3();
      expect(merge305.value, equals(c));

      Union3<A, B, C> merge306 = Union6<A, B, B, B, C, A>.first(a).merge3();
      expect(merge306.value, equals(a));

      Union3<A, B, C> merge307 = Union6<A, B, B, B, C, A>.second(b).merge3();
      expect(merge307.value, equals(b));

      Union3<A, B, C> merge308 = Union6<A, B, B, B, C, A>.third(b).merge3();
      expect(merge308.value, equals(b));

      Union3<A, B, C> merge309 = Union6<A, B, B, B, C, A>.forth(b).merge3();
      expect(merge309.value, equals(b));

      Union3<A, B, C> merge310 = Union6<A, B, B, B, C, A>.fifth(c).merge3();
      expect(merge310.value, equals(c));

      Union3<A, B, C> merge311 = Union6<A, B, B, B, C, A>.sixth(a).merge3();
      expect(merge311.value, equals(a));

      Union3<A, B, C> merge312 = Union6<A, B, B, B, C, B>.first(a).merge3();
      expect(merge312.value, equals(a));

      Union3<A, B, C> merge313 = Union6<A, B, B, B, C, B>.second(b).merge3();
      expect(merge313.value, equals(b));

      Union3<A, B, C> merge314 = Union6<A, B, B, B, C, B>.third(b).merge3();
      expect(merge314.value, equals(b));

      Union3<A, B, C> merge315 = Union6<A, B, B, B, C, B>.forth(b).merge3();
      expect(merge315.value, equals(b));

      Union3<A, B, C> merge316 = Union6<A, B, B, B, C, B>.fifth(c).merge3();
      expect(merge316.value, equals(c));

      Union3<A, B, C> merge317 = Union6<A, B, B, B, C, B>.sixth(b).merge3();
      expect(merge317.value, equals(b));

      Union3<A, B, C> merge318 = Union6<A, B, B, B, C, C>.first(a).merge3();
      expect(merge318.value, equals(a));

      Union3<A, B, C> merge319 = Union6<A, B, B, B, C, C>.second(b).merge3();
      expect(merge319.value, equals(b));

      Union3<A, B, C> merge320 = Union6<A, B, B, B, C, C>.third(b).merge3();
      expect(merge320.value, equals(b));

      Union3<A, B, C> merge321 = Union6<A, B, B, B, C, C>.forth(b).merge3();
      expect(merge321.value, equals(b));

      Union3<A, B, C> merge322 = Union6<A, B, B, B, C, C>.fifth(c).merge3();
      expect(merge322.value, equals(c));

      Union3<A, B, C> merge323 = Union6<A, B, B, B, C, C>.sixth(c).merge3();
      expect(merge323.value, equals(c));

      Union3<A, B, C> merge324 = Union6<A, B, B, C, A, A>.first(a).merge3();
      expect(merge324.value, equals(a));

      Union3<A, B, C> merge325 = Union6<A, B, B, C, A, A>.second(b).merge3();
      expect(merge325.value, equals(b));

      Union3<A, B, C> merge326 = Union6<A, B, B, C, A, A>.third(b).merge3();
      expect(merge326.value, equals(b));

      Union3<A, B, C> merge327 = Union6<A, B, B, C, A, A>.forth(c).merge3();
      expect(merge327.value, equals(c));

      Union3<A, B, C> merge328 = Union6<A, B, B, C, A, A>.fifth(a).merge3();
      expect(merge328.value, equals(a));

      Union3<A, B, C> merge329 = Union6<A, B, B, C, A, A>.sixth(a).merge3();
      expect(merge329.value, equals(a));

      Union3<A, B, C> merge330 = Union6<A, B, B, C, A, B>.first(a).merge3();
      expect(merge330.value, equals(a));

      Union3<A, B, C> merge331 = Union6<A, B, B, C, A, B>.second(b).merge3();
      expect(merge331.value, equals(b));

      Union3<A, B, C> merge332 = Union6<A, B, B, C, A, B>.third(b).merge3();
      expect(merge332.value, equals(b));

      Union3<A, B, C> merge333 = Union6<A, B, B, C, A, B>.forth(c).merge3();
      expect(merge333.value, equals(c));

      Union3<A, B, C> merge334 = Union6<A, B, B, C, A, B>.fifth(a).merge3();
      expect(merge334.value, equals(a));

      Union3<A, B, C> merge335 = Union6<A, B, B, C, A, B>.sixth(b).merge3();
      expect(merge335.value, equals(b));

      Union3<A, B, C> merge336 = Union6<A, B, B, C, A, C>.first(a).merge3();
      expect(merge336.value, equals(a));

      Union3<A, B, C> merge337 = Union6<A, B, B, C, A, C>.second(b).merge3();
      expect(merge337.value, equals(b));

      Union3<A, B, C> merge338 = Union6<A, B, B, C, A, C>.third(b).merge3();
      expect(merge338.value, equals(b));

      Union3<A, B, C> merge339 = Union6<A, B, B, C, A, C>.forth(c).merge3();
      expect(merge339.value, equals(c));

      Union3<A, B, C> merge340 = Union6<A, B, B, C, A, C>.fifth(a).merge3();
      expect(merge340.value, equals(a));

      Union3<A, B, C> merge341 = Union6<A, B, B, C, A, C>.sixth(c).merge3();
      expect(merge341.value, equals(c));

      Union3<A, B, C> merge342 = Union6<A, B, B, C, B, A>.first(a).merge3();
      expect(merge342.value, equals(a));

      Union3<A, B, C> merge343 = Union6<A, B, B, C, B, A>.second(b).merge3();
      expect(merge343.value, equals(b));

      Union3<A, B, C> merge344 = Union6<A, B, B, C, B, A>.third(b).merge3();
      expect(merge344.value, equals(b));

      Union3<A, B, C> merge345 = Union6<A, B, B, C, B, A>.forth(c).merge3();
      expect(merge345.value, equals(c));

      Union3<A, B, C> merge346 = Union6<A, B, B, C, B, A>.fifth(b).merge3();
      expect(merge346.value, equals(b));

      Union3<A, B, C> merge347 = Union6<A, B, B, C, B, A>.sixth(a).merge3();
      expect(merge347.value, equals(a));

      Union3<A, B, C> merge348 = Union6<A, B, B, C, B, B>.first(a).merge3();
      expect(merge348.value, equals(a));

      Union3<A, B, C> merge349 = Union6<A, B, B, C, B, B>.second(b).merge3();
      expect(merge349.value, equals(b));

      Union3<A, B, C> merge350 = Union6<A, B, B, C, B, B>.third(b).merge3();
      expect(merge350.value, equals(b));

      Union3<A, B, C> merge351 = Union6<A, B, B, C, B, B>.forth(c).merge3();
      expect(merge351.value, equals(c));

      Union3<A, B, C> merge352 = Union6<A, B, B, C, B, B>.fifth(b).merge3();
      expect(merge352.value, equals(b));

      Union3<A, B, C> merge353 = Union6<A, B, B, C, B, B>.sixth(b).merge3();
      expect(merge353.value, equals(b));

      Union3<A, B, C> merge354 = Union6<A, B, B, C, B, C>.first(a).merge3();
      expect(merge354.value, equals(a));

      Union3<A, B, C> merge355 = Union6<A, B, B, C, B, C>.second(b).merge3();
      expect(merge355.value, equals(b));

      Union3<A, B, C> merge356 = Union6<A, B, B, C, B, C>.third(b).merge3();
      expect(merge356.value, equals(b));

      Union3<A, B, C> merge357 = Union6<A, B, B, C, B, C>.forth(c).merge3();
      expect(merge357.value, equals(c));

      Union3<A, B, C> merge358 = Union6<A, B, B, C, B, C>.fifth(b).merge3();
      expect(merge358.value, equals(b));

      Union3<A, B, C> merge359 = Union6<A, B, B, C, B, C>.sixth(c).merge3();
      expect(merge359.value, equals(c));

      Union3<A, B, C> merge360 = Union6<A, B, B, C, C, A>.first(a).merge3();
      expect(merge360.value, equals(a));

      Union3<A, B, C> merge361 = Union6<A, B, B, C, C, A>.second(b).merge3();
      expect(merge361.value, equals(b));

      Union3<A, B, C> merge362 = Union6<A, B, B, C, C, A>.third(b).merge3();
      expect(merge362.value, equals(b));

      Union3<A, B, C> merge363 = Union6<A, B, B, C, C, A>.forth(c).merge3();
      expect(merge363.value, equals(c));

      Union3<A, B, C> merge364 = Union6<A, B, B, C, C, A>.fifth(c).merge3();
      expect(merge364.value, equals(c));

      Union3<A, B, C> merge365 = Union6<A, B, B, C, C, A>.sixth(a).merge3();
      expect(merge365.value, equals(a));

      Union3<A, B, C> merge366 = Union6<A, B, B, C, C, B>.first(a).merge3();
      expect(merge366.value, equals(a));

      Union3<A, B, C> merge367 = Union6<A, B, B, C, C, B>.second(b).merge3();
      expect(merge367.value, equals(b));

      Union3<A, B, C> merge368 = Union6<A, B, B, C, C, B>.third(b).merge3();
      expect(merge368.value, equals(b));

      Union3<A, B, C> merge369 = Union6<A, B, B, C, C, B>.forth(c).merge3();
      expect(merge369.value, equals(c));

      Union3<A, B, C> merge370 = Union6<A, B, B, C, C, B>.fifth(c).merge3();
      expect(merge370.value, equals(c));

      Union3<A, B, C> merge371 = Union6<A, B, B, C, C, B>.sixth(b).merge3();
      expect(merge371.value, equals(b));

      Union3<A, B, C> merge372 = Union6<A, B, B, C, C, C>.first(a).merge3();
      expect(merge372.value, equals(a));

      Union3<A, B, C> merge373 = Union6<A, B, B, C, C, C>.second(b).merge3();
      expect(merge373.value, equals(b));

      Union3<A, B, C> merge374 = Union6<A, B, B, C, C, C>.third(b).merge3();
      expect(merge374.value, equals(b));

      Union3<A, B, C> merge375 = Union6<A, B, B, C, C, C>.forth(c).merge3();
      expect(merge375.value, equals(c));

      Union3<A, B, C> merge376 = Union6<A, B, B, C, C, C>.fifth(c).merge3();
      expect(merge376.value, equals(c));

      Union3<A, B, C> merge377 = Union6<A, B, B, C, C, C>.sixth(c).merge3();
      expect(merge377.value, equals(c));

      Union3<A, B, C> merge378 = Union6<A, B, C, A, A, A>.first(a).merge3();
      expect(merge378.value, equals(a));

      Union3<A, B, C> merge379 = Union6<A, B, C, A, A, A>.second(b).merge3();
      expect(merge379.value, equals(b));

      Union3<A, B, C> merge380 = Union6<A, B, C, A, A, A>.third(c).merge3();
      expect(merge380.value, equals(c));

      Union3<A, B, C> merge381 = Union6<A, B, C, A, A, A>.forth(a).merge3();
      expect(merge381.value, equals(a));

      Union3<A, B, C> merge382 = Union6<A, B, C, A, A, A>.fifth(a).merge3();
      expect(merge382.value, equals(a));

      Union3<A, B, C> merge383 = Union6<A, B, C, A, A, A>.sixth(a).merge3();
      expect(merge383.value, equals(a));

      Union3<A, B, C> merge384 = Union6<A, B, C, A, A, B>.first(a).merge3();
      expect(merge384.value, equals(a));

      Union3<A, B, C> merge385 = Union6<A, B, C, A, A, B>.second(b).merge3();
      expect(merge385.value, equals(b));

      Union3<A, B, C> merge386 = Union6<A, B, C, A, A, B>.third(c).merge3();
      expect(merge386.value, equals(c));

      Union3<A, B, C> merge387 = Union6<A, B, C, A, A, B>.forth(a).merge3();
      expect(merge387.value, equals(a));

      Union3<A, B, C> merge388 = Union6<A, B, C, A, A, B>.fifth(a).merge3();
      expect(merge388.value, equals(a));

      Union3<A, B, C> merge389 = Union6<A, B, C, A, A, B>.sixth(b).merge3();
      expect(merge389.value, equals(b));

      Union3<A, B, C> merge390 = Union6<A, B, C, A, A, C>.first(a).merge3();
      expect(merge390.value, equals(a));

      Union3<A, B, C> merge391 = Union6<A, B, C, A, A, C>.second(b).merge3();
      expect(merge391.value, equals(b));

      Union3<A, B, C> merge392 = Union6<A, B, C, A, A, C>.third(c).merge3();
      expect(merge392.value, equals(c));

      Union3<A, B, C> merge393 = Union6<A, B, C, A, A, C>.forth(a).merge3();
      expect(merge393.value, equals(a));

      Union3<A, B, C> merge394 = Union6<A, B, C, A, A, C>.fifth(a).merge3();
      expect(merge394.value, equals(a));

      Union3<A, B, C> merge395 = Union6<A, B, C, A, A, C>.sixth(c).merge3();
      expect(merge395.value, equals(c));

      Union3<A, B, C> merge396 = Union6<A, B, C, A, B, A>.first(a).merge3();
      expect(merge396.value, equals(a));

      Union3<A, B, C> merge397 = Union6<A, B, C, A, B, A>.second(b).merge3();
      expect(merge397.value, equals(b));

      Union3<A, B, C> merge398 = Union6<A, B, C, A, B, A>.third(c).merge3();
      expect(merge398.value, equals(c));

      Union3<A, B, C> merge399 = Union6<A, B, C, A, B, A>.forth(a).merge3();
      expect(merge399.value, equals(a));

      Union3<A, B, C> merge400 = Union6<A, B, C, A, B, A>.fifth(b).merge3();
      expect(merge400.value, equals(b));

      Union3<A, B, C> merge401 = Union6<A, B, C, A, B, A>.sixth(a).merge3();
      expect(merge401.value, equals(a));

      Union3<A, B, C> merge402 = Union6<A, B, C, A, B, B>.first(a).merge3();
      expect(merge402.value, equals(a));

      Union3<A, B, C> merge403 = Union6<A, B, C, A, B, B>.second(b).merge3();
      expect(merge403.value, equals(b));

      Union3<A, B, C> merge404 = Union6<A, B, C, A, B, B>.third(c).merge3();
      expect(merge404.value, equals(c));

      Union3<A, B, C> merge405 = Union6<A, B, C, A, B, B>.forth(a).merge3();
      expect(merge405.value, equals(a));

      Union3<A, B, C> merge406 = Union6<A, B, C, A, B, B>.fifth(b).merge3();
      expect(merge406.value, equals(b));

      Union3<A, B, C> merge407 = Union6<A, B, C, A, B, B>.sixth(b).merge3();
      expect(merge407.value, equals(b));

      Union3<A, B, C> merge408 = Union6<A, B, C, A, B, C>.first(a).merge3();
      expect(merge408.value, equals(a));

      Union3<A, B, C> merge409 = Union6<A, B, C, A, B, C>.second(b).merge3();
      expect(merge409.value, equals(b));

      Union3<A, B, C> merge410 = Union6<A, B, C, A, B, C>.third(c).merge3();
      expect(merge410.value, equals(c));

      Union3<A, B, C> merge411 = Union6<A, B, C, A, B, C>.forth(a).merge3();
      expect(merge411.value, equals(a));

      Union3<A, B, C> merge412 = Union6<A, B, C, A, B, C>.fifth(b).merge3();
      expect(merge412.value, equals(b));

      Union3<A, B, C> merge413 = Union6<A, B, C, A, B, C>.sixth(c).merge3();
      expect(merge413.value, equals(c));

      Union3<A, B, C> merge414 = Union6<A, B, C, A, C, A>.first(a).merge3();
      expect(merge414.value, equals(a));

      Union3<A, B, C> merge415 = Union6<A, B, C, A, C, A>.second(b).merge3();
      expect(merge415.value, equals(b));

      Union3<A, B, C> merge416 = Union6<A, B, C, A, C, A>.third(c).merge3();
      expect(merge416.value, equals(c));

      Union3<A, B, C> merge417 = Union6<A, B, C, A, C, A>.forth(a).merge3();
      expect(merge417.value, equals(a));

      Union3<A, B, C> merge418 = Union6<A, B, C, A, C, A>.fifth(c).merge3();
      expect(merge418.value, equals(c));

      Union3<A, B, C> merge419 = Union6<A, B, C, A, C, A>.sixth(a).merge3();
      expect(merge419.value, equals(a));

      Union3<A, B, C> merge420 = Union6<A, B, C, A, C, B>.first(a).merge3();
      expect(merge420.value, equals(a));

      Union3<A, B, C> merge421 = Union6<A, B, C, A, C, B>.second(b).merge3();
      expect(merge421.value, equals(b));

      Union3<A, B, C> merge422 = Union6<A, B, C, A, C, B>.third(c).merge3();
      expect(merge422.value, equals(c));

      Union3<A, B, C> merge423 = Union6<A, B, C, A, C, B>.forth(a).merge3();
      expect(merge423.value, equals(a));

      Union3<A, B, C> merge424 = Union6<A, B, C, A, C, B>.fifth(c).merge3();
      expect(merge424.value, equals(c));

      Union3<A, B, C> merge425 = Union6<A, B, C, A, C, B>.sixth(b).merge3();
      expect(merge425.value, equals(b));

      Union3<A, B, C> merge426 = Union6<A, B, C, A, C, C>.first(a).merge3();
      expect(merge426.value, equals(a));

      Union3<A, B, C> merge427 = Union6<A, B, C, A, C, C>.second(b).merge3();
      expect(merge427.value, equals(b));

      Union3<A, B, C> merge428 = Union6<A, B, C, A, C, C>.third(c).merge3();
      expect(merge428.value, equals(c));

      Union3<A, B, C> merge429 = Union6<A, B, C, A, C, C>.forth(a).merge3();
      expect(merge429.value, equals(a));

      Union3<A, B, C> merge430 = Union6<A, B, C, A, C, C>.fifth(c).merge3();
      expect(merge430.value, equals(c));

      Union3<A, B, C> merge431 = Union6<A, B, C, A, C, C>.sixth(c).merge3();
      expect(merge431.value, equals(c));

      Union3<A, B, C> merge432 = Union6<A, B, C, B, A, A>.first(a).merge3();
      expect(merge432.value, equals(a));

      Union3<A, B, C> merge433 = Union6<A, B, C, B, A, A>.second(b).merge3();
      expect(merge433.value, equals(b));

      Union3<A, B, C> merge434 = Union6<A, B, C, B, A, A>.third(c).merge3();
      expect(merge434.value, equals(c));

      Union3<A, B, C> merge435 = Union6<A, B, C, B, A, A>.forth(b).merge3();
      expect(merge435.value, equals(b));

      Union3<A, B, C> merge436 = Union6<A, B, C, B, A, A>.fifth(a).merge3();
      expect(merge436.value, equals(a));

      Union3<A, B, C> merge437 = Union6<A, B, C, B, A, A>.sixth(a).merge3();
      expect(merge437.value, equals(a));

      Union3<A, B, C> merge438 = Union6<A, B, C, B, A, B>.first(a).merge3();
      expect(merge438.value, equals(a));

      Union3<A, B, C> merge439 = Union6<A, B, C, B, A, B>.second(b).merge3();
      expect(merge439.value, equals(b));

      Union3<A, B, C> merge440 = Union6<A, B, C, B, A, B>.third(c).merge3();
      expect(merge440.value, equals(c));

      Union3<A, B, C> merge441 = Union6<A, B, C, B, A, B>.forth(b).merge3();
      expect(merge441.value, equals(b));

      Union3<A, B, C> merge442 = Union6<A, B, C, B, A, B>.fifth(a).merge3();
      expect(merge442.value, equals(a));

      Union3<A, B, C> merge443 = Union6<A, B, C, B, A, B>.sixth(b).merge3();
      expect(merge443.value, equals(b));

      Union3<A, B, C> merge444 = Union6<A, B, C, B, A, C>.first(a).merge3();
      expect(merge444.value, equals(a));

      Union3<A, B, C> merge445 = Union6<A, B, C, B, A, C>.second(b).merge3();
      expect(merge445.value, equals(b));

      Union3<A, B, C> merge446 = Union6<A, B, C, B, A, C>.third(c).merge3();
      expect(merge446.value, equals(c));

      Union3<A, B, C> merge447 = Union6<A, B, C, B, A, C>.forth(b).merge3();
      expect(merge447.value, equals(b));

      Union3<A, B, C> merge448 = Union6<A, B, C, B, A, C>.fifth(a).merge3();
      expect(merge448.value, equals(a));

      Union3<A, B, C> merge449 = Union6<A, B, C, B, A, C>.sixth(c).merge3();
      expect(merge449.value, equals(c));

      Union3<A, B, C> merge450 = Union6<A, B, C, B, B, A>.first(a).merge3();
      expect(merge450.value, equals(a));

      Union3<A, B, C> merge451 = Union6<A, B, C, B, B, A>.second(b).merge3();
      expect(merge451.value, equals(b));

      Union3<A, B, C> merge452 = Union6<A, B, C, B, B, A>.third(c).merge3();
      expect(merge452.value, equals(c));

      Union3<A, B, C> merge453 = Union6<A, B, C, B, B, A>.forth(b).merge3();
      expect(merge453.value, equals(b));

      Union3<A, B, C> merge454 = Union6<A, B, C, B, B, A>.fifth(b).merge3();
      expect(merge454.value, equals(b));

      Union3<A, B, C> merge455 = Union6<A, B, C, B, B, A>.sixth(a).merge3();
      expect(merge455.value, equals(a));

      Union3<A, B, C> merge456 = Union6<A, B, C, B, B, B>.first(a).merge3();
      expect(merge456.value, equals(a));

      Union3<A, B, C> merge457 = Union6<A, B, C, B, B, B>.second(b).merge3();
      expect(merge457.value, equals(b));

      Union3<A, B, C> merge458 = Union6<A, B, C, B, B, B>.third(c).merge3();
      expect(merge458.value, equals(c));

      Union3<A, B, C> merge459 = Union6<A, B, C, B, B, B>.forth(b).merge3();
      expect(merge459.value, equals(b));

      Union3<A, B, C> merge460 = Union6<A, B, C, B, B, B>.fifth(b).merge3();
      expect(merge460.value, equals(b));

      Union3<A, B, C> merge461 = Union6<A, B, C, B, B, B>.sixth(b).merge3();
      expect(merge461.value, equals(b));

      Union3<A, B, C> merge462 = Union6<A, B, C, B, B, C>.first(a).merge3();
      expect(merge462.value, equals(a));

      Union3<A, B, C> merge463 = Union6<A, B, C, B, B, C>.second(b).merge3();
      expect(merge463.value, equals(b));

      Union3<A, B, C> merge464 = Union6<A, B, C, B, B, C>.third(c).merge3();
      expect(merge464.value, equals(c));

      Union3<A, B, C> merge465 = Union6<A, B, C, B, B, C>.forth(b).merge3();
      expect(merge465.value, equals(b));

      Union3<A, B, C> merge466 = Union6<A, B, C, B, B, C>.fifth(b).merge3();
      expect(merge466.value, equals(b));

      Union3<A, B, C> merge467 = Union6<A, B, C, B, B, C>.sixth(c).merge3();
      expect(merge467.value, equals(c));

      Union3<A, B, C> merge468 = Union6<A, B, C, B, C, A>.first(a).merge3();
      expect(merge468.value, equals(a));

      Union3<A, B, C> merge469 = Union6<A, B, C, B, C, A>.second(b).merge3();
      expect(merge469.value, equals(b));

      Union3<A, B, C> merge470 = Union6<A, B, C, B, C, A>.third(c).merge3();
      expect(merge470.value, equals(c));

      Union3<A, B, C> merge471 = Union6<A, B, C, B, C, A>.forth(b).merge3();
      expect(merge471.value, equals(b));

      Union3<A, B, C> merge472 = Union6<A, B, C, B, C, A>.fifth(c).merge3();
      expect(merge472.value, equals(c));

      Union3<A, B, C> merge473 = Union6<A, B, C, B, C, A>.sixth(a).merge3();
      expect(merge473.value, equals(a));

      Union3<A, B, C> merge474 = Union6<A, B, C, B, C, B>.first(a).merge3();
      expect(merge474.value, equals(a));

      Union3<A, B, C> merge475 = Union6<A, B, C, B, C, B>.second(b).merge3();
      expect(merge475.value, equals(b));

      Union3<A, B, C> merge476 = Union6<A, B, C, B, C, B>.third(c).merge3();
      expect(merge476.value, equals(c));

      Union3<A, B, C> merge477 = Union6<A, B, C, B, C, B>.forth(b).merge3();
      expect(merge477.value, equals(b));

      Union3<A, B, C> merge478 = Union6<A, B, C, B, C, B>.fifth(c).merge3();
      expect(merge478.value, equals(c));

      Union3<A, B, C> merge479 = Union6<A, B, C, B, C, B>.sixth(b).merge3();
      expect(merge479.value, equals(b));

      Union3<A, B, C> merge480 = Union6<A, B, C, B, C, C>.first(a).merge3();
      expect(merge480.value, equals(a));

      Union3<A, B, C> merge481 = Union6<A, B, C, B, C, C>.second(b).merge3();
      expect(merge481.value, equals(b));

      Union3<A, B, C> merge482 = Union6<A, B, C, B, C, C>.third(c).merge3();
      expect(merge482.value, equals(c));

      Union3<A, B, C> merge483 = Union6<A, B, C, B, C, C>.forth(b).merge3();
      expect(merge483.value, equals(b));

      Union3<A, B, C> merge484 = Union6<A, B, C, B, C, C>.fifth(c).merge3();
      expect(merge484.value, equals(c));

      Union3<A, B, C> merge485 = Union6<A, B, C, B, C, C>.sixth(c).merge3();
      expect(merge485.value, equals(c));

      Union3<A, B, C> merge486 = Union6<A, B, C, C, A, A>.first(a).merge3();
      expect(merge486.value, equals(a));

      Union3<A, B, C> merge487 = Union6<A, B, C, C, A, A>.second(b).merge3();
      expect(merge487.value, equals(b));

      Union3<A, B, C> merge488 = Union6<A, B, C, C, A, A>.third(c).merge3();
      expect(merge488.value, equals(c));

      Union3<A, B, C> merge489 = Union6<A, B, C, C, A, A>.forth(c).merge3();
      expect(merge489.value, equals(c));

      Union3<A, B, C> merge490 = Union6<A, B, C, C, A, A>.fifth(a).merge3();
      expect(merge490.value, equals(a));

      Union3<A, B, C> merge491 = Union6<A, B, C, C, A, A>.sixth(a).merge3();
      expect(merge491.value, equals(a));

      Union3<A, B, C> merge492 = Union6<A, B, C, C, A, B>.first(a).merge3();
      expect(merge492.value, equals(a));

      Union3<A, B, C> merge493 = Union6<A, B, C, C, A, B>.second(b).merge3();
      expect(merge493.value, equals(b));

      Union3<A, B, C> merge494 = Union6<A, B, C, C, A, B>.third(c).merge3();
      expect(merge494.value, equals(c));

      Union3<A, B, C> merge495 = Union6<A, B, C, C, A, B>.forth(c).merge3();
      expect(merge495.value, equals(c));

      Union3<A, B, C> merge496 = Union6<A, B, C, C, A, B>.fifth(a).merge3();
      expect(merge496.value, equals(a));

      Union3<A, B, C> merge497 = Union6<A, B, C, C, A, B>.sixth(b).merge3();
      expect(merge497.value, equals(b));

      Union3<A, B, C> merge498 = Union6<A, B, C, C, A, C>.first(a).merge3();
      expect(merge498.value, equals(a));

      Union3<A, B, C> merge499 = Union6<A, B, C, C, A, C>.second(b).merge3();
      expect(merge499.value, equals(b));

      Union3<A, B, C> merge500 = Union6<A, B, C, C, A, C>.third(c).merge3();
      expect(merge500.value, equals(c));

      Union3<A, B, C> merge501 = Union6<A, B, C, C, A, C>.forth(c).merge3();
      expect(merge501.value, equals(c));

      Union3<A, B, C> merge502 = Union6<A, B, C, C, A, C>.fifth(a).merge3();
      expect(merge502.value, equals(a));

      Union3<A, B, C> merge503 = Union6<A, B, C, C, A, C>.sixth(c).merge3();
      expect(merge503.value, equals(c));

      Union3<A, B, C> merge504 = Union6<A, B, C, C, B, A>.first(a).merge3();
      expect(merge504.value, equals(a));

      Union3<A, B, C> merge505 = Union6<A, B, C, C, B, A>.second(b).merge3();
      expect(merge505.value, equals(b));

      Union3<A, B, C> merge506 = Union6<A, B, C, C, B, A>.third(c).merge3();
      expect(merge506.value, equals(c));

      Union3<A, B, C> merge507 = Union6<A, B, C, C, B, A>.forth(c).merge3();
      expect(merge507.value, equals(c));

      Union3<A, B, C> merge508 = Union6<A, B, C, C, B, A>.fifth(b).merge3();
      expect(merge508.value, equals(b));

      Union3<A, B, C> merge509 = Union6<A, B, C, C, B, A>.sixth(a).merge3();
      expect(merge509.value, equals(a));

      Union3<A, B, C> merge510 = Union6<A, B, C, C, B, B>.first(a).merge3();
      expect(merge510.value, equals(a));

      Union3<A, B, C> merge511 = Union6<A, B, C, C, B, B>.second(b).merge3();
      expect(merge511.value, equals(b));

      Union3<A, B, C> merge512 = Union6<A, B, C, C, B, B>.third(c).merge3();
      expect(merge512.value, equals(c));

      Union3<A, B, C> merge513 = Union6<A, B, C, C, B, B>.forth(c).merge3();
      expect(merge513.value, equals(c));

      Union3<A, B, C> merge514 = Union6<A, B, C, C, B, B>.fifth(b).merge3();
      expect(merge514.value, equals(b));

      Union3<A, B, C> merge515 = Union6<A, B, C, C, B, B>.sixth(b).merge3();
      expect(merge515.value, equals(b));

      Union3<A, B, C> merge516 = Union6<A, B, C, C, B, C>.first(a).merge3();
      expect(merge516.value, equals(a));

      Union3<A, B, C> merge517 = Union6<A, B, C, C, B, C>.second(b).merge3();
      expect(merge517.value, equals(b));

      Union3<A, B, C> merge518 = Union6<A, B, C, C, B, C>.third(c).merge3();
      expect(merge518.value, equals(c));

      Union3<A, B, C> merge519 = Union6<A, B, C, C, B, C>.forth(c).merge3();
      expect(merge519.value, equals(c));

      Union3<A, B, C> merge520 = Union6<A, B, C, C, B, C>.fifth(b).merge3();
      expect(merge520.value, equals(b));

      Union3<A, B, C> merge521 = Union6<A, B, C, C, B, C>.sixth(c).merge3();
      expect(merge521.value, equals(c));

      Union3<A, B, C> merge522 = Union6<A, B, C, C, C, A>.first(a).merge3();
      expect(merge522.value, equals(a));

      Union3<A, B, C> merge523 = Union6<A, B, C, C, C, A>.second(b).merge3();
      expect(merge523.value, equals(b));

      Union3<A, B, C> merge524 = Union6<A, B, C, C, C, A>.third(c).merge3();
      expect(merge524.value, equals(c));

      Union3<A, B, C> merge525 = Union6<A, B, C, C, C, A>.forth(c).merge3();
      expect(merge525.value, equals(c));

      Union3<A, B, C> merge526 = Union6<A, B, C, C, C, A>.fifth(c).merge3();
      expect(merge526.value, equals(c));

      Union3<A, B, C> merge527 = Union6<A, B, C, C, C, A>.sixth(a).merge3();
      expect(merge527.value, equals(a));

      Union3<A, B, C> merge528 = Union6<A, B, C, C, C, B>.first(a).merge3();
      expect(merge528.value, equals(a));

      Union3<A, B, C> merge529 = Union6<A, B, C, C, C, B>.second(b).merge3();
      expect(merge529.value, equals(b));

      Union3<A, B, C> merge530 = Union6<A, B, C, C, C, B>.third(c).merge3();
      expect(merge530.value, equals(c));

      Union3<A, B, C> merge531 = Union6<A, B, C, C, C, B>.forth(c).merge3();
      expect(merge531.value, equals(c));

      Union3<A, B, C> merge532 = Union6<A, B, C, C, C, B>.fifth(c).merge3();
      expect(merge532.value, equals(c));

      Union3<A, B, C> merge533 = Union6<A, B, C, C, C, B>.sixth(b).merge3();
      expect(merge533.value, equals(b));

      Union3<A, B, C> merge534 = Union6<A, B, C, C, C, C>.first(a).merge3();
      expect(merge534.value, equals(a));

      Union3<A, B, C> merge535 = Union6<A, B, C, C, C, C>.second(b).merge3();
      expect(merge535.value, equals(b));

      Union3<A, B, C> merge536 = Union6<A, B, C, C, C, C>.third(c).merge3();
      expect(merge536.value, equals(c));

      Union3<A, B, C> merge537 = Union6<A, B, C, C, C, C>.forth(c).merge3();
      expect(merge537.value, equals(c));

      Union3<A, B, C> merge538 = Union6<A, B, C, C, C, C>.fifth(c).merge3();
      expect(merge538.value, equals(c));

      Union3<A, B, C> merge539 = Union6<A, B, C, C, C, C>.sixth(c).merge3();
      expect(merge539.value, equals(c));
    });
    test('to Union2', () {
      Union2<A, B> merge0 = Union6<A, A, A, A, A, B>.first(a).merge2();
      expect(merge0.value, equals(a));

      Union2<A, B> merge1 = Union6<A, A, A, A, A, B>.second(a).merge2();
      expect(merge1.value, equals(a));

      Union2<A, B> merge2 = Union6<A, A, A, A, A, B>.third(a).merge2();
      expect(merge2.value, equals(a));

      Union2<A, B> merge3 = Union6<A, A, A, A, A, B>.forth(a).merge2();
      expect(merge3.value, equals(a));

      Union2<A, B> merge4 = Union6<A, A, A, A, A, B>.fifth(a).merge2();
      expect(merge4.value, equals(a));

      Union2<A, B> merge5 = Union6<A, A, A, A, A, B>.sixth(b).merge2();
      expect(merge5.value, equals(b));

      Union2<A, B> merge6 = Union6<A, A, A, A, B, A>.first(a).merge2();
      expect(merge6.value, equals(a));

      Union2<A, B> merge7 = Union6<A, A, A, A, B, A>.second(a).merge2();
      expect(merge7.value, equals(a));

      Union2<A, B> merge8 = Union6<A, A, A, A, B, A>.third(a).merge2();
      expect(merge8.value, equals(a));

      Union2<A, B> merge9 = Union6<A, A, A, A, B, A>.forth(a).merge2();
      expect(merge9.value, equals(a));

      Union2<A, B> merge10 = Union6<A, A, A, A, B, A>.fifth(b).merge2();
      expect(merge10.value, equals(b));

      Union2<A, B> merge11 = Union6<A, A, A, A, B, A>.sixth(a).merge2();
      expect(merge11.value, equals(a));

      Union2<A, B> merge12 = Union6<A, A, A, A, B, B>.first(a).merge2();
      expect(merge12.value, equals(a));

      Union2<A, B> merge13 = Union6<A, A, A, A, B, B>.second(a).merge2();
      expect(merge13.value, equals(a));

      Union2<A, B> merge14 = Union6<A, A, A, A, B, B>.third(a).merge2();
      expect(merge14.value, equals(a));

      Union2<A, B> merge15 = Union6<A, A, A, A, B, B>.forth(a).merge2();
      expect(merge15.value, equals(a));

      Union2<A, B> merge16 = Union6<A, A, A, A, B, B>.fifth(b).merge2();
      expect(merge16.value, equals(b));

      Union2<A, B> merge17 = Union6<A, A, A, A, B, B>.sixth(b).merge2();
      expect(merge17.value, equals(b));

      Union2<A, B> merge18 = Union6<A, A, A, B, A, A>.first(a).merge2();
      expect(merge18.value, equals(a));

      Union2<A, B> merge19 = Union6<A, A, A, B, A, A>.second(a).merge2();
      expect(merge19.value, equals(a));

      Union2<A, B> merge20 = Union6<A, A, A, B, A, A>.third(a).merge2();
      expect(merge20.value, equals(a));

      Union2<A, B> merge21 = Union6<A, A, A, B, A, A>.forth(b).merge2();
      expect(merge21.value, equals(b));

      Union2<A, B> merge22 = Union6<A, A, A, B, A, A>.fifth(a).merge2();
      expect(merge22.value, equals(a));

      Union2<A, B> merge23 = Union6<A, A, A, B, A, A>.sixth(a).merge2();
      expect(merge23.value, equals(a));

      Union2<A, B> merge24 = Union6<A, A, A, B, A, B>.first(a).merge2();
      expect(merge24.value, equals(a));

      Union2<A, B> merge25 = Union6<A, A, A, B, A, B>.second(a).merge2();
      expect(merge25.value, equals(a));

      Union2<A, B> merge26 = Union6<A, A, A, B, A, B>.third(a).merge2();
      expect(merge26.value, equals(a));

      Union2<A, B> merge27 = Union6<A, A, A, B, A, B>.forth(b).merge2();
      expect(merge27.value, equals(b));

      Union2<A, B> merge28 = Union6<A, A, A, B, A, B>.fifth(a).merge2();
      expect(merge28.value, equals(a));

      Union2<A, B> merge29 = Union6<A, A, A, B, A, B>.sixth(b).merge2();
      expect(merge29.value, equals(b));

      Union2<A, B> merge30 = Union6<A, A, A, B, B, A>.first(a).merge2();
      expect(merge30.value, equals(a));

      Union2<A, B> merge31 = Union6<A, A, A, B, B, A>.second(a).merge2();
      expect(merge31.value, equals(a));

      Union2<A, B> merge32 = Union6<A, A, A, B, B, A>.third(a).merge2();
      expect(merge32.value, equals(a));

      Union2<A, B> merge33 = Union6<A, A, A, B, B, A>.forth(b).merge2();
      expect(merge33.value, equals(b));

      Union2<A, B> merge34 = Union6<A, A, A, B, B, A>.fifth(b).merge2();
      expect(merge34.value, equals(b));

      Union2<A, B> merge35 = Union6<A, A, A, B, B, A>.sixth(a).merge2();
      expect(merge35.value, equals(a));

      Union2<A, B> merge36 = Union6<A, A, A, B, B, B>.first(a).merge2();
      expect(merge36.value, equals(a));

      Union2<A, B> merge37 = Union6<A, A, A, B, B, B>.second(a).merge2();
      expect(merge37.value, equals(a));

      Union2<A, B> merge38 = Union6<A, A, A, B, B, B>.third(a).merge2();
      expect(merge38.value, equals(a));

      Union2<A, B> merge39 = Union6<A, A, A, B, B, B>.forth(b).merge2();
      expect(merge39.value, equals(b));

      Union2<A, B> merge40 = Union6<A, A, A, B, B, B>.fifth(b).merge2();
      expect(merge40.value, equals(b));

      Union2<A, B> merge41 = Union6<A, A, A, B, B, B>.sixth(b).merge2();
      expect(merge41.value, equals(b));

      Union2<A, B> merge42 = Union6<A, A, B, A, A, A>.first(a).merge2();
      expect(merge42.value, equals(a));

      Union2<A, B> merge43 = Union6<A, A, B, A, A, A>.second(a).merge2();
      expect(merge43.value, equals(a));

      Union2<A, B> merge44 = Union6<A, A, B, A, A, A>.third(b).merge2();
      expect(merge44.value, equals(b));

      Union2<A, B> merge45 = Union6<A, A, B, A, A, A>.forth(a).merge2();
      expect(merge45.value, equals(a));

      Union2<A, B> merge46 = Union6<A, A, B, A, A, A>.fifth(a).merge2();
      expect(merge46.value, equals(a));

      Union2<A, B> merge47 = Union6<A, A, B, A, A, A>.sixth(a).merge2();
      expect(merge47.value, equals(a));

      Union2<A, B> merge48 = Union6<A, A, B, A, A, B>.first(a).merge2();
      expect(merge48.value, equals(a));

      Union2<A, B> merge49 = Union6<A, A, B, A, A, B>.second(a).merge2();
      expect(merge49.value, equals(a));

      Union2<A, B> merge50 = Union6<A, A, B, A, A, B>.third(b).merge2();
      expect(merge50.value, equals(b));

      Union2<A, B> merge51 = Union6<A, A, B, A, A, B>.forth(a).merge2();
      expect(merge51.value, equals(a));

      Union2<A, B> merge52 = Union6<A, A, B, A, A, B>.fifth(a).merge2();
      expect(merge52.value, equals(a));

      Union2<A, B> merge53 = Union6<A, A, B, A, A, B>.sixth(b).merge2();
      expect(merge53.value, equals(b));

      Union2<A, B> merge54 = Union6<A, A, B, A, B, A>.first(a).merge2();
      expect(merge54.value, equals(a));

      Union2<A, B> merge55 = Union6<A, A, B, A, B, A>.second(a).merge2();
      expect(merge55.value, equals(a));

      Union2<A, B> merge56 = Union6<A, A, B, A, B, A>.third(b).merge2();
      expect(merge56.value, equals(b));

      Union2<A, B> merge57 = Union6<A, A, B, A, B, A>.forth(a).merge2();
      expect(merge57.value, equals(a));

      Union2<A, B> merge58 = Union6<A, A, B, A, B, A>.fifth(b).merge2();
      expect(merge58.value, equals(b));

      Union2<A, B> merge59 = Union6<A, A, B, A, B, A>.sixth(a).merge2();
      expect(merge59.value, equals(a));

      Union2<A, B> merge60 = Union6<A, A, B, A, B, B>.first(a).merge2();
      expect(merge60.value, equals(a));

      Union2<A, B> merge61 = Union6<A, A, B, A, B, B>.second(a).merge2();
      expect(merge61.value, equals(a));

      Union2<A, B> merge62 = Union6<A, A, B, A, B, B>.third(b).merge2();
      expect(merge62.value, equals(b));

      Union2<A, B> merge63 = Union6<A, A, B, A, B, B>.forth(a).merge2();
      expect(merge63.value, equals(a));

      Union2<A, B> merge64 = Union6<A, A, B, A, B, B>.fifth(b).merge2();
      expect(merge64.value, equals(b));

      Union2<A, B> merge65 = Union6<A, A, B, A, B, B>.sixth(b).merge2();
      expect(merge65.value, equals(b));

      Union2<A, B> merge66 = Union6<A, A, B, B, A, A>.first(a).merge2();
      expect(merge66.value, equals(a));

      Union2<A, B> merge67 = Union6<A, A, B, B, A, A>.second(a).merge2();
      expect(merge67.value, equals(a));

      Union2<A, B> merge68 = Union6<A, A, B, B, A, A>.third(b).merge2();
      expect(merge68.value, equals(b));

      Union2<A, B> merge69 = Union6<A, A, B, B, A, A>.forth(b).merge2();
      expect(merge69.value, equals(b));

      Union2<A, B> merge70 = Union6<A, A, B, B, A, A>.fifth(a).merge2();
      expect(merge70.value, equals(a));

      Union2<A, B> merge71 = Union6<A, A, B, B, A, A>.sixth(a).merge2();
      expect(merge71.value, equals(a));

      Union2<A, B> merge72 = Union6<A, A, B, B, A, B>.first(a).merge2();
      expect(merge72.value, equals(a));

      Union2<A, B> merge73 = Union6<A, A, B, B, A, B>.second(a).merge2();
      expect(merge73.value, equals(a));

      Union2<A, B> merge74 = Union6<A, A, B, B, A, B>.third(b).merge2();
      expect(merge74.value, equals(b));

      Union2<A, B> merge75 = Union6<A, A, B, B, A, B>.forth(b).merge2();
      expect(merge75.value, equals(b));

      Union2<A, B> merge76 = Union6<A, A, B, B, A, B>.fifth(a).merge2();
      expect(merge76.value, equals(a));

      Union2<A, B> merge77 = Union6<A, A, B, B, A, B>.sixth(b).merge2();
      expect(merge77.value, equals(b));

      Union2<A, B> merge78 = Union6<A, A, B, B, B, A>.first(a).merge2();
      expect(merge78.value, equals(a));

      Union2<A, B> merge79 = Union6<A, A, B, B, B, A>.second(a).merge2();
      expect(merge79.value, equals(a));

      Union2<A, B> merge80 = Union6<A, A, B, B, B, A>.third(b).merge2();
      expect(merge80.value, equals(b));

      Union2<A, B> merge81 = Union6<A, A, B, B, B, A>.forth(b).merge2();
      expect(merge81.value, equals(b));

      Union2<A, B> merge82 = Union6<A, A, B, B, B, A>.fifth(b).merge2();
      expect(merge82.value, equals(b));

      Union2<A, B> merge83 = Union6<A, A, B, B, B, A>.sixth(a).merge2();
      expect(merge83.value, equals(a));

      Union2<A, B> merge84 = Union6<A, A, B, B, B, B>.first(a).merge2();
      expect(merge84.value, equals(a));

      Union2<A, B> merge85 = Union6<A, A, B, B, B, B>.second(a).merge2();
      expect(merge85.value, equals(a));

      Union2<A, B> merge86 = Union6<A, A, B, B, B, B>.third(b).merge2();
      expect(merge86.value, equals(b));

      Union2<A, B> merge87 = Union6<A, A, B, B, B, B>.forth(b).merge2();
      expect(merge87.value, equals(b));

      Union2<A, B> merge88 = Union6<A, A, B, B, B, B>.fifth(b).merge2();
      expect(merge88.value, equals(b));

      Union2<A, B> merge89 = Union6<A, A, B, B, B, B>.sixth(b).merge2();
      expect(merge89.value, equals(b));

      Union2<A, B> merge90 = Union6<A, B, A, A, A, A>.first(a).merge2();
      expect(merge90.value, equals(a));

      Union2<A, B> merge91 = Union6<A, B, A, A, A, A>.second(b).merge2();
      expect(merge91.value, equals(b));

      Union2<A, B> merge92 = Union6<A, B, A, A, A, A>.third(a).merge2();
      expect(merge92.value, equals(a));

      Union2<A, B> merge93 = Union6<A, B, A, A, A, A>.forth(a).merge2();
      expect(merge93.value, equals(a));

      Union2<A, B> merge94 = Union6<A, B, A, A, A, A>.fifth(a).merge2();
      expect(merge94.value, equals(a));

      Union2<A, B> merge95 = Union6<A, B, A, A, A, A>.sixth(a).merge2();
      expect(merge95.value, equals(a));

      Union2<A, B> merge96 = Union6<A, B, A, A, A, B>.first(a).merge2();
      expect(merge96.value, equals(a));

      Union2<A, B> merge97 = Union6<A, B, A, A, A, B>.second(b).merge2();
      expect(merge97.value, equals(b));

      Union2<A, B> merge98 = Union6<A, B, A, A, A, B>.third(a).merge2();
      expect(merge98.value, equals(a));

      Union2<A, B> merge99 = Union6<A, B, A, A, A, B>.forth(a).merge2();
      expect(merge99.value, equals(a));

      Union2<A, B> merge100 = Union6<A, B, A, A, A, B>.fifth(a).merge2();
      expect(merge100.value, equals(a));

      Union2<A, B> merge101 = Union6<A, B, A, A, A, B>.sixth(b).merge2();
      expect(merge101.value, equals(b));

      Union2<A, B> merge102 = Union6<A, B, A, A, B, A>.first(a).merge2();
      expect(merge102.value, equals(a));

      Union2<A, B> merge103 = Union6<A, B, A, A, B, A>.second(b).merge2();
      expect(merge103.value, equals(b));

      Union2<A, B> merge104 = Union6<A, B, A, A, B, A>.third(a).merge2();
      expect(merge104.value, equals(a));

      Union2<A, B> merge105 = Union6<A, B, A, A, B, A>.forth(a).merge2();
      expect(merge105.value, equals(a));

      Union2<A, B> merge106 = Union6<A, B, A, A, B, A>.fifth(b).merge2();
      expect(merge106.value, equals(b));

      Union2<A, B> merge107 = Union6<A, B, A, A, B, A>.sixth(a).merge2();
      expect(merge107.value, equals(a));

      Union2<A, B> merge108 = Union6<A, B, A, A, B, B>.first(a).merge2();
      expect(merge108.value, equals(a));

      Union2<A, B> merge109 = Union6<A, B, A, A, B, B>.second(b).merge2();
      expect(merge109.value, equals(b));

      Union2<A, B> merge110 = Union6<A, B, A, A, B, B>.third(a).merge2();
      expect(merge110.value, equals(a));

      Union2<A, B> merge111 = Union6<A, B, A, A, B, B>.forth(a).merge2();
      expect(merge111.value, equals(a));

      Union2<A, B> merge112 = Union6<A, B, A, A, B, B>.fifth(b).merge2();
      expect(merge112.value, equals(b));

      Union2<A, B> merge113 = Union6<A, B, A, A, B, B>.sixth(b).merge2();
      expect(merge113.value, equals(b));

      Union2<A, B> merge114 = Union6<A, B, A, B, A, A>.first(a).merge2();
      expect(merge114.value, equals(a));

      Union2<A, B> merge115 = Union6<A, B, A, B, A, A>.second(b).merge2();
      expect(merge115.value, equals(b));

      Union2<A, B> merge116 = Union6<A, B, A, B, A, A>.third(a).merge2();
      expect(merge116.value, equals(a));

      Union2<A, B> merge117 = Union6<A, B, A, B, A, A>.forth(b).merge2();
      expect(merge117.value, equals(b));

      Union2<A, B> merge118 = Union6<A, B, A, B, A, A>.fifth(a).merge2();
      expect(merge118.value, equals(a));

      Union2<A, B> merge119 = Union6<A, B, A, B, A, A>.sixth(a).merge2();
      expect(merge119.value, equals(a));

      Union2<A, B> merge120 = Union6<A, B, A, B, A, B>.first(a).merge2();
      expect(merge120.value, equals(a));

      Union2<A, B> merge121 = Union6<A, B, A, B, A, B>.second(b).merge2();
      expect(merge121.value, equals(b));

      Union2<A, B> merge122 = Union6<A, B, A, B, A, B>.third(a).merge2();
      expect(merge122.value, equals(a));

      Union2<A, B> merge123 = Union6<A, B, A, B, A, B>.forth(b).merge2();
      expect(merge123.value, equals(b));

      Union2<A, B> merge124 = Union6<A, B, A, B, A, B>.fifth(a).merge2();
      expect(merge124.value, equals(a));

      Union2<A, B> merge125 = Union6<A, B, A, B, A, B>.sixth(b).merge2();
      expect(merge125.value, equals(b));

      Union2<A, B> merge126 = Union6<A, B, A, B, B, A>.first(a).merge2();
      expect(merge126.value, equals(a));

      Union2<A, B> merge127 = Union6<A, B, A, B, B, A>.second(b).merge2();
      expect(merge127.value, equals(b));

      Union2<A, B> merge128 = Union6<A, B, A, B, B, A>.third(a).merge2();
      expect(merge128.value, equals(a));

      Union2<A, B> merge129 = Union6<A, B, A, B, B, A>.forth(b).merge2();
      expect(merge129.value, equals(b));

      Union2<A, B> merge130 = Union6<A, B, A, B, B, A>.fifth(b).merge2();
      expect(merge130.value, equals(b));

      Union2<A, B> merge131 = Union6<A, B, A, B, B, A>.sixth(a).merge2();
      expect(merge131.value, equals(a));

      Union2<A, B> merge132 = Union6<A, B, A, B, B, B>.first(a).merge2();
      expect(merge132.value, equals(a));

      Union2<A, B> merge133 = Union6<A, B, A, B, B, B>.second(b).merge2();
      expect(merge133.value, equals(b));

      Union2<A, B> merge134 = Union6<A, B, A, B, B, B>.third(a).merge2();
      expect(merge134.value, equals(a));

      Union2<A, B> merge135 = Union6<A, B, A, B, B, B>.forth(b).merge2();
      expect(merge135.value, equals(b));

      Union2<A, B> merge136 = Union6<A, B, A, B, B, B>.fifth(b).merge2();
      expect(merge136.value, equals(b));

      Union2<A, B> merge137 = Union6<A, B, A, B, B, B>.sixth(b).merge2();
      expect(merge137.value, equals(b));

      Union2<A, B> merge138 = Union6<A, B, B, A, A, A>.first(a).merge2();
      expect(merge138.value, equals(a));

      Union2<A, B> merge139 = Union6<A, B, B, A, A, A>.second(b).merge2();
      expect(merge139.value, equals(b));

      Union2<A, B> merge140 = Union6<A, B, B, A, A, A>.third(b).merge2();
      expect(merge140.value, equals(b));

      Union2<A, B> merge141 = Union6<A, B, B, A, A, A>.forth(a).merge2();
      expect(merge141.value, equals(a));

      Union2<A, B> merge142 = Union6<A, B, B, A, A, A>.fifth(a).merge2();
      expect(merge142.value, equals(a));

      Union2<A, B> merge143 = Union6<A, B, B, A, A, A>.sixth(a).merge2();
      expect(merge143.value, equals(a));

      Union2<A, B> merge144 = Union6<A, B, B, A, A, B>.first(a).merge2();
      expect(merge144.value, equals(a));

      Union2<A, B> merge145 = Union6<A, B, B, A, A, B>.second(b).merge2();
      expect(merge145.value, equals(b));

      Union2<A, B> merge146 = Union6<A, B, B, A, A, B>.third(b).merge2();
      expect(merge146.value, equals(b));

      Union2<A, B> merge147 = Union6<A, B, B, A, A, B>.forth(a).merge2();
      expect(merge147.value, equals(a));

      Union2<A, B> merge148 = Union6<A, B, B, A, A, B>.fifth(a).merge2();
      expect(merge148.value, equals(a));

      Union2<A, B> merge149 = Union6<A, B, B, A, A, B>.sixth(b).merge2();
      expect(merge149.value, equals(b));

      Union2<A, B> merge150 = Union6<A, B, B, A, B, A>.first(a).merge2();
      expect(merge150.value, equals(a));

      Union2<A, B> merge151 = Union6<A, B, B, A, B, A>.second(b).merge2();
      expect(merge151.value, equals(b));

      Union2<A, B> merge152 = Union6<A, B, B, A, B, A>.third(b).merge2();
      expect(merge152.value, equals(b));

      Union2<A, B> merge153 = Union6<A, B, B, A, B, A>.forth(a).merge2();
      expect(merge153.value, equals(a));

      Union2<A, B> merge154 = Union6<A, B, B, A, B, A>.fifth(b).merge2();
      expect(merge154.value, equals(b));

      Union2<A, B> merge155 = Union6<A, B, B, A, B, A>.sixth(a).merge2();
      expect(merge155.value, equals(a));

      Union2<A, B> merge156 = Union6<A, B, B, A, B, B>.first(a).merge2();
      expect(merge156.value, equals(a));

      Union2<A, B> merge157 = Union6<A, B, B, A, B, B>.second(b).merge2();
      expect(merge157.value, equals(b));

      Union2<A, B> merge158 = Union6<A, B, B, A, B, B>.third(b).merge2();
      expect(merge158.value, equals(b));

      Union2<A, B> merge159 = Union6<A, B, B, A, B, B>.forth(a).merge2();
      expect(merge159.value, equals(a));

      Union2<A, B> merge160 = Union6<A, B, B, A, B, B>.fifth(b).merge2();
      expect(merge160.value, equals(b));

      Union2<A, B> merge161 = Union6<A, B, B, A, B, B>.sixth(b).merge2();
      expect(merge161.value, equals(b));

      Union2<A, B> merge162 = Union6<A, B, B, B, A, A>.first(a).merge2();
      expect(merge162.value, equals(a));

      Union2<A, B> merge163 = Union6<A, B, B, B, A, A>.second(b).merge2();
      expect(merge163.value, equals(b));

      Union2<A, B> merge164 = Union6<A, B, B, B, A, A>.third(b).merge2();
      expect(merge164.value, equals(b));

      Union2<A, B> merge165 = Union6<A, B, B, B, A, A>.forth(b).merge2();
      expect(merge165.value, equals(b));

      Union2<A, B> merge166 = Union6<A, B, B, B, A, A>.fifth(a).merge2();
      expect(merge166.value, equals(a));

      Union2<A, B> merge167 = Union6<A, B, B, B, A, A>.sixth(a).merge2();
      expect(merge167.value, equals(a));

      Union2<A, B> merge168 = Union6<A, B, B, B, A, B>.first(a).merge2();
      expect(merge168.value, equals(a));

      Union2<A, B> merge169 = Union6<A, B, B, B, A, B>.second(b).merge2();
      expect(merge169.value, equals(b));

      Union2<A, B> merge170 = Union6<A, B, B, B, A, B>.third(b).merge2();
      expect(merge170.value, equals(b));

      Union2<A, B> merge171 = Union6<A, B, B, B, A, B>.forth(b).merge2();
      expect(merge171.value, equals(b));

      Union2<A, B> merge172 = Union6<A, B, B, B, A, B>.fifth(a).merge2();
      expect(merge172.value, equals(a));

      Union2<A, B> merge173 = Union6<A, B, B, B, A, B>.sixth(b).merge2();
      expect(merge173.value, equals(b));

      Union2<A, B> merge174 = Union6<A, B, B, B, B, A>.first(a).merge2();
      expect(merge174.value, equals(a));

      Union2<A, B> merge175 = Union6<A, B, B, B, B, A>.second(b).merge2();
      expect(merge175.value, equals(b));

      Union2<A, B> merge176 = Union6<A, B, B, B, B, A>.third(b).merge2();
      expect(merge176.value, equals(b));

      Union2<A, B> merge177 = Union6<A, B, B, B, B, A>.forth(b).merge2();
      expect(merge177.value, equals(b));

      Union2<A, B> merge178 = Union6<A, B, B, B, B, A>.fifth(b).merge2();
      expect(merge178.value, equals(b));

      Union2<A, B> merge179 = Union6<A, B, B, B, B, A>.sixth(a).merge2();
      expect(merge179.value, equals(a));

      Union2<A, B> merge180 = Union6<A, B, B, B, B, B>.first(a).merge2();
      expect(merge180.value, equals(a));

      Union2<A, B> merge181 = Union6<A, B, B, B, B, B>.second(b).merge2();
      expect(merge181.value, equals(b));

      Union2<A, B> merge182 = Union6<A, B, B, B, B, B>.third(b).merge2();
      expect(merge182.value, equals(b));

      Union2<A, B> merge183 = Union6<A, B, B, B, B, B>.forth(b).merge2();
      expect(merge183.value, equals(b));

      Union2<A, B> merge184 = Union6<A, B, B, B, B, B>.fifth(b).merge2();
      expect(merge184.value, equals(b));

      Union2<A, B> merge185 = Union6<A, B, B, B, B, B>.sixth(b).merge2();
      expect(merge185.value, equals(b));
    });
  });
  group('Union5', () {
    test('to Union4', () {
      Union4<A, B, C, D> merge0 = Union5<A, A, B, C, D>.first(a).merge4();
      expect(merge0.value, equals(a));

      Union4<A, B, C, D> merge1 = Union5<A, A, B, C, D>.second(a).merge4();
      expect(merge1.value, equals(a));

      Union4<A, B, C, D> merge2 = Union5<A, A, B, C, D>.third(b).merge4();
      expect(merge2.value, equals(b));

      Union4<A, B, C, D> merge3 = Union5<A, A, B, C, D>.forth(c).merge4();
      expect(merge3.value, equals(c));

      Union4<A, B, C, D> merge4 = Union5<A, A, B, C, D>.fifth(d).merge4();
      expect(merge4.value, equals(d));

      Union4<A, B, C, D> merge5 = Union5<A, B, A, C, D>.first(a).merge4();
      expect(merge5.value, equals(a));

      Union4<A, B, C, D> merge6 = Union5<A, B, A, C, D>.second(b).merge4();
      expect(merge6.value, equals(b));

      Union4<A, B, C, D> merge7 = Union5<A, B, A, C, D>.third(a).merge4();
      expect(merge7.value, equals(a));

      Union4<A, B, C, D> merge8 = Union5<A, B, A, C, D>.forth(c).merge4();
      expect(merge8.value, equals(c));

      Union4<A, B, C, D> merge9 = Union5<A, B, A, C, D>.fifth(d).merge4();
      expect(merge9.value, equals(d));

      Union4<A, B, C, D> merge10 = Union5<A, B, B, C, D>.first(a).merge4();
      expect(merge10.value, equals(a));

      Union4<A, B, C, D> merge11 = Union5<A, B, B, C, D>.second(b).merge4();
      expect(merge11.value, equals(b));

      Union4<A, B, C, D> merge12 = Union5<A, B, B, C, D>.third(b).merge4();
      expect(merge12.value, equals(b));

      Union4<A, B, C, D> merge13 = Union5<A, B, B, C, D>.forth(c).merge4();
      expect(merge13.value, equals(c));

      Union4<A, B, C, D> merge14 = Union5<A, B, B, C, D>.fifth(d).merge4();
      expect(merge14.value, equals(d));

      Union4<A, B, C, D> merge15 = Union5<A, B, C, A, D>.first(a).merge4();
      expect(merge15.value, equals(a));

      Union4<A, B, C, D> merge16 = Union5<A, B, C, A, D>.second(b).merge4();
      expect(merge16.value, equals(b));

      Union4<A, B, C, D> merge17 = Union5<A, B, C, A, D>.third(c).merge4();
      expect(merge17.value, equals(c));

      Union4<A, B, C, D> merge18 = Union5<A, B, C, A, D>.forth(a).merge4();
      expect(merge18.value, equals(a));

      Union4<A, B, C, D> merge19 = Union5<A, B, C, A, D>.fifth(d).merge4();
      expect(merge19.value, equals(d));

      Union4<A, B, C, D> merge20 = Union5<A, B, C, B, D>.first(a).merge4();
      expect(merge20.value, equals(a));

      Union4<A, B, C, D> merge21 = Union5<A, B, C, B, D>.second(b).merge4();
      expect(merge21.value, equals(b));

      Union4<A, B, C, D> merge22 = Union5<A, B, C, B, D>.third(c).merge4();
      expect(merge22.value, equals(c));

      Union4<A, B, C, D> merge23 = Union5<A, B, C, B, D>.forth(b).merge4();
      expect(merge23.value, equals(b));

      Union4<A, B, C, D> merge24 = Union5<A, B, C, B, D>.fifth(d).merge4();
      expect(merge24.value, equals(d));

      Union4<A, B, C, D> merge25 = Union5<A, B, C, C, D>.first(a).merge4();
      expect(merge25.value, equals(a));

      Union4<A, B, C, D> merge26 = Union5<A, B, C, C, D>.second(b).merge4();
      expect(merge26.value, equals(b));

      Union4<A, B, C, D> merge27 = Union5<A, B, C, C, D>.third(c).merge4();
      expect(merge27.value, equals(c));

      Union4<A, B, C, D> merge28 = Union5<A, B, C, C, D>.forth(c).merge4();
      expect(merge28.value, equals(c));

      Union4<A, B, C, D> merge29 = Union5<A, B, C, C, D>.fifth(d).merge4();
      expect(merge29.value, equals(d));

      Union4<A, B, C, D> merge30 = Union5<A, B, C, D, A>.first(a).merge4();
      expect(merge30.value, equals(a));

      Union4<A, B, C, D> merge31 = Union5<A, B, C, D, A>.second(b).merge4();
      expect(merge31.value, equals(b));

      Union4<A, B, C, D> merge32 = Union5<A, B, C, D, A>.third(c).merge4();
      expect(merge32.value, equals(c));

      Union4<A, B, C, D> merge33 = Union5<A, B, C, D, A>.forth(d).merge4();
      expect(merge33.value, equals(d));

      Union4<A, B, C, D> merge34 = Union5<A, B, C, D, A>.fifth(a).merge4();
      expect(merge34.value, equals(a));

      Union4<A, B, C, D> merge35 = Union5<A, B, C, D, B>.first(a).merge4();
      expect(merge35.value, equals(a));

      Union4<A, B, C, D> merge36 = Union5<A, B, C, D, B>.second(b).merge4();
      expect(merge36.value, equals(b));

      Union4<A, B, C, D> merge37 = Union5<A, B, C, D, B>.third(c).merge4();
      expect(merge37.value, equals(c));

      Union4<A, B, C, D> merge38 = Union5<A, B, C, D, B>.forth(d).merge4();
      expect(merge38.value, equals(d));

      Union4<A, B, C, D> merge39 = Union5<A, B, C, D, B>.fifth(b).merge4();
      expect(merge39.value, equals(b));

      Union4<A, B, C, D> merge40 = Union5<A, B, C, D, C>.first(a).merge4();
      expect(merge40.value, equals(a));

      Union4<A, B, C, D> merge41 = Union5<A, B, C, D, C>.second(b).merge4();
      expect(merge41.value, equals(b));

      Union4<A, B, C, D> merge42 = Union5<A, B, C, D, C>.third(c).merge4();
      expect(merge42.value, equals(c));

      Union4<A, B, C, D> merge43 = Union5<A, B, C, D, C>.forth(d).merge4();
      expect(merge43.value, equals(d));

      Union4<A, B, C, D> merge44 = Union5<A, B, C, D, C>.fifth(c).merge4();
      expect(merge44.value, equals(c));

      Union4<A, B, C, D> merge45 = Union5<A, B, C, D, D>.first(a).merge4();
      expect(merge45.value, equals(a));

      Union4<A, B, C, D> merge46 = Union5<A, B, C, D, D>.second(b).merge4();
      expect(merge46.value, equals(b));

      Union4<A, B, C, D> merge47 = Union5<A, B, C, D, D>.third(c).merge4();
      expect(merge47.value, equals(c));

      Union4<A, B, C, D> merge48 = Union5<A, B, C, D, D>.forth(d).merge4();
      expect(merge48.value, equals(d));

      Union4<A, B, C, D> merge49 = Union5<A, B, C, D, D>.fifth(d).merge4();
      expect(merge49.value, equals(d));
    });
    test('to Union3', () {
      Union3<A, B, C> merge0 = Union5<A, A, A, B, C>.first(a).merge3();
      expect(merge0.value, equals(a));

      Union3<A, B, C> merge1 = Union5<A, A, A, B, C>.second(a).merge3();
      expect(merge1.value, equals(a));

      Union3<A, B, C> merge2 = Union5<A, A, A, B, C>.third(a).merge3();
      expect(merge2.value, equals(a));

      Union3<A, B, C> merge3 = Union5<A, A, A, B, C>.forth(b).merge3();
      expect(merge3.value, equals(b));

      Union3<A, B, C> merge4 = Union5<A, A, A, B, C>.fifth(c).merge3();
      expect(merge4.value, equals(c));

      Union3<A, B, C> merge5 = Union5<A, A, B, A, C>.first(a).merge3();
      expect(merge5.value, equals(a));

      Union3<A, B, C> merge6 = Union5<A, A, B, A, C>.second(a).merge3();
      expect(merge6.value, equals(a));

      Union3<A, B, C> merge7 = Union5<A, A, B, A, C>.third(b).merge3();
      expect(merge7.value, equals(b));

      Union3<A, B, C> merge8 = Union5<A, A, B, A, C>.forth(a).merge3();
      expect(merge8.value, equals(a));

      Union3<A, B, C> merge9 = Union5<A, A, B, A, C>.fifth(c).merge3();
      expect(merge9.value, equals(c));

      Union3<A, B, C> merge10 = Union5<A, A, B, B, C>.first(a).merge3();
      expect(merge10.value, equals(a));

      Union3<A, B, C> merge11 = Union5<A, A, B, B, C>.second(a).merge3();
      expect(merge11.value, equals(a));

      Union3<A, B, C> merge12 = Union5<A, A, B, B, C>.third(b).merge3();
      expect(merge12.value, equals(b));

      Union3<A, B, C> merge13 = Union5<A, A, B, B, C>.forth(b).merge3();
      expect(merge13.value, equals(b));

      Union3<A, B, C> merge14 = Union5<A, A, B, B, C>.fifth(c).merge3();
      expect(merge14.value, equals(c));

      Union3<A, B, C> merge15 = Union5<A, A, B, C, A>.first(a).merge3();
      expect(merge15.value, equals(a));

      Union3<A, B, C> merge16 = Union5<A, A, B, C, A>.second(a).merge3();
      expect(merge16.value, equals(a));

      Union3<A, B, C> merge17 = Union5<A, A, B, C, A>.third(b).merge3();
      expect(merge17.value, equals(b));

      Union3<A, B, C> merge18 = Union5<A, A, B, C, A>.forth(c).merge3();
      expect(merge18.value, equals(c));

      Union3<A, B, C> merge19 = Union5<A, A, B, C, A>.fifth(a).merge3();
      expect(merge19.value, equals(a));

      Union3<A, B, C> merge20 = Union5<A, A, B, C, B>.first(a).merge3();
      expect(merge20.value, equals(a));

      Union3<A, B, C> merge21 = Union5<A, A, B, C, B>.second(a).merge3();
      expect(merge21.value, equals(a));

      Union3<A, B, C> merge22 = Union5<A, A, B, C, B>.third(b).merge3();
      expect(merge22.value, equals(b));

      Union3<A, B, C> merge23 = Union5<A, A, B, C, B>.forth(c).merge3();
      expect(merge23.value, equals(c));

      Union3<A, B, C> merge24 = Union5<A, A, B, C, B>.fifth(b).merge3();
      expect(merge24.value, equals(b));

      Union3<A, B, C> merge25 = Union5<A, A, B, C, C>.first(a).merge3();
      expect(merge25.value, equals(a));

      Union3<A, B, C> merge26 = Union5<A, A, B, C, C>.second(a).merge3();
      expect(merge26.value, equals(a));

      Union3<A, B, C> merge27 = Union5<A, A, B, C, C>.third(b).merge3();
      expect(merge27.value, equals(b));

      Union3<A, B, C> merge28 = Union5<A, A, B, C, C>.forth(c).merge3();
      expect(merge28.value, equals(c));

      Union3<A, B, C> merge29 = Union5<A, A, B, C, C>.fifth(c).merge3();
      expect(merge29.value, equals(c));

      Union3<A, B, C> merge30 = Union5<A, B, A, A, C>.first(a).merge3();
      expect(merge30.value, equals(a));

      Union3<A, B, C> merge31 = Union5<A, B, A, A, C>.second(b).merge3();
      expect(merge31.value, equals(b));

      Union3<A, B, C> merge32 = Union5<A, B, A, A, C>.third(a).merge3();
      expect(merge32.value, equals(a));

      Union3<A, B, C> merge33 = Union5<A, B, A, A, C>.forth(a).merge3();
      expect(merge33.value, equals(a));

      Union3<A, B, C> merge34 = Union5<A, B, A, A, C>.fifth(c).merge3();
      expect(merge34.value, equals(c));

      Union3<A, B, C> merge35 = Union5<A, B, A, B, C>.first(a).merge3();
      expect(merge35.value, equals(a));

      Union3<A, B, C> merge36 = Union5<A, B, A, B, C>.second(b).merge3();
      expect(merge36.value, equals(b));

      Union3<A, B, C> merge37 = Union5<A, B, A, B, C>.third(a).merge3();
      expect(merge37.value, equals(a));

      Union3<A, B, C> merge38 = Union5<A, B, A, B, C>.forth(b).merge3();
      expect(merge38.value, equals(b));

      Union3<A, B, C> merge39 = Union5<A, B, A, B, C>.fifth(c).merge3();
      expect(merge39.value, equals(c));

      Union3<A, B, C> merge40 = Union5<A, B, A, C, A>.first(a).merge3();
      expect(merge40.value, equals(a));

      Union3<A, B, C> merge41 = Union5<A, B, A, C, A>.second(b).merge3();
      expect(merge41.value, equals(b));

      Union3<A, B, C> merge42 = Union5<A, B, A, C, A>.third(a).merge3();
      expect(merge42.value, equals(a));

      Union3<A, B, C> merge43 = Union5<A, B, A, C, A>.forth(c).merge3();
      expect(merge43.value, equals(c));

      Union3<A, B, C> merge44 = Union5<A, B, A, C, A>.fifth(a).merge3();
      expect(merge44.value, equals(a));

      Union3<A, B, C> merge45 = Union5<A, B, A, C, B>.first(a).merge3();
      expect(merge45.value, equals(a));

      Union3<A, B, C> merge46 = Union5<A, B, A, C, B>.second(b).merge3();
      expect(merge46.value, equals(b));

      Union3<A, B, C> merge47 = Union5<A, B, A, C, B>.third(a).merge3();
      expect(merge47.value, equals(a));

      Union3<A, B, C> merge48 = Union5<A, B, A, C, B>.forth(c).merge3();
      expect(merge48.value, equals(c));

      Union3<A, B, C> merge49 = Union5<A, B, A, C, B>.fifth(b).merge3();
      expect(merge49.value, equals(b));

      Union3<A, B, C> merge50 = Union5<A, B, A, C, C>.first(a).merge3();
      expect(merge50.value, equals(a));

      Union3<A, B, C> merge51 = Union5<A, B, A, C, C>.second(b).merge3();
      expect(merge51.value, equals(b));

      Union3<A, B, C> merge52 = Union5<A, B, A, C, C>.third(a).merge3();
      expect(merge52.value, equals(a));

      Union3<A, B, C> merge53 = Union5<A, B, A, C, C>.forth(c).merge3();
      expect(merge53.value, equals(c));

      Union3<A, B, C> merge54 = Union5<A, B, A, C, C>.fifth(c).merge3();
      expect(merge54.value, equals(c));

      Union3<A, B, C> merge55 = Union5<A, B, B, A, C>.first(a).merge3();
      expect(merge55.value, equals(a));

      Union3<A, B, C> merge56 = Union5<A, B, B, A, C>.second(b).merge3();
      expect(merge56.value, equals(b));

      Union3<A, B, C> merge57 = Union5<A, B, B, A, C>.third(b).merge3();
      expect(merge57.value, equals(b));

      Union3<A, B, C> merge58 = Union5<A, B, B, A, C>.forth(a).merge3();
      expect(merge58.value, equals(a));

      Union3<A, B, C> merge59 = Union5<A, B, B, A, C>.fifth(c).merge3();
      expect(merge59.value, equals(c));

      Union3<A, B, C> merge60 = Union5<A, B, B, B, C>.first(a).merge3();
      expect(merge60.value, equals(a));

      Union3<A, B, C> merge61 = Union5<A, B, B, B, C>.second(b).merge3();
      expect(merge61.value, equals(b));

      Union3<A, B, C> merge62 = Union5<A, B, B, B, C>.third(b).merge3();
      expect(merge62.value, equals(b));

      Union3<A, B, C> merge63 = Union5<A, B, B, B, C>.forth(b).merge3();
      expect(merge63.value, equals(b));

      Union3<A, B, C> merge64 = Union5<A, B, B, B, C>.fifth(c).merge3();
      expect(merge64.value, equals(c));

      Union3<A, B, C> merge65 = Union5<A, B, B, C, A>.first(a).merge3();
      expect(merge65.value, equals(a));

      Union3<A, B, C> merge66 = Union5<A, B, B, C, A>.second(b).merge3();
      expect(merge66.value, equals(b));

      Union3<A, B, C> merge67 = Union5<A, B, B, C, A>.third(b).merge3();
      expect(merge67.value, equals(b));

      Union3<A, B, C> merge68 = Union5<A, B, B, C, A>.forth(c).merge3();
      expect(merge68.value, equals(c));

      Union3<A, B, C> merge69 = Union5<A, B, B, C, A>.fifth(a).merge3();
      expect(merge69.value, equals(a));

      Union3<A, B, C> merge70 = Union5<A, B, B, C, B>.first(a).merge3();
      expect(merge70.value, equals(a));

      Union3<A, B, C> merge71 = Union5<A, B, B, C, B>.second(b).merge3();
      expect(merge71.value, equals(b));

      Union3<A, B, C> merge72 = Union5<A, B, B, C, B>.third(b).merge3();
      expect(merge72.value, equals(b));

      Union3<A, B, C> merge73 = Union5<A, B, B, C, B>.forth(c).merge3();
      expect(merge73.value, equals(c));

      Union3<A, B, C> merge74 = Union5<A, B, B, C, B>.fifth(b).merge3();
      expect(merge74.value, equals(b));

      Union3<A, B, C> merge75 = Union5<A, B, B, C, C>.first(a).merge3();
      expect(merge75.value, equals(a));

      Union3<A, B, C> merge76 = Union5<A, B, B, C, C>.second(b).merge3();
      expect(merge76.value, equals(b));

      Union3<A, B, C> merge77 = Union5<A, B, B, C, C>.third(b).merge3();
      expect(merge77.value, equals(b));

      Union3<A, B, C> merge78 = Union5<A, B, B, C, C>.forth(c).merge3();
      expect(merge78.value, equals(c));

      Union3<A, B, C> merge79 = Union5<A, B, B, C, C>.fifth(c).merge3();
      expect(merge79.value, equals(c));

      Union3<A, B, C> merge80 = Union5<A, B, C, A, A>.first(a).merge3();
      expect(merge80.value, equals(a));

      Union3<A, B, C> merge81 = Union5<A, B, C, A, A>.second(b).merge3();
      expect(merge81.value, equals(b));

      Union3<A, B, C> merge82 = Union5<A, B, C, A, A>.third(c).merge3();
      expect(merge82.value, equals(c));

      Union3<A, B, C> merge83 = Union5<A, B, C, A, A>.forth(a).merge3();
      expect(merge83.value, equals(a));

      Union3<A, B, C> merge84 = Union5<A, B, C, A, A>.fifth(a).merge3();
      expect(merge84.value, equals(a));

      Union3<A, B, C> merge85 = Union5<A, B, C, A, B>.first(a).merge3();
      expect(merge85.value, equals(a));

      Union3<A, B, C> merge86 = Union5<A, B, C, A, B>.second(b).merge3();
      expect(merge86.value, equals(b));

      Union3<A, B, C> merge87 = Union5<A, B, C, A, B>.third(c).merge3();
      expect(merge87.value, equals(c));

      Union3<A, B, C> merge88 = Union5<A, B, C, A, B>.forth(a).merge3();
      expect(merge88.value, equals(a));

      Union3<A, B, C> merge89 = Union5<A, B, C, A, B>.fifth(b).merge3();
      expect(merge89.value, equals(b));

      Union3<A, B, C> merge90 = Union5<A, B, C, A, C>.first(a).merge3();
      expect(merge90.value, equals(a));

      Union3<A, B, C> merge91 = Union5<A, B, C, A, C>.second(b).merge3();
      expect(merge91.value, equals(b));

      Union3<A, B, C> merge92 = Union5<A, B, C, A, C>.third(c).merge3();
      expect(merge92.value, equals(c));

      Union3<A, B, C> merge93 = Union5<A, B, C, A, C>.forth(a).merge3();
      expect(merge93.value, equals(a));

      Union3<A, B, C> merge94 = Union5<A, B, C, A, C>.fifth(c).merge3();
      expect(merge94.value, equals(c));

      Union3<A, B, C> merge95 = Union5<A, B, C, B, A>.first(a).merge3();
      expect(merge95.value, equals(a));

      Union3<A, B, C> merge96 = Union5<A, B, C, B, A>.second(b).merge3();
      expect(merge96.value, equals(b));

      Union3<A, B, C> merge97 = Union5<A, B, C, B, A>.third(c).merge3();
      expect(merge97.value, equals(c));

      Union3<A, B, C> merge98 = Union5<A, B, C, B, A>.forth(b).merge3();
      expect(merge98.value, equals(b));

      Union3<A, B, C> merge99 = Union5<A, B, C, B, A>.fifth(a).merge3();
      expect(merge99.value, equals(a));

      Union3<A, B, C> merge100 = Union5<A, B, C, B, B>.first(a).merge3();
      expect(merge100.value, equals(a));

      Union3<A, B, C> merge101 = Union5<A, B, C, B, B>.second(b).merge3();
      expect(merge101.value, equals(b));

      Union3<A, B, C> merge102 = Union5<A, B, C, B, B>.third(c).merge3();
      expect(merge102.value, equals(c));

      Union3<A, B, C> merge103 = Union5<A, B, C, B, B>.forth(b).merge3();
      expect(merge103.value, equals(b));

      Union3<A, B, C> merge104 = Union5<A, B, C, B, B>.fifth(b).merge3();
      expect(merge104.value, equals(b));

      Union3<A, B, C> merge105 = Union5<A, B, C, B, C>.first(a).merge3();
      expect(merge105.value, equals(a));

      Union3<A, B, C> merge106 = Union5<A, B, C, B, C>.second(b).merge3();
      expect(merge106.value, equals(b));

      Union3<A, B, C> merge107 = Union5<A, B, C, B, C>.third(c).merge3();
      expect(merge107.value, equals(c));

      Union3<A, B, C> merge108 = Union5<A, B, C, B, C>.forth(b).merge3();
      expect(merge108.value, equals(b));

      Union3<A, B, C> merge109 = Union5<A, B, C, B, C>.fifth(c).merge3();
      expect(merge109.value, equals(c));

      Union3<A, B, C> merge110 = Union5<A, B, C, C, A>.first(a).merge3();
      expect(merge110.value, equals(a));

      Union3<A, B, C> merge111 = Union5<A, B, C, C, A>.second(b).merge3();
      expect(merge111.value, equals(b));

      Union3<A, B, C> merge112 = Union5<A, B, C, C, A>.third(c).merge3();
      expect(merge112.value, equals(c));

      Union3<A, B, C> merge113 = Union5<A, B, C, C, A>.forth(c).merge3();
      expect(merge113.value, equals(c));

      Union3<A, B, C> merge114 = Union5<A, B, C, C, A>.fifth(a).merge3();
      expect(merge114.value, equals(a));

      Union3<A, B, C> merge115 = Union5<A, B, C, C, B>.first(a).merge3();
      expect(merge115.value, equals(a));

      Union3<A, B, C> merge116 = Union5<A, B, C, C, B>.second(b).merge3();
      expect(merge116.value, equals(b));

      Union3<A, B, C> merge117 = Union5<A, B, C, C, B>.third(c).merge3();
      expect(merge117.value, equals(c));

      Union3<A, B, C> merge118 = Union5<A, B, C, C, B>.forth(c).merge3();
      expect(merge118.value, equals(c));

      Union3<A, B, C> merge119 = Union5<A, B, C, C, B>.fifth(b).merge3();
      expect(merge119.value, equals(b));

      Union3<A, B, C> merge120 = Union5<A, B, C, C, C>.first(a).merge3();
      expect(merge120.value, equals(a));

      Union3<A, B, C> merge121 = Union5<A, B, C, C, C>.second(b).merge3();
      expect(merge121.value, equals(b));

      Union3<A, B, C> merge122 = Union5<A, B, C, C, C>.third(c).merge3();
      expect(merge122.value, equals(c));

      Union3<A, B, C> merge123 = Union5<A, B, C, C, C>.forth(c).merge3();
      expect(merge123.value, equals(c));

      Union3<A, B, C> merge124 = Union5<A, B, C, C, C>.fifth(c).merge3();
      expect(merge124.value, equals(c));
    });
    test('to Union2', () {
      Union2<A, B> merge0 = Union5<A, A, A, A, B>.first(a).merge2();
      expect(merge0.value, equals(a));

      Union2<A, B> merge1 = Union5<A, A, A, A, B>.second(a).merge2();
      expect(merge1.value, equals(a));

      Union2<A, B> merge2 = Union5<A, A, A, A, B>.third(a).merge2();
      expect(merge2.value, equals(a));

      Union2<A, B> merge3 = Union5<A, A, A, A, B>.forth(a).merge2();
      expect(merge3.value, equals(a));

      Union2<A, B> merge4 = Union5<A, A, A, A, B>.fifth(b).merge2();
      expect(merge4.value, equals(b));

      Union2<A, B> merge5 = Union5<A, A, A, B, A>.first(a).merge2();
      expect(merge5.value, equals(a));

      Union2<A, B> merge6 = Union5<A, A, A, B, A>.second(a).merge2();
      expect(merge6.value, equals(a));

      Union2<A, B> merge7 = Union5<A, A, A, B, A>.third(a).merge2();
      expect(merge7.value, equals(a));

      Union2<A, B> merge8 = Union5<A, A, A, B, A>.forth(b).merge2();
      expect(merge8.value, equals(b));

      Union2<A, B> merge9 = Union5<A, A, A, B, A>.fifth(a).merge2();
      expect(merge9.value, equals(a));

      Union2<A, B> merge10 = Union5<A, A, A, B, B>.first(a).merge2();
      expect(merge10.value, equals(a));

      Union2<A, B> merge11 = Union5<A, A, A, B, B>.second(a).merge2();
      expect(merge11.value, equals(a));

      Union2<A, B> merge12 = Union5<A, A, A, B, B>.third(a).merge2();
      expect(merge12.value, equals(a));

      Union2<A, B> merge13 = Union5<A, A, A, B, B>.forth(b).merge2();
      expect(merge13.value, equals(b));

      Union2<A, B> merge14 = Union5<A, A, A, B, B>.fifth(b).merge2();
      expect(merge14.value, equals(b));

      Union2<A, B> merge15 = Union5<A, A, B, A, A>.first(a).merge2();
      expect(merge15.value, equals(a));

      Union2<A, B> merge16 = Union5<A, A, B, A, A>.second(a).merge2();
      expect(merge16.value, equals(a));

      Union2<A, B> merge17 = Union5<A, A, B, A, A>.third(b).merge2();
      expect(merge17.value, equals(b));

      Union2<A, B> merge18 = Union5<A, A, B, A, A>.forth(a).merge2();
      expect(merge18.value, equals(a));

      Union2<A, B> merge19 = Union5<A, A, B, A, A>.fifth(a).merge2();
      expect(merge19.value, equals(a));

      Union2<A, B> merge20 = Union5<A, A, B, A, B>.first(a).merge2();
      expect(merge20.value, equals(a));

      Union2<A, B> merge21 = Union5<A, A, B, A, B>.second(a).merge2();
      expect(merge21.value, equals(a));

      Union2<A, B> merge22 = Union5<A, A, B, A, B>.third(b).merge2();
      expect(merge22.value, equals(b));

      Union2<A, B> merge23 = Union5<A, A, B, A, B>.forth(a).merge2();
      expect(merge23.value, equals(a));

      Union2<A, B> merge24 = Union5<A, A, B, A, B>.fifth(b).merge2();
      expect(merge24.value, equals(b));

      Union2<A, B> merge25 = Union5<A, A, B, B, A>.first(a).merge2();
      expect(merge25.value, equals(a));

      Union2<A, B> merge26 = Union5<A, A, B, B, A>.second(a).merge2();
      expect(merge26.value, equals(a));

      Union2<A, B> merge27 = Union5<A, A, B, B, A>.third(b).merge2();
      expect(merge27.value, equals(b));

      Union2<A, B> merge28 = Union5<A, A, B, B, A>.forth(b).merge2();
      expect(merge28.value, equals(b));

      Union2<A, B> merge29 = Union5<A, A, B, B, A>.fifth(a).merge2();
      expect(merge29.value, equals(a));

      Union2<A, B> merge30 = Union5<A, A, B, B, B>.first(a).merge2();
      expect(merge30.value, equals(a));

      Union2<A, B> merge31 = Union5<A, A, B, B, B>.second(a).merge2();
      expect(merge31.value, equals(a));

      Union2<A, B> merge32 = Union5<A, A, B, B, B>.third(b).merge2();
      expect(merge32.value, equals(b));

      Union2<A, B> merge33 = Union5<A, A, B, B, B>.forth(b).merge2();
      expect(merge33.value, equals(b));

      Union2<A, B> merge34 = Union5<A, A, B, B, B>.fifth(b).merge2();
      expect(merge34.value, equals(b));

      Union2<A, B> merge35 = Union5<A, B, A, A, A>.first(a).merge2();
      expect(merge35.value, equals(a));

      Union2<A, B> merge36 = Union5<A, B, A, A, A>.second(b).merge2();
      expect(merge36.value, equals(b));

      Union2<A, B> merge37 = Union5<A, B, A, A, A>.third(a).merge2();
      expect(merge37.value, equals(a));

      Union2<A, B> merge38 = Union5<A, B, A, A, A>.forth(a).merge2();
      expect(merge38.value, equals(a));

      Union2<A, B> merge39 = Union5<A, B, A, A, A>.fifth(a).merge2();
      expect(merge39.value, equals(a));

      Union2<A, B> merge40 = Union5<A, B, A, A, B>.first(a).merge2();
      expect(merge40.value, equals(a));

      Union2<A, B> merge41 = Union5<A, B, A, A, B>.second(b).merge2();
      expect(merge41.value, equals(b));

      Union2<A, B> merge42 = Union5<A, B, A, A, B>.third(a).merge2();
      expect(merge42.value, equals(a));

      Union2<A, B> merge43 = Union5<A, B, A, A, B>.forth(a).merge2();
      expect(merge43.value, equals(a));

      Union2<A, B> merge44 = Union5<A, B, A, A, B>.fifth(b).merge2();
      expect(merge44.value, equals(b));

      Union2<A, B> merge45 = Union5<A, B, A, B, A>.first(a).merge2();
      expect(merge45.value, equals(a));

      Union2<A, B> merge46 = Union5<A, B, A, B, A>.second(b).merge2();
      expect(merge46.value, equals(b));

      Union2<A, B> merge47 = Union5<A, B, A, B, A>.third(a).merge2();
      expect(merge47.value, equals(a));

      Union2<A, B> merge48 = Union5<A, B, A, B, A>.forth(b).merge2();
      expect(merge48.value, equals(b));

      Union2<A, B> merge49 = Union5<A, B, A, B, A>.fifth(a).merge2();
      expect(merge49.value, equals(a));

      Union2<A, B> merge50 = Union5<A, B, A, B, B>.first(a).merge2();
      expect(merge50.value, equals(a));

      Union2<A, B> merge51 = Union5<A, B, A, B, B>.second(b).merge2();
      expect(merge51.value, equals(b));

      Union2<A, B> merge52 = Union5<A, B, A, B, B>.third(a).merge2();
      expect(merge52.value, equals(a));

      Union2<A, B> merge53 = Union5<A, B, A, B, B>.forth(b).merge2();
      expect(merge53.value, equals(b));

      Union2<A, B> merge54 = Union5<A, B, A, B, B>.fifth(b).merge2();
      expect(merge54.value, equals(b));

      Union2<A, B> merge55 = Union5<A, B, B, A, A>.first(a).merge2();
      expect(merge55.value, equals(a));

      Union2<A, B> merge56 = Union5<A, B, B, A, A>.second(b).merge2();
      expect(merge56.value, equals(b));

      Union2<A, B> merge57 = Union5<A, B, B, A, A>.third(b).merge2();
      expect(merge57.value, equals(b));

      Union2<A, B> merge58 = Union5<A, B, B, A, A>.forth(a).merge2();
      expect(merge58.value, equals(a));

      Union2<A, B> merge59 = Union5<A, B, B, A, A>.fifth(a).merge2();
      expect(merge59.value, equals(a));

      Union2<A, B> merge60 = Union5<A, B, B, A, B>.first(a).merge2();
      expect(merge60.value, equals(a));

      Union2<A, B> merge61 = Union5<A, B, B, A, B>.second(b).merge2();
      expect(merge61.value, equals(b));

      Union2<A, B> merge62 = Union5<A, B, B, A, B>.third(b).merge2();
      expect(merge62.value, equals(b));

      Union2<A, B> merge63 = Union5<A, B, B, A, B>.forth(a).merge2();
      expect(merge63.value, equals(a));

      Union2<A, B> merge64 = Union5<A, B, B, A, B>.fifth(b).merge2();
      expect(merge64.value, equals(b));

      Union2<A, B> merge65 = Union5<A, B, B, B, A>.first(a).merge2();
      expect(merge65.value, equals(a));

      Union2<A, B> merge66 = Union5<A, B, B, B, A>.second(b).merge2();
      expect(merge66.value, equals(b));

      Union2<A, B> merge67 = Union5<A, B, B, B, A>.third(b).merge2();
      expect(merge67.value, equals(b));

      Union2<A, B> merge68 = Union5<A, B, B, B, A>.forth(b).merge2();
      expect(merge68.value, equals(b));

      Union2<A, B> merge69 = Union5<A, B, B, B, A>.fifth(a).merge2();
      expect(merge69.value, equals(a));

      Union2<A, B> merge70 = Union5<A, B, B, B, B>.first(a).merge2();
      expect(merge70.value, equals(a));

      Union2<A, B> merge71 = Union5<A, B, B, B, B>.second(b).merge2();
      expect(merge71.value, equals(b));

      Union2<A, B> merge72 = Union5<A, B, B, B, B>.third(b).merge2();
      expect(merge72.value, equals(b));

      Union2<A, B> merge73 = Union5<A, B, B, B, B>.forth(b).merge2();
      expect(merge73.value, equals(b));

      Union2<A, B> merge74 = Union5<A, B, B, B, B>.fifth(b).merge2();
      expect(merge74.value, equals(b));
    });
  });
  group('Union4', () {
    test('to Union3', () {
      Union3<A, B, C> merge0 = Union4<A, A, B, C>.first(a).merge3();
      expect(merge0.value, equals(a));

      Union3<A, B, C> merge1 = Union4<A, A, B, C>.second(a).merge3();
      expect(merge1.value, equals(a));

      Union3<A, B, C> merge2 = Union4<A, A, B, C>.third(b).merge3();
      expect(merge2.value, equals(b));

      Union3<A, B, C> merge3 = Union4<A, A, B, C>.forth(c).merge3();
      expect(merge3.value, equals(c));

      Union3<A, B, C> merge4 = Union4<A, B, A, C>.first(a).merge3();
      expect(merge4.value, equals(a));

      Union3<A, B, C> merge5 = Union4<A, B, A, C>.second(b).merge3();
      expect(merge5.value, equals(b));

      Union3<A, B, C> merge6 = Union4<A, B, A, C>.third(a).merge3();
      expect(merge6.value, equals(a));

      Union3<A, B, C> merge7 = Union4<A, B, A, C>.forth(c).merge3();
      expect(merge7.value, equals(c));

      Union3<A, B, C> merge8 = Union4<A, B, B, C>.first(a).merge3();
      expect(merge8.value, equals(a));

      Union3<A, B, C> merge9 = Union4<A, B, B, C>.second(b).merge3();
      expect(merge9.value, equals(b));

      Union3<A, B, C> merge10 = Union4<A, B, B, C>.third(b).merge3();
      expect(merge10.value, equals(b));

      Union3<A, B, C> merge11 = Union4<A, B, B, C>.forth(c).merge3();
      expect(merge11.value, equals(c));

      Union3<A, B, C> merge12 = Union4<A, B, C, A>.first(a).merge3();
      expect(merge12.value, equals(a));

      Union3<A, B, C> merge13 = Union4<A, B, C, A>.second(b).merge3();
      expect(merge13.value, equals(b));

      Union3<A, B, C> merge14 = Union4<A, B, C, A>.third(c).merge3();
      expect(merge14.value, equals(c));

      Union3<A, B, C> merge15 = Union4<A, B, C, A>.forth(a).merge3();
      expect(merge15.value, equals(a));

      Union3<A, B, C> merge16 = Union4<A, B, C, B>.first(a).merge3();
      expect(merge16.value, equals(a));

      Union3<A, B, C> merge17 = Union4<A, B, C, B>.second(b).merge3();
      expect(merge17.value, equals(b));

      Union3<A, B, C> merge18 = Union4<A, B, C, B>.third(c).merge3();
      expect(merge18.value, equals(c));

      Union3<A, B, C> merge19 = Union4<A, B, C, B>.forth(b).merge3();
      expect(merge19.value, equals(b));

      Union3<A, B, C> merge20 = Union4<A, B, C, C>.first(a).merge3();
      expect(merge20.value, equals(a));

      Union3<A, B, C> merge21 = Union4<A, B, C, C>.second(b).merge3();
      expect(merge21.value, equals(b));

      Union3<A, B, C> merge22 = Union4<A, B, C, C>.third(c).merge3();
      expect(merge22.value, equals(c));

      Union3<A, B, C> merge23 = Union4<A, B, C, C>.forth(c).merge3();
      expect(merge23.value, equals(c));
    });
    test('to Union2', () {
      Union2<A, B> merge0 = Union4<A, A, A, B>.first(a).merge2();
      expect(merge0.value, equals(a));

      Union2<A, B> merge1 = Union4<A, A, A, B>.second(a).merge2();
      expect(merge1.value, equals(a));

      Union2<A, B> merge2 = Union4<A, A, A, B>.third(a).merge2();
      expect(merge2.value, equals(a));

      Union2<A, B> merge3 = Union4<A, A, A, B>.forth(b).merge2();
      expect(merge3.value, equals(b));

      Union2<A, B> merge4 = Union4<A, A, B, A>.first(a).merge2();
      expect(merge4.value, equals(a));

      Union2<A, B> merge5 = Union4<A, A, B, A>.second(a).merge2();
      expect(merge5.value, equals(a));

      Union2<A, B> merge6 = Union4<A, A, B, A>.third(b).merge2();
      expect(merge6.value, equals(b));

      Union2<A, B> merge7 = Union4<A, A, B, A>.forth(a).merge2();
      expect(merge7.value, equals(a));

      Union2<A, B> merge8 = Union4<A, A, B, B>.first(a).merge2();
      expect(merge8.value, equals(a));

      Union2<A, B> merge9 = Union4<A, A, B, B>.second(a).merge2();
      expect(merge9.value, equals(a));

      Union2<A, B> merge10 = Union4<A, A, B, B>.third(b).merge2();
      expect(merge10.value, equals(b));

      Union2<A, B> merge11 = Union4<A, A, B, B>.forth(b).merge2();
      expect(merge11.value, equals(b));

      Union2<A, B> merge12 = Union4<A, B, A, A>.first(a).merge2();
      expect(merge12.value, equals(a));

      Union2<A, B> merge13 = Union4<A, B, A, A>.second(b).merge2();
      expect(merge13.value, equals(b));

      Union2<A, B> merge14 = Union4<A, B, A, A>.third(a).merge2();
      expect(merge14.value, equals(a));

      Union2<A, B> merge15 = Union4<A, B, A, A>.forth(a).merge2();
      expect(merge15.value, equals(a));

      Union2<A, B> merge16 = Union4<A, B, A, B>.first(a).merge2();
      expect(merge16.value, equals(a));

      Union2<A, B> merge17 = Union4<A, B, A, B>.second(b).merge2();
      expect(merge17.value, equals(b));

      Union2<A, B> merge18 = Union4<A, B, A, B>.third(a).merge2();
      expect(merge18.value, equals(a));

      Union2<A, B> merge19 = Union4<A, B, A, B>.forth(b).merge2();
      expect(merge19.value, equals(b));

      Union2<A, B> merge20 = Union4<A, B, B, A>.first(a).merge2();
      expect(merge20.value, equals(a));

      Union2<A, B> merge21 = Union4<A, B, B, A>.second(b).merge2();
      expect(merge21.value, equals(b));

      Union2<A, B> merge22 = Union4<A, B, B, A>.third(b).merge2();
      expect(merge22.value, equals(b));

      Union2<A, B> merge23 = Union4<A, B, B, A>.forth(a).merge2();
      expect(merge23.value, equals(a));

      Union2<A, B> merge24 = Union4<A, B, B, B>.first(a).merge2();
      expect(merge24.value, equals(a));

      Union2<A, B> merge25 = Union4<A, B, B, B>.second(b).merge2();
      expect(merge25.value, equals(b));

      Union2<A, B> merge26 = Union4<A, B, B, B>.third(b).merge2();
      expect(merge26.value, equals(b));

      Union2<A, B> merge27 = Union4<A, B, B, B>.forth(b).merge2();
      expect(merge27.value, equals(b));
    });
  });
  group('Union3', () {
    test('to Union2', () {
      Union2<A, B> merge0 = Union3<A, A, B>.first(a).merge2();
      expect(merge0.value, equals(a));

      Union2<A, B> merge1 = Union3<A, A, B>.second(a).merge2();
      expect(merge1.value, equals(a));

      Union2<A, B> merge2 = Union3<A, A, B>.third(b).merge2();
      expect(merge2.value, equals(b));

      Union2<A, B> merge3 = Union3<A, B, A>.first(a).merge2();
      expect(merge3.value, equals(a));

      Union2<A, B> merge4 = Union3<A, B, A>.second(b).merge2();
      expect(merge4.value, equals(b));

      Union2<A, B> merge5 = Union3<A, B, A>.third(a).merge2();
      expect(merge5.value, equals(a));

      Union2<A, B> merge6 = Union3<A, B, B>.first(a).merge2();
      expect(merge6.value, equals(a));

      Union2<A, B> merge7 = Union3<A, B, B>.second(b).merge2();
      expect(merge7.value, equals(b));

      Union2<A, B> merge8 = Union3<A, B, B>.third(b).merge2();
      expect(merge8.value, equals(b));
    });
  });
}
