import 'hero.dart';
import 'slime.dart';

class PoisonSlime extends Slime {

  int _poisonAttackCount = 5;

  int get poisonAttackCount => _poisonAttackCount;
  set poisonAttackCount(int value) {
    if (value <= 0){
      throw Exception('독 공격횟수 부족');
    }
  }

  PoisonSlime(super.hp);

  @override
  void attack(Hero hero) {
    super.attack(hero);

    if (_poisonAttackCount > 0) {
      print('추가로, 독 포자를 살포했다!');
      int additionalDmg = (hero.hp ~/ 5) ;
      print('$additionalDmg포인트의 데미지');
      hero.hp -= additionalDmg;
      _poisonAttackCount -= 1;
      print('독 공격의 남은 횟수: $_poisonAttackCount');
    }
  }


}
