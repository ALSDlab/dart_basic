void main() {
  // 1. 다음과 같은 프로그램을 작성, 실행 후 runtime error 를 발생하시오.
  // 2. 1에서 작성한 코드를 수정하여, try-catch()문을 사용하여 예외처리를 하시오.
  //    예외처리는 다음의 처리를 수행하시오.
  final String numString = '10.5';
  print(parse(numString));
}

// solution1
int parse(String string) {
  int num;
  try {
    num = int.parse(string);
  } catch (e) {
    num = 0;
  }
  return num;
}

// solution2 - tryParse
// print(int.tryParse(numString) ?? 0);
