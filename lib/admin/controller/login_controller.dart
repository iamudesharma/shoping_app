import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class AdminLoginController extends GetxController {
  var isLoading = false.obs;

  late Stream<User?> streamController;

  late FirebaseFirestore _firebaseFirestore;
  late FirebaseAuth firebaseAuth;

  Future login(String username, String password) async {
    CollectionReference adminRef = _firebaseFirestore.collection('admin');

    try {
      isLoading.value = true;
      final user = adminRef.get();
      user.then((value) {
        // valzz
      });
    } catch (e) {
      print('Login Failed');

      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    _firebaseFirestore = FirebaseFirestore.instance;
    firebaseAuth = FirebaseAuth.instance;

    streamController = firebaseAuth.authStateChanges();

    super.onInit();
  }
}
