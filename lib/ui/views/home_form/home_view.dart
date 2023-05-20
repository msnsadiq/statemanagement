import 'package:flutter/material.dart';
import 'package:get/get.dart';



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
appBar: AppBar(
  leading: TextButton(onPressed: (){
    print("${model.listCountryModelClass.data?.length ?? 0}");
  }, child: Text("tap",style: TextStyle(color: Colors.black),)),
),
        backgroundColor: Colors.white,
      body:
      model.loading.value ? Center(
        child: CircularProgressIndicator(),
      ) :



      ListView.builder(
        itemCount: model.listCountryModelClass.data?.length ?? 0,
        //  itemCount: model.listCountryModelClass.data!.length,
          itemBuilder: (ctx,index){
            return ListTile(
              title: Text(model.listCountryModelClass.data?[index].countryName.toString() ?? "" ,style: TextStyle(color: Colors.black),),
              subtitle: Text(model.listCountryModelClass.data?[index].countryCode.toString() ?? "" ),
            );

          }));
    });
  }


}
