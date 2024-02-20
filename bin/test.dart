int countVietnameseLetters(String input) {
  Map<String, String> vietnameseToLatin = {
    'ă': 'aw',
    'â': 'aa',
    'đ': 'dd',
    'ê': 'ee',
    'ô': 'oo',
    'ơ': 'ow',
    'ư': 'w'
  };
  Set<String> vietnameseLetters = vietnameseToLatin.values.toSet();
  Set<String> foundLetters = {};

  for (int i = 0; i < input.length; i++) {
    for (int j = 2; j >= 1; j--) {
      if (i + j <= input.length) {
        String current = input.substring(i, i + j);
        if (vietnameseLetters.contains(current)) {
          foundLetters.add(current);
          break;
        }
      }
    }
  }
  print(foundLetters);
  return foundLetters.length;
}

void main() {
  String input = 'hfdawhwhcoomdd';

  int count = countVietnameseLetters(input);

  print('Count Vietnamese letters: $count');
}