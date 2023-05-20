import 'package:flutter/material.dart';

class TableTitle extends StatelessWidget {
  const TableTitle(
      {Key? key,
      required this.padding,
      required this.child
      })
      : super(key: key);
  final EdgeInsetsGeometry padding;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .07,
      child: Center(
        child: Padding(
          padding: padding,
          child: child

        ),
      ),
    );
  }
}
