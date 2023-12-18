import 'package:test/test.dart';
import 'package:untitled/12_18/practice.dart';

void main() {
  test('함수가 잘 작동하고 있다', () {
    // giver (준비)

    // when (실행)
    final testA = Processing().isEven(4);
    final testB = Processing().findMax([1, 2, 3, 4, 5]);
    final testC = Processing().reverseString('Hallo, zusammen!!');

    // then (검증)
    expect(testA, true);
    expect(testB, 5);
    expect(testC, '!!nemmasuz ,ollaH');
  });
}
