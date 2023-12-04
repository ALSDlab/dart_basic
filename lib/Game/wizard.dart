import 'hero.dart';
import 'wand.dart';

class Wizard {
  String name;
  int hp;
  Wand? wand;

  Wizard({
    required this.name,
    required this.hp,
  });

  void heal(Hero hero) {
    // hero.hp += 10;
    print('${hero.name}의 HP를 10 회복했습니다.');
  }
}
