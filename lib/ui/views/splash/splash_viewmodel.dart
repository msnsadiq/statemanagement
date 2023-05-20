import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashViewModel extends GetxController {
  SplashViewModel();

  Future<void> delayOfScreen() async {
    await Future.delayed(const Duration(seconds: 4));
  //  Get.find<HomeViewModel>();
  //  Get.find<OrderFormViewModel>();
  await  checkLogin();
  }


  checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('token') != null) {
      await Get.offAllNamed('/bottom');
    } else {
      await Get.offAllNamed('/login');
    }
  }


  @override
  void onInit() async {
    delayOfScreen();

    super.onInit();

  }
}
