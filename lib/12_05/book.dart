import 'tangible_asset.dart';

class Book extends TangibleAsset {
  String isbn;
  @override
  int size;

  Book(
      super.name, super.price, super.color, super.weight, this.size, this.isbn);
}
