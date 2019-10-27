import 'dart:io';

import 'common.dart';

void main(List<String> args) async {
  final file = File.fromUri(Uri.parse('./lib/src/union.g.dart'));
  final a = file.openWrite()
    ..write(
        '/// ignore_for_file: lines_longer_than_80_chars, public_member_api_docs\n')
    ..write("part of 'union.dart';\n\n");

  for (var i = 6; i >= 2; i--) {
    for (var j = i - 1; j >= 2; j--) {
      a.writeAll(generateCombination(j, i));
    }
  }

  await a.close();
}

Iterable<String> generateCombination(int from, int to) sync* {
  for (final combination in generateAllMergeTypesCombination(from, to)) {
    final toTypes = List.generate(from, (index) => index);

    final toTypesString = generateGenerics(toTypes);

    yield '''
extension Union${to}Merge${from}Combination${combination.map(indexToLetter).join('')}$toTypesString on Union$to${generateGenerics(combination)} {
  Union$from$toTypesString merge$from() {
    return join(
${combination.map((index) => valueToUnion(index: index, union: from)).join('\n')}
    );
  }
}

''';
  }
}
