import 'dart:io';

import 'common.dart';

void main(List<String> args) async {
  final file = File.fromUri(Uri.parse('./test/union_merge_test.dart'));
  final a = file.openWrite()..write('''
/// ignore_for_file: lines_longer_than_80_chars, omit_local_variable_types, prefer_const_constructors

import 'package:union/union.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
''');

  for (var from = 6; from > 2; from--) {
    a.writeln("  group('Union$from', () {");
    for (var to = from - 1; to >= 2; to--) {
      a.writeln("    test('to Union$to', () {");
      for (final combination in generateCombination(to, from)) {
        a.writeln(combination);
      }
      a.writeln('    });');
    }
    a.writeln('  });');
  }

  a.writeln('}');
  await a.close();
}

Iterable<String> generateCombination(int to, int from) sync* {
  var index = 0;
  for (final combination in generateAllMergeTypesCombination(to, from)) {
    final toTypes = List.generate(to, (index) => index);

    final toTypesString = generateGenerics(toTypes);

    for (var constructorIndex = 0; constructorIndex <= to; constructorIndex++) {
      final constructor = indexName[constructorIndex];
      final value = indexToLetter(combination[constructorIndex]).toLowerCase();
      yield '''      Union$to$toTypesString merge$index = Union$from${generateGenerics(combination)}.$constructor($value).merge$to();
      expect(merge$index.value, equals($value));
''';
      index++;
    }
  }
}
