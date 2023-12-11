void main() {
  // 1. 다음과 같은 프로그램을 작성, 실행 후 runtime error 를 발생하시오.
  // 2. 1에서 작성한 코드를 수정하여, try-catch()문을 사용하여 예외처리를 하시오.
  //    예외처리는 다음의 처리를 수행하시오.
  final numString = '10.5';

  try {
    int num = numStringToNum(numString);
    print(num);
  } on FormatException {
    int num = 0;
    print(num);
  }
}

int numStringToNum(String numString) {
  return int.parse(numString);
}
