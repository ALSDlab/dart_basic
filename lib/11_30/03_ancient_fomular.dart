import 'dart:io';

void main(){

  int num = 0;

    stdout.write('E ');
    String? ancientfomular = stdin.readLineSync();
    List<String> ancientNumListst = ancientfomular!.split('+');
    for (var ancientNum in ancientNumListst) {
      List<String> numCharacter = ancientNum.split('');
      for (var characters in numCharacter) {
        if (characters == '<'){
        num += 10;
        }else if(characters == '/') {
          num += 1;
        } else {
          print('숫자가 잘못 입력되었습니다.');
        }
      }
    }
    print(num);




}