import 'asset.dart';
import 'thing.dart';

abstract class TangibleAsset extends Asset implements Thing {

  String color;

  @override
  double weight;

  TangibleAsset(super.name, super.price, this.color, this.weight);




}


// 12-2 가: Asset, 나: IntangibleAsset, 다: Patent