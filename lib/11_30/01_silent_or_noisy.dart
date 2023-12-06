import 'dart:io';

void main() {
  int? input() {
    String? s = stdin.readLineSync();
    if (s != null) {
      int n = int.parse(s);
      return n;
    }
    return null;
  }

  String? round(int x, int y, int a, int b, int R){
    String result = "";
    var circle = (x-a)*(x-a)+(y-b)*(y-b);
    if (circle>=R*R){
      result = "Silent";
      return result;
    }else{
      result = "Noisy";
      return result;}
  }

  int? a = input();
  int? b = input();
  int? R = input();
  int? N = input();
  List<String> lst = [];
  for (int i=1;i<=N!;i++){
    int? x = input();
    int? y = input();
    String? result = round(x as int,y as int,a as int,b as int,R as int);
    lst.add(result!);
  }

  print(lst);
}