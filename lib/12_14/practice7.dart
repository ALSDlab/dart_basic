import 'dart:convert';
import 'package:untitled/12_14/practice7_mask_location.dart';

import 'practice1_movie_infos.dart';
import 'package:http/http.dart' as http;

import 'practice2_movie_contents.dart';

// 7. 링크를 참고하여 마스크 정보를 읽어오고 적절한 모델 클래스를 작성하여 List 에 담고 출력
//    단, 불완전한 정보는 출력하지 않음(where를 사용할 것)
Future<StoreLists> getMaskInfo() async {
  // 요청
  final response = await http.get(Uri.parse('http://104.198.248.76:3000/mask'));
  return StoreLists.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
}

void main() async {
  List<dynamic> maskStores = [];
  final StoreLists storeLists = await getMaskInfo();
  for (int i = 0; i < storeLists.stores.length; i++) {
    maskStores.add(storeLists.stores[i].toJson());
  }
  print(maskStores);
}
