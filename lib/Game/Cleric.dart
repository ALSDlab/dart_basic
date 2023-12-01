import 'dart:math';

class Cleric {
  final maxHp = 50;
  final maxMp = 10;
  String name;
  int hp;
  int mp;

  Cleric(this.name, {this.hp = 50, this.mp = 10});

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
      print("$refillMp 회복하여 모든 MP가 회복되었다. MP: $mp");
    } else {
      print("$name 가 $refillMp 의 MP를 회복하였다.");
    }
    mp += refillMp;

    return refillMp;
  }
}

void main() {
  final cleric1 = Cleric('아서스',hp: 50, mp: 10);
  final cleric3 = Cleric('aaaa', hp: 30);
  // final cleric2 = Cleric();
}
