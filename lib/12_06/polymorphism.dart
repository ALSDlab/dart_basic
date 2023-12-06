abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

class A extends Y {
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }
}

class B extends Y {
  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }

  void c() {
    print("Bc");
  }
}

void main() {
  X obj = A();
  obj.a(); //1. 정답

  Y y1 = A();
  Y y2 = B();
  y1.a(); // Aa 출력
  y2.a(); // Ba 출력

  List<Y> values = [y1, y2];
  for (Y val in values) {
    val.b();
  }
}
