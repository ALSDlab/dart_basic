import 'tangibleAsset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book(super.name, super.price, super.color, this.isbn);
}