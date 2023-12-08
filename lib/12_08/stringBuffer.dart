void main() {
  final stopwatch = Stopwatch()..start();

  test1(); // 16.75초
  test2(); // 0.018초

  print(stopwatch.elapsed);
}

void test1() {
  var string = '';

  for (int i = 0; i < 100000; i++) {
    string += i.toString();
  }
}

void test2() {
  var string = StringBuffer('');

  for (int i = 0; i < 100000; i++) {
    string.write(i.toString());
  }
}
