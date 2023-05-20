import 'package:get/get.dart';
import 'package:statemanagement/ui/views/splash/splash_viewmodel.dart';


import '../home_form/home_viewmodel.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<SplashViewModel>(SplashViewModel());

   // Get.put<HomeViewModel>(HomeViewModel());
   //  Get.put<OrderFormViewModel>(OrderFormViewModel());
   //  Get.put<BottomViewModel>(BottomViewModel());


    //Get.lazyPut<SplashViewModel>(() => SplashViewModel());
    //Get.lazyPut<HomeViewModel>(() => HomeViewModel());
    //Get.lazyPut<OrderFormViewModel>(() => OrderFormViewModel());

  }
}
