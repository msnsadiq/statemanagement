import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:statemanagement/services/api/get_country.dart';

import '../../../app/config.dart';
import '../../../datamodels/CountryList.dart';
import '../../../datamodels/get_shop_name.dart';

class HomeViewModel extends GetxController {
  var loading = false.obs;

  ApiCountry apiCountry = ApiCountry();
  ListCountryModelClass listCountryModelClass = ListCountryModelClass();

  getCountry() async {
    try {
      loading.value = true;
      listCountryModelClass = await apiCountry.CountryApiFunction();
      loading.value = false;
      update();
    } on SocketException catch (e) {
      print("SOCKET EXCEPTION $e");

      Get.snackbar(
          "No internet Access!", "Please check your internet settings");
    }
  }

  @override
  void onInit() {
    getCountry();

    super.onInit();
  }
}
