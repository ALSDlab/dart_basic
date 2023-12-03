import 'dart:io';

void main() {
  String? mapAndMoveCnt = stdin.readLineSync();
  List<String> mapAndMove = mapAndMoveCnt!.split(' ');
  List <int> mapMove = mapAndMove.map(int.parse).toList();
  String? myFirst = stdin.readLineSync();
  List<String> firstPosition = myFirst!.split(' ');
  List <int> firstXY = firstPosition.map(int.parse).toList();

  int mapX = mapMove[0];
  int mapY = mapMove[1];
  int moveCnt = mapMove[2];
  int resultX = firstXY[0];
  int resultY = firstXY[1];
  for (int i = 0; i < moveCnt; i++){
    String? moveCnt = stdin.readLineSync();
    List<String> move = moveCnt!.split(' ');
    int moveCount = int.parse(move[1]);
    switch(move[0]){
      case 'U':
        resultY += moveCount;
        resultY %= mapY;
      case 'D':
        resultY -= moveCount;
        resultY %= mapY;
      case 'R':
        resultX += moveCount;
        resultX %= mapX;
      case 'L':
        resultX -= moveCount;
        resultX %= mapX;
    }
  }
  print('$resultX $resultY');
}
