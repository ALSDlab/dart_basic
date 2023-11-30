void main(){
  void bigger(int a, int b) {
    if (a > b) {
      print('a가 b보다 큽니다.');
      print(a);
    } else if (a < b) {
      print('b가 a보다 큽니다.');
      print(b);
    } else if (a == b) {
      print('eq');
    }
  }
  bigger(10, 20);
  bigger(10, 10);

}
