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


