class Processing {
  // Unit Test - 연습문제 2. 짝수 판별기 함수
  bool isEven(int num) {
    bool result = false;
    if (num.isEven) {
      result = true;
    }
    return result;
  }

// Unit Test - 연습문제 3. 최댓값 찾기 함수
  int findMax(List<int> numList) {
    numList.sort();
    return numList[0];
  }

// Unit Test - 연습문제 4. 문자열 뒤집기 함수
  String reverseString(String string) {
    List<String> stringToList = string.split('');
    return stringToList.reversed.join();
  }
}
