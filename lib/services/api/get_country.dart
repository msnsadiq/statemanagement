import 'dart:convert';

import 'package:http/http.dart';
import 'package:statemanagement/datamodels/CountryList.dart';

import '../../datamodels/auth.dart';
import '../repository/api_client.dart';

class ApiCountry {
  ApiClient apiClient = ApiClient();
  final String loginPath = "countries/countries/";
  Future<ListCountryModelClass> CountryApiFunction(
      ) async {


    Response response =
    await apiClient.invokeAPI(path: loginPath, method: "GET", body: null);

    return ListCountryModelClass.fromJson(json.decode(response.body));
  }
}


