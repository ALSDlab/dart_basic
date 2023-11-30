import 'dart:io';
import 'package:trotter/trotter.dart';

void main() {
  Map<int, int> map = {};

  String? fourNum = stdin.readLineSync();
  List<String> lst = fourNum!.split(' ');
  for (int i = 0; i < lst.length; i++) {
    int eachNum = int.parse(lst[i]);
    map[i] = eachNum;
  }

  int maxNum = 0;
  Map<int, String> cardMap = {1:cardList[0], "Jane":25};
  final p = Combinations(4, idx);
  print(p);


  // for (final v in p()) {
  //   int? a = v[0];
  //   int? b = v[1];
  //   int? c = v[2];
  //   int? d = v[3];
  //   int? num1 = (10*cardList[(a)] + cardList[b]);
  //
  //   }
  //   int a = 10*v[0]+v[1];
  //   int b = 10*v[2]+v[3];
  //   int c = a + b;
  //   if (c>maxNum){
  //     maxNum = c;
  //   }
  // }
  // print(maxNum);
}