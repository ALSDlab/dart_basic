import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

// 5. 임의의 3개의 이미지를 순차적으로 다운로드 받는 시간과, 병렬로 동시에 다운로드 받는 시간 비교

String url1 =
    'https://wallpaperswide.com/download/snowman_winter_tradition-wallpaper-5120x2880.jpg';
String url2 =
    'https://wallpaperswide.com/download/merry_christmas_and_happy_new_year_2024-wallpaper-3554x1999.jpg';
String url3 =
    'https://wallpaperswide.com/download/winter_snowy_night_beautiful_christmas_tree_santa_claus-wallpaper-3554x1999.jpg';

Map<String, String> urls = {
  "image1": url1,
  "image2": url2,
  "image3": url3,
};

// 이미지 다운로드하고 저장하는 함수
Future<void> downloadImageAndSave(String url, String fileName) async {
  final response = await http.get(Uri.parse(url));
  await File(fileName).writeAsBytes(response.bodyBytes);
}

// 순차적으로 다운받을 때의 함수
Future<void> serialDownload(Map<String, String> urls) async {
  print('순차로 다운로드 시작');
  // 스톱워치 start
  final stopwatch = Stopwatch()..start();

  for (int i = 0; i < urls.values.toList().length; i++) {
    // 이미지 저장 경로
    print('${i + 1}번 다운로드 중..');
    String filePath = 'lib/12_14/serial/${urls.keys.toList()[i]}.jpg';
    // 이미지를 다운로드하고 저장함
    await downloadImageAndSave(urls.values.toList()[i], filePath);
  }
  // 다운로드 끝
  print('다운로드 끝');
  print('==============');
  print('소요시간 : ${stopwatch.elapsed}');
}

// 병렬로 다운받을 때의 함수
Future<void> parallelDownload(Map<String, String> urls) async {
  print('병렬로 다운로드 시작');
  // 스톱워치 start
  final stopwatch = Stopwatch()..start();

  String filePath1 = 'lib/12_14/parallel/${urls.keys.toList()[0]}.jpg';
  String filePath2 = 'lib/12_14/parallel/${urls.keys.toList()[1]}.jpg';
  String filePath3 = 'lib/12_14/parallel/${urls.keys.toList()[2]}.jpg';
  Future<void> task1 = downloadImageAndSave(urls.values.toList()[0], filePath1);
  Future<void> task2 = downloadImageAndSave(urls.values.toList()[1], filePath2);
  Future<void> task3 = downloadImageAndSave(urls.values.toList()[2], filePath3);
  // 위 세 작업이 모두 종료될 때까지 대기
  await Future.wait([task1, task2, task3]);

  // 다운로드 끝
  print('다운로드 끝');
  print('==============');
  print('소요시간 : ${stopwatch.elapsed}');
}

void main() async {
  // (순차)다운로드 시작
  await serialDownload(urls);

  // (병렬)다운로드 시작
  await parallelDownload(urls);
}
