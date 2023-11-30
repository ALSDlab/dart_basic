void main(){
  List<int> list = [5,8,19,25,31];

  for (int i=0;i<list.length-1;i++){
    int data = list[i+1] - list[i];
    print(data);
  }

}