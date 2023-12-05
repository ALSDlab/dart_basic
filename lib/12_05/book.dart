import 'tangibleAsset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book(super.name, super.price, super.color, super.weight, this.isbn);
}