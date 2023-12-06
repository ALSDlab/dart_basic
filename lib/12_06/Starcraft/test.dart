import 'Terran/scv.dart';
import 'Zerg/drone.dart';

void main() {
  final scv = SCV(name: 'SCV', hp: 10, damage: 5);

  final drone = Drone(name: 'Drone', hp: 10, damage: 5);

  print(drone);
  scv.attack(drone);
  print(drone);
}
