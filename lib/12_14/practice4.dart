import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

// 4. 연습문제 3의 결과를 다음과 같이 표시하시오
// 다운로드 시작
// 다운로드 끝
// ===================
// 소요시간 : 0:00:00.00
// 용량 : 1150 bytes

Future<Uint8List> downloadImage(String url) async {
  final response = await http.get(Uri.parse(url));
  return response.bodyBytes;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  return await File(fileName).writeAsBytes(bytes);
}

void main() async {
  // 스톱워치 start
  final stopwatch = Stopwatch()..start();
  print('다운로드 시작');

  String filePath = 'lib/12_14/icon.ico';
  Uint8List bytesList = await downloadImage('https://alimipro.com/favicon.ico');

  // 다운로드 끝
  print('다운로드 끝');
  print('==============');
  print('소요시간 : ${stopwatch.elapsed}');

  // 이미지 저장
  await saveFile(bytesList, filePath);

  // 용량 확인
  final fileSize = await File(filePath).length();
  print('용량 : $fileSize bytes');
}
