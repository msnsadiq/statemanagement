import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:shared_preferences/shared_preferences.dart';

import '../../shared_widgets/form_title.dart';
import 'home_viewmodel.dart';

class HomeView extends GetView<HomeViewModel> {
  final model = Get.put(HomeViewModel());
  final HomeViewModel myController = Get.find<HomeViewModel>();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return GetBuilder<HomeViewModel>(builder: (_) {
      return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
              top: mHeight * .03, left: mWidth * .03, right: mWidth * .03),
          child: WillPopScope(
            onWillPop: () async {
              //  model.keyForm.currentState!.reset();
              return true;
            },
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                ],
              ),
            ),
          ),
        ),
      );
    });
  }


}
