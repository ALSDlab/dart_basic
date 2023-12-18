import 'dart:convert';
import 'package:test/test.dart';
import 'package:untitled/12_18/practice1.dart';

void main() {
  test('은행정보가 잘 맞아야 한다.', () {
    // fromJson
    String bank = Bank.fromJson(jsonDecode(fakeBankInfo)).toString();

    // then (검증)
    expect(bank, '{name: 홍길동, address: 서울시 어쩌구 저쩌구, phone: 010-1111-2222}');
  });
}

final fakeBankInfo =
    '{"name": "홍길동", "address": "서울시 어쩌구 저쩌구", "phone": "010-1111-2222"}';
