import 'package:get/get.dart';

import '../ui/views/home_form/home_binding.dart';
import '../ui/views/home_form/home_view.dart';
import '../ui/views/login/login_binding.dart';
import '../ui/views/login/login_view.dart';

import '../ui/views/splash/splash_binding.dart';
import '../ui/views/splash/splash_view.dart';

final getPages = [
  GetPage(name: '/login', page: () => LoginView(), binding: LoginBinding()),

  GetPage(name: '/', page: () => const SplashView(), binding: SplashBinding()),

  /// GetPage(name: '/', page: ()=> TestingView(),binding: TestingBinding()),
  GetPage(name: '/home' , page: () => HomeView(), binding: HomeBinding()),
];
