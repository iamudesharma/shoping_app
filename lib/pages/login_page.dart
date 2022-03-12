import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';
import 'package:shoping_app/routes/app_routes.gr.dart';

import '../controller/auth_controller.dart';

class LoginPage extends GetView<AuthController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterLogin(
        hideForgotPasswordButton: true,
        onSignup: (SignupData data) async {
          await controller.signUpWithEmailAndPassword(
              data.name!, data.password!);
          return null;
        },
        loginAfterSignUp: true,
        onLogin: (LoginData data) async {
          await controller.signInWithEmailAndPassword(data.name, data.password);

          AutoRouter.of(context).navigateNamed(HomeRoute.name);
        },
        onRecoverPassword: (String) {
          return null;
        },
      ),
    );
  }
}
