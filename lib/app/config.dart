import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Config {
  static const Locale ENGLISH = Locale('english');
  static bool get isEnglish => Get.locale == ENGLISH;
  static TextDirection get textDirection => isEnglish ? TextDirection.ltr : TextDirection.rtl;

}
const int kPhoneNoMinLength = 9;
const int kPhoneNoMaxLength = 10;
const String endpoint = '';

  var homeFormSend = true.obs;
//var isButtonPressed = false.obs;


