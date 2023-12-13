import 'dart:io';

Future<String> readFileAsync(File source) async {
  String contents = '';
  try {
    contents = await source.readAsString();
    print('파일 내용: $contents');
  } catch (e) {
    print('파일을 읽는 도중 오류 발생: $e');
  }
  return contents;
}

Future<void> writeFileAsync(String source, File target) async {
  try {
    await target.writeAsString(source);
    print('파일 수정 성공');
  } catch (e) {
    print('파일을 쓰는 도중 오류 발생: $e');
  }
}

String findWord(String source) {
  String replacedText;
  if (source.contains('한석봉')) {
    replacedText = source.replaceAll('한석봉', '김석봉');
    print('새로운 내용: $replacedText');
  } else {
    replacedText = source;
  }
  return replacedText;
}

void main() async {
  File file = File('lib/12_13/sample.csv');
  File copyFile = File('lib/12_13/sample_copy.csv');

  String fileData = await readFileAsync(file);
  String newText = findWord(fileData);
  writeFileAsync(newText, copyFile);
}
