import 'dart:math';

const unionsCount = 9;

const indexName = [
  'first',
  'second',
  'third',
  'forth',
  'fifth',
  'sixth',
  'seventh',
  'eighth',
  'ninth',
];

final aCharCode = 'A'.codeUnitAt(0);

void main(List<String> args) {
  for (final combination in generateAllMergeTypesCombination(2, 4)) {
    print('''
extension Union4Merge2Combination${combination.map(indexToLetter).join('')}<A, B> on Union4<${combination.map(indexToLetter).join(',')}> {
  Union2<A, B> merge2() {
    return join(
${combination.map((index) => valueToUnion(index: index, union: 4)).join('\n')}
    );
  }
}
''');
  }
}

String valueToUnion({int index, int union}) {
  return '      (v) => Union$union.${indexName[index]}(v),';
}

List<List<int>> generateAllMergeTypesCombination(
  int fromLength,
  int targetLength,
) {
  return _generateAllMergeTypesCombination(
    fromLength: fromLength,
    currentCombination: [0],
    targetLength: targetLength - 1,
    nextNewChar: 1,
  ).toList();
}

Iterable<List<int>> _generateAllMergeTypesCombination({
  int fromLength,
  List<int> currentCombination,
  int targetLength,
  int nextNewChar,
}) sync* {
  // Base case: k is 0,
  // print prefix
  if (targetLength == 0) {
    if (nextNewChar == fromLength) {
      yield currentCombination;
    }
    return;
  }

  // One by one add all fromLength
  // from set and recursively
  // call for k equals to k-1
  for (var i = 0; i < fromLength && i <= nextNewChar; i++) {
    final newPrefix = [...currentCombination, i];

    yield* _generateAllMergeTypesCombination(
      fromLength: fromLength,
      currentCombination: newPrefix,
      targetLength: targetLength - 1,
      nextNewChar: i == nextNewChar ? nextNewChar + 1 : nextNewChar,
    );
  }
}

String indexToLetter(int index) {
  return String.fromCharCode(aCharCode + index);
}
