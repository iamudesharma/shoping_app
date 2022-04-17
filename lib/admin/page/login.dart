import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';
import 'package:shoping_app/admin/controller/login_controller.dart';

import '../admin_app.dart';
import 'home_page.dart';

class LoginPage extends GetView<AdminLoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterLogin(
       
        hideForgotPasswordButton: true,
        onLogin: (LoginData data) async {
          print('Login button pressed');
         
          return null;
        },
        onRecoverPassword: (data) {},
        
      ),
    );
  }
}
