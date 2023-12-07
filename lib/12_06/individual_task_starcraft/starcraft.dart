abstract class Race {
  String _name;
  int _hp;

  Race({
    required String name,
    required int hp,
  })  : _name = name,
        _hp = hp;

  int get hp => _hp;

  set hp(int value) {
    _hp = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}

abstract interface class Movable {
  get name => null;
  void move();
}

abstract interface class GroupUnits {
  void grouping(Movable unit);
}

abstract interface class Bionic {}

abstract interface class Mechanic {}

abstract interface class Structure {}

abstract interface class Repairable {}

abstract class BionicUnit implements Bionic, Movable {
  @override
  void move() {}
}

abstract class MechanicUnit implements Mechanic, Movable {
  @override
  void move() {}
}

abstract class Terran extends Race implements GroupUnits {
  Terran({required super.name, required super.hp});

  static List<Movable> units = [];

  @override
  void grouping(unit) {
    if (unit is! Structure) {
      if (units.length < 12) {
        units.add(unit);
        print('${unit.name}이/가 그룹에 포함되었다.');
      } else {
        print('그룹이 가득차서 ${unit.name}이/가 포함되지 못했다.');
      }
    } else {
      print('건물은 그룹에 포함될 수 없습니다.');
    }
  }
}

class Marine extends Terran implements BionicUnit {
  Marine({required super.name, required super.hp});

  @override
  void move() {}
}

class Medic extends Terran implements BionicUnit {
  Medic({required super.name, required super.hp});

  void heal(BionicUnit bionicUnit) {}
  @override
  void move() {}
}

class Tank extends Terran implements MechanicUnit, Repairable {
  Tank({required super.name, required super.hp});
  @override
  void move() {}
}

class Vulture extends Terran implements MechanicUnit, Repairable {
  Vulture({required super.name, required super.hp});
  @override
  void move() {}
}

class SCV extends Terran implements BionicUnit, MechanicUnit, Repairable {
  SCV({required super.name, required super.hp});

  void repair(Repairable repairable) {
    
  }
  void mining() {}
  @override
  void move() {}
}

abstract class Zerg extends Race implements GroupUnits {
  Zerg({required super.name, required super.hp});

  void recover();

  static List<Movable> units = [];

  @override
  void grouping(unit) {
    if (unit is! Structure) {
      if (units.length < 12) {
        units.add(unit);
        print('${unit.name}이/가 그룹에 포함되었다.');
      } else {
        print('그룹이 가득차서 ${unit.name}이/가 포함되지 못했다.');
      }
    } else {
      print('건물은 그룹에 포함될 수 없습니다.');
    }
  }
}

class Drone extends Zerg implements BionicUnit {
  Drone({required super.name, required super.hp});

  @override
  void recover() {}
  @override
  void move() {}
}

class Hachery extends Zerg implements Structure {
  Hachery({required super.name, required super.hp});

  @override
  void recover() {}
}

abstract class Protoss extends Race implements GroupUnits {
  Protoss({required super.name, required super.hp});

  void recoverShield();

  static List<Movable> units = [];

  @override
  void grouping(unit) {
    if (unit is! Structure) {
      if (units.length < 12) {
        units.add(unit);
        print('${unit.name}이/가 그룹에 포함되었다.');
      } else {
        print('그룹이 가득차서 ${unit.name}이/가 포함되지 못했다.');
      }
    } else {
      print('건물은 그룹에 포함될 수 없습니다.');
    }
  }
}

class Zealot extends Protoss implements BionicUnit {
  Zealot({required super.name, required super.hp});

  @override
  void recoverShield() {}
  @override
  void move() {}
}

class Dragun extends Protoss implements MechanicUnit {
  Dragun({required super.name, required super.hp});

  @override
  void recoverShield() {}
  @override
  void move() {}
}

void main() {
  final scv = SCV(name: 'SCV1', hp: 50);
  final marine = Marine(name: '마린', hp: 75);
  final tank = Tank(name: '시즈탱크', hp: 150);
  final zealot = Zealot(name: '질럿', hp: 75);
  final dragun = Dragun(name: '드라군', hp: 120);
  final medic = Medic(name: '메딕', hp: 50);
  final drone = Drone(name: '드론', hp: 40);
  final hachery = Hachery(name: '해처리', hp: 1000);

  scv.grouping(scv);
  marine.grouping(marine);
  tank.grouping(tank);
  zealot.grouping(zealot);
  // scv.repair(dragun);
  // hachery.grouping(hachery);
  // medic.heal(drone);
  // medic.heal(hachery);
}
