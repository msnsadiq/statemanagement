/// success : true
/// data : [{"id":1,"name":"4 M PUTHANATHANI","created_at":"2022-07-20T04:50:39.000000Z","updated_at":"2022-07-20T04:50:39.000000Z","status":1},null]

class GetShopName {
  GetShopName({
      bool? success, 
      List<Data>? data,}){
    _success = success;
    _data = data;
}

  GetShopName.fromJson(dynamic json) {
    _success = json['success'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _success;
  List<Data>? _data;
GetShopName copyWith({  bool? success,
  List<Data>? data,
}) => GetShopName(  success: success ?? _success,
  data: data ?? _data,
);
  bool? get success => _success;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// name : "4 M PUTHANATHANI"
/// created_at : "2022-07-20T04:50:39.000000Z"
/// updated_at : "2022-07-20T04:50:39.000000Z"
/// status : 1

class Data {
  Data({
      num? id, 
      String? name, 
      String? createdAt, 
      String? updatedAt, 
      num? status,}){
    _id = id;
    _name = name;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _status = status;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _status = json['status'];
  }
  num? _id;
  String? _name;
  String? _createdAt;
  String? _updatedAt;
  num? _status;
Data copyWith({  num? id,
  String? name,
  String? createdAt,
  String? updatedAt,
  num? status,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  status: status ?? _status,
);
  num? get id => _id;
  String? get name => _name;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['status'] = _status;
    return map;
  }

}