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

abstract interface class Structure {}

abstract interface class Movable {
  get name => null;
}

abstract interface class GroupUnits implements Movable {
  void grouping(Movable unit);
}

abstract interface class Bionic {}

abstract interface class Mechanic {}

abstract class BionicUnit implements Bionic, Movable {}

abstract class MechanicUnit implements Mechanic, Movable {}

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
}

class Medic extends Terran implements BionicUnit {
  Medic({required super.name, required super.hp});

  void heal(BionicUnit bionicUnit) {}
}

class Tank extends Terran implements MechanicUnit {
  Tank({required super.name, required super.hp});
}

class Vulture extends Terran implements MechanicUnit {
  Vulture({required super.name, required super.hp});
}

class SCV extends Terran implements BionicUnit, MechanicUnit {
  SCV({required super.name, required super.hp});

  void repair(MechanicUnit mechanicUnit) {}

  void mining() {}
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
}

class Dragun extends Protoss implements MechanicUnit {
  Dragun({required super.name, required super.hp});

  @override
  void recoverShield() {}
}

void main() {
  final scv = SCV(name: 'SCV1', hp: 50);
  final marine = Marine(name: '마린', hp: 75);
  final tank = Tank(name: '시즈탱크', hp: 150);
  final zealot = Zealot(name: '질럿', hp: 75);
  final medic = Medic(name: '메딕', hp: 50);
  final drone = Drone(name: '드론', hp: 40);
  final hachery = Hachery(name: '해처리', hp: 1000);

  scv.grouping(scv);
  marine.grouping(marine);
  tank.grouping(tank);
  zealot.grouping(zealot);
  hachery.grouping(hachery);
  // medic.heal(drone);
  // medic.heal(hachery);
}
