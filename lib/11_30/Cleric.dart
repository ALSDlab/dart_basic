import 'dart:math';

class Cleric{
  String name;
  int hp;
  final maxHp = 50;
  int mp;
  final maxMp = 10;

  Cleric(this.name, this.hp, this.mp);


  void selfAid(){
    if (mp<5){
      print('MP가 부족합니다. 남은 MP: $mp');
    }else{
      mp -= 5;
      hp = maxHp;
      print('$name 가 HP를 회복하였다. 남은 MP: $mp');
    }
  }

  pray(int prayTime){
    int refillMp = Random().nextInt(3) + prayTime;
    if (mp + refillMp >= maxMp){
      var refillMp = maxMp - mp;
      mp += refillMp;
      print("$refillMp 회복하여 모든 MP가 회복되었다. MP: $mp");
    } else {
      mp += refillMp;
      print("$name 가 $refillMp 의 MP를 회복하였다.");
    }

    return refillMp;
  }

}