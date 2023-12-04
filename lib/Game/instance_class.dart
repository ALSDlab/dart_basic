import 'package:untitled/11_28/variables2.dart';

import 'Cleric.dart';
import 'hero.dart';
import 'sword.dart';
import 'wand.dart';
import 'wizard.dart';

void main(){
  final sword = Sword(name: '불꽃의 검', damage: 5);
  final hero1 = Hero(name: '슈퍼맨', hp: 100);
  final hero2 = Hero(name: '배트맨', hp: 100);
  final cleric = Cleric('성직자', hp: 50, mp: 10);
  final wand = Wand(name: '완드', power: 30.0);
  final wizard = Wizard(wand, hp: 50, name: '마법사', mp: 20);

  hero1.sword = sword;

  wizard.heal(hero1);
  wizard.heal(hero2);

  cleric.selfAid();
  cleric.selfAid();
  cleric.selfAid();
  cleric.pray(2);
  cleric.pray(3);
  cleric.pray(1);
  cleric.pray(3);

}


// class Car{
//   List<Door> doors = [];
//   List<Wheel> wheels = [];
//   String color = 'red';
//   String number = '12가1234';
//   double speed = 0.0;
//   bool isStarting = false;
//
//   void start(){
//     isStarting = true;
//   }
//   void drive(){}
// }
//
// class Wheel{
//
// }
//
// class Door{


