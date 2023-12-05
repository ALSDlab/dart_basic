void main(){

  void evenOdd(int a, int b){
    int num = (a%2) + (b%2);
    switch(num){
      case 0:
        print("NO");
      case 1:  
        print("YES");
      case 2:
        print("No");
    }
  }
  
  evenOdd(30,15);
  evenOdd(12, 40);
}