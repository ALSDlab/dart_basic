import 'package:test/test.dart';
import 'package:untitled/12_18/account.dart';

void main() {
  test('계좌이체가 잘 동작해야 한다.', () {
    // giver (준비)
    Account a = Account('홍길동', 1000);
    Account b = Account('한석봉', 0);

    //when (실행)
    a.transfer(b, 500);

    // then (검증)
    expect(a.balance, 500);
    expect(b.balance, 500);
  });
}
