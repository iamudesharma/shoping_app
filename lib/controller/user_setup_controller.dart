import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shoping_app/controller/shared_preferences_controller.dart';
import 'package:shoping_app/model/users/user_address.dart';
import 'package:shoping_app/model/users/user_model.dart';

import '../repository/user_setup_repository.dart';

class UserController extends GetxController with UserRespository {
  CollectionReference userRef = FirebaseFirestore.instance.collection('users');

  Rxn<List<Address>> addressModel = Rxn<List<Address>>();
  var addressLoading = false.obs;

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

  Future userSetUp(UserModel userModel) async {
    print(
      json.encode(
        userModel.toJson(),
      ),
    );
    await userRef
        .doc(Get.find<SharedPerfController>().getUserId())
        .set(userModel.toJson());

    // print(userModel.toJson());
  }

  Future useraddressSetUp(Address address) async {
    print(json.encode(address.toJson()));
    await userRef
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('addresss')
        .add(address.toJson());

    // print(userModel.toJson());
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  Future<void> deleteUser(String uid) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<UserModel> getUserdata(String uid) {
    // TODO: implement getUserdata
    throw UnimplementedError();
  }

  @override
  Future<void> updateUserData(UserModel user) {
    // TODO: implement updateUserData
    throw UnimplementedError();
  }


}
