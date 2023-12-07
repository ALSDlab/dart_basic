class Book implements Comparable<Book> {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.publishDate,
    required this.comment,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  Book copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book(
      title: title ?? this.title,
      publishDate: publishDate ?? this.publishDate,
      comment: comment ?? this.comment,
    );
  }

  @override
  int compareTo(Book other) {
    final dateCompare = publishDate.compareTo(other.publishDate);
    return dateCompare;
  }

  @override
  String toString() {
    return 'Book{title: $title, publishDate: $publishDate}';
  }
}

void main() {
  final Book book1 = Book(
    title: '오준석생존코딩',
    publishDate: DateTime.utc(2023, 12, 07),
    comment: 'Bestseller1',
  );
  final Book book2 = Book(
    title: '오준석생존코딩',
    publishDate: DateTime.utc(2023, 12, 07),
    comment: '',
  );
  final Book book3 = Book(
    title: '오름캠프',
    publishDate: DateTime.utc(2023, 05, 01),
    comment: 'Bestseller2',
  );
  final Book book4 = Book(
    title: '모두의연구소',
    publishDate: DateTime.utc(2023, 01, 01),
    comment: 'Bestseller3',
  );

  print(book1 == book2); // true
  final books1 = <Book>{
    book1,
    book2,
    book3,
    book4
  }; // set 내에서 동일객체 (book1, book2)
  print(books1);

  final List<Book> books2 = [book1, book2, book3, book4];

  books2.sort();

  print(books2); // 출간일이 빠른 순서대로 출력

  final book5 = book4;              // book5 = book4 와 비교
  final book6 = book4.copyWith();
  final book7 = book4.copyWith(title: '생존코딩2');   // Deep copy (book4를 book7로 title 변경하고 딥 복사)

  print(book1.hashCode);
  print(book2.hashCode);
  print(book3.hashCode);
  print(book4.hashCode);
  print(book5.hashCode);
  print(book6.hashCode);
  print(book7.hashCode);
  print(book4 == book5);
  print(book4 == book6);
  print(book4 == book7);
  print(book4);
  print(book5);
  print(book6);
  print(book7);


}
