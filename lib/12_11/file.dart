import 'dart:io';

void main() {
  // Open
  final file = File('save.txt');

  // 파일을 읽거나 쓰고 닫는다.
  // file.writeAsStringSync('Hello World!!');
  try {
    final text = file.readAsStringSync();
    print(text);
  } catch (e) {
    print('파일이 없습니다. : $e');
  }
}
