import 'asset.dart';

abstract class TangibleAsset extends Asset {

  String color;

  TangibleAsset(super.name, super.price, this.color);
}


// 12-2 가: Asset, 나: IntangibleAsset, 다: Patent