// 1. 파일을 복사하는 함수를 작성하시오
//    원본 파일 경로와 복사할 파일 경로는 프로그램 실행 시 파라미터로 전달되는 것으로 하고, 버퍼링이나 에러 처리는 하지 않는다.

import 'dart:io';

void copy(String source, String target) {
  final originalFile = File('lib/12_11/$source');
  final copyFile = File('lib/12_11/$target');
  final text = originalFile.readAsStringSync();
  copyFile.writeAsStringSync(text);
}

// 읽어서 쓴다.
void copy2(String source, String target){
  File(target).writeAsStringSync(File(source).readAsStringSync());
}

// sexy code
void copy3(String source, String target)=> File(source).copySync(target);

void main() {
  final sourceFile = 'test_file.txt';
  final targetFile = 'test_target.txt';
  copy(sourceFile, targetFile);
}
