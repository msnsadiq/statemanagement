/// id : "unique_id_value_12"
/// mobile : "1234567890"
/// address : "test address"
/// person_name : "test name"
/// gst_number : "ABC1234DCRRF23"
/// note : "test note"
/// shop_details : {"id":858,"name":"Testing"}
/// products : [{"product_id":10,"product_barcode":"612474","style_code":"1014-01","quantity":1},{"product_id":9,"product_barcode":"612473","style_code":"1014-09","quantity":3}]

class ModelClassBody {
  ModelClassBody({
    String? id,
    String? mobile,
    String? address,
    String? personName,
    String? gstNumber,
    String? note,
    ShopDetails? shopDetails,
    List<Products>? products,}){
    _id = id;
    _mobile = mobile;
    _address = address;
    _personName = personName;
    _gstNumber = gstNumber;
    _note = note;
    _shopDetails = shopDetails;
    _products = products;
  }

  ModelClassBody.fromJson(dynamic json) {
    _id = json['id'];
    _mobile = json['mobile'];
    _address = json['address'];
    _personName = json['person_name'];
    _gstNumber = json['gst_number'];
    _note = json['note'];
    _shopDetails = json['shop_details'] != null ? ShopDetails.fromJson(json['shop_details']) : null;
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
  }
  String? _id;
  String? _mobile;
  String? _address;
  String? _personName;
  String? _gstNumber;
  String? _note;
  ShopDetails? _shopDetails;
  List<Products>? _products;
  ModelClassBody copyWith({  String? id,
    String? mobile,
    String? address,
    String? personName,
    String? gstNumber,
    String? note,
    ShopDetails? shopDetails,
    List<Products>? products,
  }) => ModelClassBody(  id: id ?? _id,
    mobile: mobile ?? _mobile,
    address: address ?? _address,
    personName: personName ?? _personName,
    gstNumber: gstNumber ?? _gstNumber,
    note: note ?? _note,
    shopDetails: shopDetails ?? _shopDetails,
    products: products ?? _products,
  );
  String? get id => _id;
  String? get mobile => _mobile;
  String? get address => _address;
  String? get personName => _personName;
  String? get gstNumber => _gstNumber;
  String? get note => _note;
  ShopDetails? get shopDetails => _shopDetails;
  List<Products>? get products => _products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['mobile'] = _mobile;
    map['address'] = _address;
    map['person_name'] = _personName;
    map['gst_number'] = _gstNumber;
    map['note'] = _note;
    if (_shopDetails != null) {
      map['shop_details'] = _shopDetails?.toJson();
    }
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// product_id : 10
/// product_barcode : "612474"
/// style_code : "1014-01"
/// quantity : 1







class Products {
  Products({
    num? productId,
    String? productBarcode,
    String? styleCode,
    num? quantity,}){
    _productId = productId;
    _productBarcode = productBarcode;
    _styleCode = styleCode;
    _quantity = quantity;
  }

  Products.fromJson(dynamic json) {
    _productId = json['product_id'];
    _productBarcode = json['product_barcode'];
    _styleCode = json['style_code'];
    _quantity = json['quantity'];
  }
  num? _productId;
  String? _productBarcode;
  String? _styleCode;
  num? _quantity;
  Products copyWith({  num? productId,
    String? productBarcode,
    String? styleCode,
    num? quantity,
  }) => Products(  productId: productId ?? _productId,
    productBarcode: productBarcode ?? _productBarcode,
    styleCode: styleCode ?? _styleCode,
    quantity: quantity ?? _quantity,
  );
  num? get productId => _productId;
  String? get productBarcode => _productBarcode;
  String? get styleCode => _styleCode;
  num? get quantity => _quantity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_id'] = _productId;
    map['product_barcode'] = _productBarcode;
    map['style_code'] = _styleCode;
    map['quantity'] = _quantity;
    return map;
  }

}





/// id : 858
/// name : "Testing"

class ShopDetails {
  ShopDetails({
    num? id,
    String? name,}){
    _id = id;
    _name = name;
  }

  ShopDetails.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  num? _id;
  String? _name;
  ShopDetails copyWith({  num? id,
    String? name,
  }) => ShopDetails(  id: id ?? _id,
    name: name ?? _name,
  );
  num? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

}