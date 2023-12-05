import 'tangibleAsset.dart';

class Computer extends TangibleAsset {
  String makerName;
  @override
  int size;

  Computer(super.name, super.price, super.color, super.weight, this.size,
      this.makerName);
}
