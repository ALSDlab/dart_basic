class LocationInfo {
  String addr;
  String code;
  String? created_at;
  double lat;
  double lng;
  String name;
  String? remain_stat;
  String? stock_at;
  String type;

  LocationInfo({
    required this.addr,
    required this.code,
    required this.created_at,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remain_stat,
    required this.stock_at,
    required this.type,
  });

  Map<String, dynamic> toJson() {
    return {
      'addr': addr,
      'code': code,
      'created_at': created_at,
      'lat': lat,
      'lng': lng,
      'name': name,
      'remain_stat': remain_stat,
      'stock_at': stock_at,
      'type': type,
    };
  }

  factory LocationInfo.fromJson(Map<String, dynamic> map) {
    return LocationInfo(
      addr: map['addr'],
      code: map['code'],
      created_at: map['created_at'],
      lat: map['lat'],
      lng: map['lng'],
      name: map['name'],
      remain_stat: map['remain_stat'],
      stock_at: map['stock_at'],
      type: map['type'],
    );
  }
}

class StoreLists {
  int count;
  List<LocationInfo> stores;

  StoreLists({
    required this.count,
    required this.stores,
  });

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'stores': stores.map((e) => e.toJson()),
    };
  }

  factory StoreLists.fromJson(Map<String, dynamic> map) {
    return StoreLists(
        count: map['count'],
        stores: List<LocationInfo>.from(
            map['stores'].map((e) => LocationInfo.fromJson(e))));
  }
}
