import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';

import '../controller/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterLogin(
        onSignup: (SignupData data) {},
        loginAfterSignUp: true,
        onLogin: (LoginData data) {},
        onRecoverPassword: (String) {},
      ),
    );
  }
}
