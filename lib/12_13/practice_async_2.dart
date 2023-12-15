import 'dart:io';

Future<List> readFileAsync(file) async {
  List<List> fileData = [];
  try {
    List<String> contents = await file.readAsLines();
    for (String content in contents) {
      List<String> line = content.split(', ');
      fileData.add(line);
    }
    print('파일 내용: $fileData');
  } catch (e) {
    print('파일을 읽는 도중 오류 발생: $e');
  }
  return fileData;
}

Future<void> writeToFile(data, File target) async {
  List<String> newData = [];
  for (var items in await data) {
    String newItemsString;
    List<String> newItems = [];
    for (var item in items) {
      if (item == '한석봉') {
        item = '김석봉';
      }
      newItems.add(item);
    }
    newItemsString = newItems.join(', ');
    newData.add(newItemsString);
    await target.writeAsString('$newItemsString\n', mode: FileMode.append);
  }
  print('새로운 내용: $newData');
}

void main() {
  File file = File('lib/12_13/sample.csv');
  File copyFile = File('lib/12_13/sample_copy.csv');
  Future<List> fileData = readFileAsync(file);
  print('파일 읽기 대기중');
  writeToFile(fileData, copyFile);
}
