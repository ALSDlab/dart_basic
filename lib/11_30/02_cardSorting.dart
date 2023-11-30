import 'dart:io';
import 'package:trotter/trotter.dart';

void main() {
  List<int> cardList = [];

  String? fourNum = stdin.readLineSync();
  List<String> lst = fourNum!.split(' ');
  for (int i = 0; i < lst.length; i++) {
    int eachNum = int.parse(lst[i]);
    cardList.add(eachNum);
  }

  List<int> idx = [0,1,2,3];
  final p = Permutations(4, idx);

  int maxNum = 0;
  for (final v in p()) {
    int sumNum = (10*cardList[v[0]] + cardList[v[1]]) + (10*cardList[v[2]] + cardList[v[3]]);
    if (sumNum>maxNum){
      maxNum = sumNum;
    }
  }
  print(maxNum);
}