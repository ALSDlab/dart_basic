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

void main() async {
  String filePath = 'lib/12_14/icon.ico';
  Uint8List bytesList = await downloadImage('https://alimipro.com/favicon.ico');
  saveFile(bytesList, filePath);
}
