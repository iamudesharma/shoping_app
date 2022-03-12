import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shoping_app/controller/shared_preferences_controller.dart';

import '../model/users/user_address.dart';
import '../model/users/user_model.dart';
import '../repository/address_repository.dart';

class AddressController extends GetxController with AddressRepository {
  

  CollectionReference userRef = FirebaseFirestore.instance.collection('users');

  Rxn<List<Address>> addressModel = Rxn<List<Address>>();
  var addressLoading = false.obs;

 late DocumentReference<UserModel> userData;

  @override
  Future<void> deleteAddress({required int index}) {
    // TODO: implement deleteAddress
    throw UnimplementedError();
  }

  @override
  Future<void> getAddress({required String docId}) async {
    addressLoading.value = true;
    final data = await userData.get();
    final userModel = data.data()!;
    addressModel.value = userModel.address;

    addressLoading.value = false;
  }

  @override
  Future<void> updateAddress(
      {required int index,
      required Address address,
      required String docId}) async {
  }

  @override
  void onInit() async {
    userData = await userRef
        .doc(Get.find<SharedPerfController>().getUserId())
        .withConverter<UserModel>(
            fromFirestore: (snapshot, options) =>
                UserModel.fromJson(snapshot.data()!),
            toFirestore: (userModel, _) => userModel.toJson());
    super.onInit();

    await getAddress(docId: '');
  }
}
