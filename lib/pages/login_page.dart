import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';

import '../controller/auth_controller.dart';

class LoginPage extends GetView<AuthController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterLogin(
        
        onSignup: (SignupData data) async {
          await controller.signUpWithEmailAndPassword(
              data.name!, data.password!);
        },
        loginAfterSignUp: true,
        onLogin: (LoginData data) async {
          await controller.signInWithEmailAndPassword(data.name, data.password);
        },
        onRecoverPassword: (String) {},
      ),
    );
  }
}
