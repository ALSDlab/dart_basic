import 'package:test/test.dart';
import 'package:untitled/12_18/practice2_3_4.dart';

void main() {
  test('짝수 판별이 잘 되고 있다', () {
    // giver (준비)

    // when (실행)
    final testA = Processing().isEven(4);
    // then (검증)
    expect(testA, true);
  });

  test('최대값을 찾을 수 있다', (){
    // when (실행)
    final testB = Processing().findMax([1, 2, 3, 4, 5]);
    // then (검증)
    expect(testB, 5);

  });

  test('문자열이 뒤집기 함수가 잘 작동하고 있다.', (){
    // when (실행)
    final testC = Processing().reverseString('Hallo, zusammen!!');
    // then (검증)
    expect(testC, '!!nemmasuz ,ollaH');
  });
}
