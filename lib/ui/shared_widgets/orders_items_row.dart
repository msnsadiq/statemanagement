import 'package:flutter/material.dart';

class OrderRowItems extends StatelessWidget {
  const OrderRowItems(
      {Key? key, required this.leading, required this.trailing})
      : super(key: key);
  final String leading;
  final String trailing;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(leading),
        Text(
          trailing,
          textAlign: TextAlign.center,
          style: const TextStyle(),
        )
      ],
    );
  }
}