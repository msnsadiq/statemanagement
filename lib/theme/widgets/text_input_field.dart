import 'package:flutter/material.dart';

class CustomTextFormField extends TextFormField {
  CustomTextFormField({
    Key? key,
    String? initialValue,
    InputDecoration? decoration,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    TextStyle? style,
    TextEditingController? controller,
    FormFieldValidator<String>? validator,
    ValueChanged<String>? onFieldSubmitted,
    int? maxLines,
    TextAlign? textAlign,
    bool readOnly = false,
    void Function(String)? onChanged,
    void Function(String?)? onSaved
  }) : super(
    key: key,
    initialValue: initialValue,
    decoration: decoration,
    keyboardType: keyboardType,
    textInputAction: textInputAction,
    style: style,
    controller: controller,
    validator: validator,
    onFieldSubmitted: onFieldSubmitted,
    maxLines: maxLines,
    textAlign:  textAlign ?? TextAlign.start,
    onChanged: onChanged,

onSaved: onSaved,
readOnly: readOnly
  );
}