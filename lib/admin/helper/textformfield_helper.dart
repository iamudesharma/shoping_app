import 'package:flutter/material.dart';

class TextFormHelpers {
  static TextFormField textFormFields(
      {required TextEditingController controller,
      required String label,
      required String hint,
      TextInputType? textInputType,
      TextInputAction? textInputAction,
      bool? isPassword = false,
      String? Function(String?)? validator}) {
    return TextFormField(
      validator: validator,
      textInputAction: textInputAction ?? TextInputAction.done,
      controller: controller,
      keyboardType: textInputType ?? TextInputType.name,
      obscureText: isPassword!,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 3,
          ),
          labelText: label,
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
