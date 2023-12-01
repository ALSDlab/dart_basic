import 'dart:math';

class Cleric {
  String name;
  int hp;
  final maxHp;
  int mp;
  final maxMp;

  Cleric(this.name, this.hp, this.mp,{this.maxHp = 50, this.maxMp = 10});

  void selfAid() {
    if (mp < 5) {
      print('MP가 부족합니다. 남은 MP: $mp');
      return;
    } else {
      mp -= 5;
      hp = maxHp;
      print('$name 가 HP를 회복하였다. 남은 MP: $mp');
    }
  }

  pray(int prayTime) {
    int refillMp = Random().nextInt(3) + prayTime;
    if (mp + refillMp >= maxMp) {
      final int refillMp = maxMp - mp;
      mp += refillMp;
      print("$refillMp 회복하여 모든 MP가 회복되었다. MP: $mp");
    } else {
      mp += refillMp;
      print("$name 가 $refillMp 의 MP를 회복하였다.");
    }

    return refillMp;
  }
}
