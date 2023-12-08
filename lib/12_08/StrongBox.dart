enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E> {
  E? _key;

  void put(E key) => _key = key;

  KeyType? get() {
    switch (_key) {
      case 1024:
        return KeyType.padlock;
        break;
      case 10000:
        return KeyType.button;
        break;
      case 30000:
        return KeyType.dial;
        break;
      case 1000000:
        return KeyType.finger;
        break;
      default:
        return null;
        break;
    }
  }
}

void main() {
  StrongBox<int> strongBox = StrongBox();

  for (int i = 1; i <= 30000; i++) {
    strongBox.put(i);
    print('횟수: $i, 타입: ${strongBox.get()}');
  }
}
