class Wand {
  final String _name; // 이름
  final double _power;

  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power;

  String get name => _name;

  double get power => _power;

  set name(String value) {
    if (value.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    }
  }

  set power(double value) {
    if (0.5 > value) {
      throw Exception('마력이 너무 작습니다.');
    } else if (value > 100.0) {
      throw Exception('마력이 너무 큽니다.');
    }
  }
}
