import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/ui/views/splash/splash_viewmodel.dart';

import '../../shared_widgets/dot_loader.dart';


class SplashView extends GetView<SplashViewModel> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 24,
          ),
          const DotLoader()
        ],
      ),
    );
  }
}
