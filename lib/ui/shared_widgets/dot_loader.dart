import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../theme/shared/colors.dart';
class DotLoader extends StatelessWidget {
  const DotLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(
      size: 24,
      itemBuilder: (context, index)=> Container(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: const Icon(Icons.circle,
          color: AppColors.primary,
          size: 10,

        ),
      ),
    );
  }
}


