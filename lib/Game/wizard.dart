import 'hero.dart';
import 'wand.dart';

class Wizard {
  final int _hp;
  final String _name;
  final int _mp;
  final Wand wand;

  Wizard(
    this.wand, {
    required int hp,
    required String name,
    required int mp,
  })  : _hp = hp,
        _name = name,
        _mp = mp;

  int get hp => _hp;

  String get name => _name;

  int get mp => _mp;

  set hp(int value) {
    if (value < 0) {
      hp = 0;
    }
  }

  set name(String value) {
    if (value.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    }
  }

  set mp(int value) {
    if (value < 0) {
      throw Exception('MP가 부족합니다.');
    }
  }

  void heal(Hero hero) {
    // hero.hp += 10;
    print('${hero.name}의 HP를 10 회복했습니다.');
  }
}
