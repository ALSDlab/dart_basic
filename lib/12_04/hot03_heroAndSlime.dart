import 'dart:io';

class Hero {
  static int health = 100;
  int power = 10;
  static int defense = 1;

  Hero();

  void introduce() {
    print('Hero - Health: $health, Attack: $power, Defense: $defense');
  }

  void attack() {
    int realDamage = power - Slime.defense;
    Slime.health -= realDamage;
    print('Hero attacks the Slime! Slime takes $realDamage damage.');
  }
}

class Slime {
  static int health = 10;
  int power = 10;
  static int defense = 5;

  Slime();

  void introduce() {
    print('Slime - Health: $health, Attack: $power, Defense: $defense');
  }

  void attack() {
    int realDamage = power - Hero.defense;
    Hero.health -= realDamage;
    print('Slime attacks! Hero takes $realDamage damage.');
  }
}

void main() {
  final hero = Hero();
  final slime = Slime();

  print('Hero VS Slime\n');

  while (Slime.health > 0) {
    hero.introduce();
    slime.introduce();
    slime.attack();
    hero.attack();
    print('\n');
    if (Slime.health <= 0) {
      print('Slime is defeated! Hero wins!');
      break;
    }
  }
}
