import 'package:flutter/material.dart';

import '../../theme/shared/colors.dart';

class BtnConfirm extends StatelessWidget {
const  BtnConfirm({Key? key, required this.btnName, required this.backgroundColor,required this.onPressed})
      : super(key: key);
 final String btnName;
 final Color backgroundColor;
final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: mWidth,
      height: mHeight * .06,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
        ),
        child: Text(
          btnName,
          style: const TextStyle(
            color: AppColors.whiteColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
