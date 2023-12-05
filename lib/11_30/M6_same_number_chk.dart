void main(){
  int num1 = 777;
  int num2 = 725;
  int chk = 1;

  void checkNum(int a){
    List<String> list = a.toString().split('');
    for (int i=0; i < list.length-1; i++){
      if (list[i] == list[i+1]){
        chk = 1;
      } else {chk = 0;}
      chk *= chk;
    }
    if (chk==1){
      print(a);
      }else{print("NO");}

  }
  
  checkNum(num1);
  checkNum(num2);
}