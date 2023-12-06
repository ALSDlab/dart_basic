import 'asset.dart';
import 'thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;
  double _weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }

  TangibleAsset({
    required super.name,
    required super.price,
    required this.color,
    required double weight,
  }): _weight = weight;
}

// 12-2 가: Asset, 나: IntangibleAsset, 다: Patent
