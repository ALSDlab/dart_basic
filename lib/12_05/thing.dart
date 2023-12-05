abstract interface class Thing {
  final int _size;

  Thing({required int size}) : _size = size;

  int get size => _size;

  set size(int value) {
    size = value;
  }

  double weighting(int size);
}

