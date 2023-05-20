import 'dart:convert';

import 'package:http/http.dart';

import '../../datamodels/auth.dart';
import '../repository/api_client.dart';

class ApiLogin {
  ApiClient apiClient = ApiClient();
  final String loginPath = "api/login";
  Future<LoginModel> loginApiFunction(
      {required user, required password}) async {
    final body = {
      "username": user,
      "password": password,
    };

    Response response =
        await apiClient.invokeAPI(path: loginPath, method: "POST", body: body);

    return LoginModel.fromJson(json.decode(response.body));
  }
}

//
//
// import 'dart:convert';
//
// import 'package:http/http.dart';
// import 'package:kaaly/db/products_db.dart';
//
// import 'package:kaaly/services/repository/api_client.dart';
//
// import '../../datamodels/get_item_code.dart';
//
// class ApiItemCode {
//   ApiClient apiClient = ApiClient();
//   final String getItemCodePath = 'api/get-products';
//   Future<GetItemCode> getItemCodeFunction()async{
//     Response  response = await apiClient.invokeAPI(path: getItemCodePath, method: "GET", body: null);
//     // print("RESPONSE PRODUCT CODE :${ jsonDecode(response.body)["data"] }");
//     writeProductData(jsonDecode(response.body)["data"]);
//     return GetItemCode.fromJson(json.decode(response.body));
//   }
// }
