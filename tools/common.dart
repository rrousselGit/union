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

String generateGenerics(List<int> types) {
  return '<${types.map(indexToLetter).join(', ')}>';
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
  if (targetLength == 0) {
    if (nextNewChar >= fromLength) {
      yield currentCombination;
    }
    return;
  }

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
