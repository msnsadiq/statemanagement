import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:statemanagement/theme/shared/colors.dart';
import 'package:statemanagement/ui/views/home_form/home_binding.dart';
import 'package:statemanagement/ui/views/splash/splash_binding.dart';

import 'app/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Kaaly',
      theme: appTheme,
      initialRoute: '/home',
      getPages: getPages,
    );
  }
}
