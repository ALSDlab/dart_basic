import 'Cleric.dart';
import 'hero.dart';

void main(){
  final hero = Hero('슈퍼맨', 10);
  final cleric = Cleric('성직자',50, 10);

}


class Car{
  List<Door> doors = [];
  List<Wheel> wheels = [];
  String color = 'red';
  String number = '12가1234';
  double speed = 0.0;
  bool isStarting = false;

  void start(){
    isStarting = true;
  }
  void drive(){}
}

class Wheel{

}

class Door{


}