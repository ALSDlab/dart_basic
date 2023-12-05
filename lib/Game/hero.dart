import 'sword.dart';
import 'slime.dart';

class Hero {
  static int money = 100;
  String name;
  int _hp;
  Sword? sword;

//생성자 생략
  Hero({this.name = '홍길동', required int hp, this.sword}) : _hp = hp;


  int get hp => _hp;

  set hp(int value) {
    _hp = value;
  }

  void bye() {
    print('빠이');
  }

  void _die() {
    print('죽었다.');
  }

  void attack(Slime slime) {
    print('$name이 $slime을 공격했습니다.');
    print('슬라임의 반격을 받았다.');
    _hp -= 10;
    if(_hp <=0){
      _die();
    }
  }

  void run() {}
}
