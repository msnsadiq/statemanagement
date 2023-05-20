import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:voyage/ApiSection/Repository/api_exception.dart';

import 'api_exception.dart';

class ApiClient {
  static final String basePath = 'https://www.api.viknbooks.com/api/v10/';
  // String tokenn =
  //     "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm1vYl9ubyI6IiIsImVtYWlsIjoiYWRtaW5AaWNhcnQuY29tIiwiaWF0IjoxNjY4NDkxMzkzLCJleHAiOjE2Njg1Nzc3OTN9.2epm3JzYgK-j1ggmgg8wt3gEQKRf0YOmwQARJXhiDgQ";
  Future<Response> invokeAPI(
      {required String path,
      required String method,
      required Object? body}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzA4NjY5MDYxLCJpYXQiOjE2NzcxMzMwNjEsImp0aSI6IjhhNDk5NTM0MDZmYzRlOWVhMDc5YTkxYzg0OTljMzMyIiwidXNlcl9pZCI6MzMyfQ.JcIY40Yn742qoizMym9bUgGGRGpkg3fqH8wpYCyFTjnaokkopc85mz-j4evkdKgB1P6r3Va4WzpZF4Qv9u0MHpkxXuwR9ASL3NtgRTJCc9jTaKv7cJUur9s_n_7OIYMZY7sWcbkCNuyrOfPPRGrQPPCyKv6ux9g0BsTYPg0LnPBsoi4v1PiRVZY7daabKNfdc5ptxXF8s-iaIbTHCF-aYp9hBKf0k5AQJvQ5MHIi84a9ZTqHhQqISC1gSjluBdh5dzZ5zTWlIbm3N3A_m-n0WGs4juddV9_XKZWUxLnBBek794hLnzaGFczofvaipPuTUpUUH44fg35yI1PGr31KOrGpKd10sz8T4w9rBUwSuCoKZ-1jY1S3lBliuTO0_AH0O3XaEXoiYqCMnHNWOgLjtuZi1JQ_2UAMHthB40EF1IuHoyzeclyoxMgxC8-UVlom_pjtEAbgnXN68KCK2zteKYwTeA6iK_YeUZCfZbN-kDBOTUpb-bBVwHaXNDkn4ylu8iYSpxnuSvUiK5ItXoDODuZ9_elV3wt-0igHSuthFZIM8vjxEUpCAyELg3Jc-rd5bsZrn4UH4O9Lgekf_wDyd2EUdc1HmD2wgZm0-_QVGcLzgb4yVLXK3bw91T99dBvmSDNF2eQjKq7AX9q2EIAB0uqvhPjsrv1YM0nNEQEySM0 ";
    // print(prefs.getString('token'));
    print("Invoke Api worked");
    print(method);

    Map<String, String> headerParams = {};
    if (method == 'POST' || method == 'GET' || method == 'PATCH') {
      print("Methode POST OR GET");
      headerParams = {
        "authorization": "Bearer $token",
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      };
    }
    Response response;

    String url = basePath + path;
    // String searchurl =  basePath + 'search/movie'+'?api_key=$token'+ path;
    print('========================================' + url);

    // print(searchurl);
    final nullableHeaderParams = (headerParams.isEmpty) ? null : headerParams;

    switch (method) {
      case "POST":
        response = await post(Uri.parse(url),
            headers: headerParams, body: jsonEncode(body));
        break;
      case "LOGIN":
        response =
            await post(Uri.parse(url), headers: headerParams, body: body);
        break;
      case "PUT":
        response = await put(Uri.parse(url), headers: headerParams, body: body);
        break;
      case "PATCH":
        response = await patch(Uri.parse(url),
            headers: headerParams, body: jsonEncode(body));
        break;
      case "DELETE":
        response = await delete(Uri.parse(url), headers: nullableHeaderParams);
        break;
      case "POST_":
        response = await post(
          Uri.parse(url),
          headers: headerParams,
          body: body,
        );
        break;
      case "GET_":
        response = await post(
          Uri.parse(url),
          headers: headerParams,
          body: body,
        );
        break;

      default:
        response = await get(Uri.parse(url), headers: headerParams);
    }

    print('status of $path =>' + (response.statusCode).toString());
    print(response.body);
    if (response.statusCode >= 400) {
      // print("if)()");
      log(path +
          ' : ' +
          response.statusCode.toString() +
          ' : ' +
          response.body);

      throw ApiException(
          message: _decodeBodyBytes(response), statusCode: response.statusCode);
    }
    ;
    return response;
  }

  String _decodeBodyBytes(Response response) {
    var contentType = response.headers['content-type'];
    if (contentType != null && contentType.contains("application/json")) {
      return jsonDecode(response.body)['message'];
    } else {
      return response.body;
    }
  }
}
