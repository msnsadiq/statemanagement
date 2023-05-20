/// token_type : "bearer"
/// validate : "3Xs01VR0j5qCuDlM7K8r6JaZrW09CpHqtPgHSqZjFtks73MOVMGIEgp"
/// expires_in : 0
/// access_token : "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva2FhbHkuZDVuLmluXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjg0MTQyMTM4LCJuYmYiOjE2ODQxNDIxMzgsImp0aSI6IlJxVGYwMGRCdVhHSW9VTkUiLCJzdWIiOjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.w35Z3fJ7jfYARB9lITpgxw-jbZTPb-XaVaTeDLDtKSo"
/// user_id : 2
/// user_name : "ben"

class LoginModel {
  LoginModel({
      String? tokenType, 
      String? validate, 
      num? expiresIn, 
      String? accessToken, 
      num? userId, 
      String? userName,}){
    _tokenType = tokenType;
    _validate = validate;
    _expiresIn = expiresIn;
    _accessToken = accessToken;
    _userId = userId;
    _userName = userName;
}

  LoginModel.fromJson(dynamic json) {
    _tokenType = json['token_type'];
    _validate = json['validate'];
    _expiresIn = json['expires_in'];
    _accessToken = json['access_token'];
    _userId = json['user_id'];
    _userName = json['user_name'];
  }
  String? _tokenType;
  String? _validate;
  num? _expiresIn;
  String? _accessToken;
  num? _userId;
  String? _userName;
LoginModel copyWith({  String? tokenType,
  String? validate,
  num? expiresIn,
  String? accessToken,
  num? userId,
  String? userName,
}) => LoginModel(  tokenType: tokenType ?? _tokenType,
  validate: validate ?? _validate,
  expiresIn: expiresIn ?? _expiresIn,
  accessToken: accessToken ?? _accessToken,
  userId: userId ?? _userId,
  userName: userName ?? _userName,
);
  String? get tokenType => _tokenType;
  String? get validate => _validate;
  num? get expiresIn => _expiresIn;
  String? get accessToken => _accessToken;
  num? get userId => _userId;
  String? get userName => _userName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token_type'] = _tokenType;
    map['validate'] = _validate;
    map['expires_in'] = _expiresIn;
    map['access_token'] = _accessToken;
    map['user_id'] = _userId;
    map['user_name'] = _userName;
    return map;
  }

}