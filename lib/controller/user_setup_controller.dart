import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shoping_app/model/users/user_model.dart';

class UserSetController extends GetxController {
  CollectionReference userRef = FirebaseFirestore.instance.collection('users');

  var userDataExist = false.obs;
  checkDataExist() async {
    var data = await userRef.doc(FirebaseAuth.instance.currentUser!.uid).get();
    if (data.exists) {
      print('data exist');
      userDataExist.value = true;
    } else {
      print('data not exist');
      userDataExist.value = false;
    }
  }

  Future userSetUp( UserModel userModel) async {
    print(json.encode(userModel.toJson()));
    await userRef.doc(FirebaseAuth.instance.currentUser!.uid).set(userModel.toJson());

    // print(userModel.toJson());
  }

  @override
  void onInit() {
    checkDataExist();
    super.onInit();
  }
}
