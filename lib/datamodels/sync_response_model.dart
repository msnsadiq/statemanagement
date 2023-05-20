class SynResponseModel {
  SynResponseModel({
    this.message,});

  SynResponseModel.fromJson(dynamic json) {
    message = json['message'];
  }
  String? message; // add "?" after the type declaration to allow null values

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    return map;
  }
}
