import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../datamodels/auth.dart';
import '../../../services/api/authentication.dart';
import '../home_form/home_viewmodel.dart';

class LoginViewModel extends GetxController {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  ApiLogin apiLogin = ApiLogin();
  LoginModel loginModel = LoginModel();

  loginFunc() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      var data = await apiLogin.loginApiFunction(
          user: userNameController.text, password: passwordController.text.toString());
      if (data != null) {
        String str = data.accessToken!;
        List<String> strarray = str.split(" ");
        String newStr = strarray[1];
        print(newStr);

        prefs.setString('token', newStr);
        prefs.setString('name', userNameController.text);
        prefs.setString('person_id', data.userId.toString());


        // Get.lazyPut<HomeViewModel>(() => HomeViewModel())  ;
        // Get.lazyPut<OrderFormViewModel>(() => OrderFormViewModel())  ;



        await Get.offAllNamed('/bottom');
      }
      print("__________ DATA :${data.toString()}");
    } catch (e) {
      Get.snackbar(
        "Error",
        "something went wrong",
        snackPosition: SnackPosition.BOTTOM,
      );

      print(e);
    }
  }







}
