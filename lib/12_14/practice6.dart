// 6. 연습 3에서 url 이 잘못된 경우 대체 데이터를 사용하도록 예외처리를 구현하시오

import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage(String url) async {
  final response = await http.get(Uri.parse(url));
  return response.bodyBytes;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  return await File(fileName).writeAsBytes(bytes);
}

// url 확인하는 메소드
Future<bool> validateImage(String url) async {
  http.Response response;
  try {
    response = await http.get(Uri.parse(url));
    print('유효한 URL 입니다.');
  } catch (e) {
    print('유효하지 않은 URL 입니다.');
    return false;
  }
  if (response.statusCode != HttpStatus.ok) return false;
  return true;
}

void main() async {
  String filePath = 'lib/12_14/icon.ico';
  String url = 'http://alimipro.com/favicon.ico';
  if (await validateImage(url)) {
    Uint8List bytesList = await downloadImage(url);
    saveFile(bytesList, filePath);
  }
}
