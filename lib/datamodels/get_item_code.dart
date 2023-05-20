/// success : true
/// data : [{"id":1,"created_at":"2022-07-20T04:52:11.000000Z","updated_at":"2022-07-20T04:52:11.000000Z","barcode":"612465","style_code":"1014-01","description":"POLO FIT PANT"},{"id":2,"created_at":"2022-07-20T04:52:11.000000Z","updated_at":"2022-07-20T04:52:11.000000Z","barcode":"612466","style_code":"1014-02","description":"POLO FIT PANT"}]

class GetItemCode {
  GetItemCode({
      bool? success, 
      List<Data>? data,}){
    _success = success;
    _data = data;
}

  GetItemCode.fromJson(dynamic json) {
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
GetItemCode copyWith({  bool? success,
  List<Data>? data,
}) => GetItemCode(  success: success ?? _success,
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
/// created_at : "2022-07-20T04:52:11.000000Z"
/// updated_at : "2022-07-20T04:52:11.000000Z"
/// barcode : "612465"
/// style_code : "1014-01"
/// description : "POLO FIT PANT"

class Data {
  Data({
      num? id, 
      String? createdAt, 
      String? updatedAt, 
      String? barcode, 
      String? styleCode, 
      String? description,}){
    _id = id;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _barcode = barcode;
    _styleCode = styleCode;
    _description = description;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _barcode = json['barcode'];
    _styleCode = json['style_code'];
    _description = json['description'];
  }
  num? _id;
  String? _createdAt;
  String? _updatedAt;
  String? _barcode;
  String? _styleCode;
  String? _description;
Data copyWith({  num? id,
  String? createdAt,
  String? updatedAt,
  String? barcode,
  String? styleCode,
  String? description,
}) => Data(  id: id ?? _id,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  barcode: barcode ?? _barcode,
  styleCode: styleCode ?? _styleCode,
  description: description ?? _description,
);
  num? get id => _id;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get barcode => _barcode;
  String? get styleCode => _styleCode;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['barcode'] = _barcode;
    map['style_code'] = _styleCode;
    map['description'] = _description;
    return map;
  }

}