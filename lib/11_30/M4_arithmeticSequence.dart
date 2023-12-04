void main(){
  int startNum = 5;
  int jumpNum = 10;
  int endNum = 10;
  String result = '';

  print('등차수열 시작');
  for (int i=1;i<=endNum;i++){
    result += startNum.toString();
    result += ' ';
    startNum += jumpNum;
  }
  print(result);
  print('등차수열 끝');
}