import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shoping_app/model/user_model.dart';

class UserSetController extends GetxController {
  CollectionReference userRef = FirebaseFirestore.instance.collection('users');

  userSetUp(String uid, UserModel userModel) async {
    await userRef.doc(uid).set(userModel.toMap());

    print(userModel.toJson());
  }
}
