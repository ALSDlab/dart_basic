class Word {
  String word = '';

  bool isVowel(int i) {
    final vowels = ['a', 'e', 'i', 'o', 'u'];
    for (var vowel in vowels) {
      if (word.substring(i, i + 1).toLowerCase() == vowel) {
        return true;
      }
    }
    return false;
  }

  bool isConsonant(int i) {
    final vowels = ['a', 'e', 'i', 'o', 'u'];
    for (var vowel in vowels) {
      if (word.substring(i, i + 1).toLowerCase() == vowel) {
        return false;
      }
    }
    return true;
  }
}

void main() {
  Word testWord = Word();
  testWord.word = 'Flutter';

  for (int i = 0; i < testWord.word.length; i++) {
    bool result1 = testWord.isVowel(i);
    bool result2 = testWord.isConsonant(i);
    // if (result1) {
    //   print('${i + 1}번째 글자는 모음입니다.');
    // }
    if (result2) {
      print('${i + 1}번째 글자는 자음입니다.');
    }
  }
}
