abstract interface class Thing {
  final double _weight;

  Thing({required double weight}) : _weight = weight;

  double get weight => _weight;

  set weight(double value) {
    weight = value;
  }
}
