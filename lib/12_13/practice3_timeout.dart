import "dart:io";

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async {
// 위 Future 함수를 실행하고 5초 이내에 완료되지 않으면 “timeout”을 출력
  String result = await timeoutFuture()
      .timeout(const Duration(seconds: 5), onTimeout: () => "timeout");
  print(result);
}
