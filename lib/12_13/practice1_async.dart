import 'dart:io';

Future<void> readAndWriteFileAsync(File source, File target) async {
  String contents;
  try {
    contents = await source.readAsString();
    print('파일 내용: $contents');
    await target.writeAsString(findSukbong(contents.toString()));
    print('파일 수정 성공');
  } catch (e) {
    print('파일을 읽는 도중 오류 발생: $e');
  }
}

String findSukbong(String source) {
  String replacedText;
  if (source.contains('한석봉')) {
    replacedText = source.replaceAll('한석봉', '김석봉');
  } else {
    replacedText = source;
  }
  return replacedText;
}

void main() {
  File file = File('lib/12_13/sample.csv');
  File copyFile = File('lib/12_13/sample_copy.csv');

  readAndWriteFileAsync(file, copyFile);
}
