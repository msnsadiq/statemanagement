import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  final String text;

  const FormTitle({super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: MediaQuery.of(context).size.height * .023,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
