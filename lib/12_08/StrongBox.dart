class StrongBox<E> {
  E? _property;

  void put(E property) => _property = property;

  get property => _property;
}
