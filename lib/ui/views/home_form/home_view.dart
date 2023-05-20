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

      return Scaffold(

        backgroundColor: Colors.white,
      body:  Expanded(
        child: ListView.builder(
            itemCount: model.listCountryModelClass.data!.length,
            itemBuilder: (ctx,index){
              return ListTile(
                title: Text(model.listCountryModelClass.data?[index].countryName.toString() ?? "" ,style: TextStyle(color: Colors.black),),
                subtitle: Text(model.listCountryModelClass.data?[index].countryCode.toString() ?? "" ),
              );

            }),
      ));
    });
  }


}
