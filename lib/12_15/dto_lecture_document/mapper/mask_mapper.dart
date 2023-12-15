import '../dto/mask_dto.dart';
import '../model/store.dart';

extension StoresToStore on Stores {
  Store toStore() {
    return Store(
      address: addr ?? '주소없음',
      name: name ?? '',
      stock: remainStat ?? '매진',
    );
  }
}
