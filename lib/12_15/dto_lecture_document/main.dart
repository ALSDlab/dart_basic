import 'data_source/mask_api.dart';
import 'mapper/mask_mapper.dart';

import 'model/store.dart';

void main() async {
  // Api 통신
  final api = MaskApi();

  //Json 을 Dto로
  final dto = await api.getMaskInfoResult();

  //Dto에서 필요한 내용을 mapper를 통해 모델 클래스로 변환
  List<Store> stores = dto.stores?.map((e) => e.toStore()).toList() ?? [];
  print(stores.toString());
}
