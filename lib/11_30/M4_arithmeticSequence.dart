void main(){
  int startNum = 5;
  int jumpNum = 10;
  int endNum = 10;

  print('등차수열 시작');
  for (int i=1;i<=endNum;i++){
    print(startNum);
    startNum += jumpNum;
  }
  print('등차수열 끝');
}