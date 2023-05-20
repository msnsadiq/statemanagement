import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../app/asset.dart';
import 'login_viewmodel.dart';


class LoginView extends GetView<LoginViewModel> {
  final model = Get.put(LoginViewModel());

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginViewModel>(builder: (_) {
      return SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.only(
              left: Get.width * 0.125, right: Get.width * 0.125),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xff7587DF).withOpacity(0.28),
                      const Color(0xffffffff).withOpacity(0.10),
                    ],
                  ),
                ),
              ),

              buildTextField("Username", model.userNameController),
              SizedBox(
                height: Get.height * 0.02,
              ),
              buildTextField("Password", model.passwordController),
              SizedBox(
                height: Get.height * 0.035,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.3,
                    vertical: 10,
                  ),
                ),

                // onPressed: () => controller.login(),

                onPressed: () {
                  model.loginFunc();
                },
                // onPressed: () => controller.login(),
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
    });
  }

  buildTextField(String hintText, TextEditingController textController,
      {bool isPasswordTextField = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            hintText,
            style: const TextStyle(
              color: Color(0xff2B2B2B),
              fontSize: 14,
              height: 1.5,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: Get.height * 0.08,
          child: TextFormField(
            controller: textController,
            obscureText: isPasswordTextField,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              fillColor: const Color(0xffF1F1F1),
              filled: true,
              hintText: hintText,
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  fontSize: 13,
                  color: Colors.grey),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
