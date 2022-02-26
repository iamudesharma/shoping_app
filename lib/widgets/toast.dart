import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toasts {
  Toasts._();

static  showToastSucces(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);

  }


  static showToastError(String msg) {
      Fluttertoast.showToast(
          msg: msg,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
 
  /// Creates a toast

}
