import 'dart:convert';
import 'dart:io';

// TypeError type 'Null' is not a subtype of type 'String'

void main() {
  final String json = '''{
 "collectionChartDataList": [
 {
 "collectionName": "collectionName",
 "collectionSalePrice": null
 },
 {
 "collectionName": "collectionName",
 "collectionSalePrice": [
 {
 "price": 59.75,
 "cvtDatetime": "2023-03-26T08:08:35"
 },
 {
 "price": 60.00,
 "cvtDatetime": "2023-03-26T08:08:45"
 }
 ]
 }
 ]
}''';

  DataList list = DataList.fromJson(jsonDecode(json));

  print(list.toJson().toString());
}

class CollectionSalePrice {
  int price;
  String cvtDatetime;

  CollectionSalePrice({
    required this.price,
    required this.cvtDatetime,
  });

  Map<String, dynamic> toJson() {
    return {
      'price': price,
      'cvtDatetime': cvtDatetime,
    };
  }

  factory CollectionSalePrice.fromJson(Map<String, dynamic> map) {
    return CollectionSalePrice(
      price: map['price'],
      cvtDatetime: map['cvtDatetime'],
    );
  }
}

class CollectionItem<List> {
  String collectionName;
  CollectionSalePrice collectionSalePrice;

  CollectionItem({
    required this.collectionName,
    required this.collectionSalePrice,
  });

  Map<String, dynamic> toJson() {
    return {
      'collectionName': collectionName,
      'collectionSalePrice': collectionSalePrice,
    };
  }

  factory CollectionItem.fromJson(Map<String, dynamic> map) {
    return CollectionItem(
      collectionName: map['collectionName'],
      collectionSalePrice: map['collectionSalePrice'],
    );
  }
}

class DataList {
  List collectionChartDataList;

  DataList({
    required this.collectionChartDataList,
  });

  Map<String, dynamic> toJson() {
    return {
      'collectionChartDataList': collectionChartDataList,
    };
  }

  factory DataList.fromJson(Map<String, dynamic> map) {
    return DataList(
      collectionChartDataList: map['collectionChartDataList'],
    );
  }
}
