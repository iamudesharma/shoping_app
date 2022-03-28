import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping_app/controller/location_controller.dart';
import 'package:shoping_app/controller/user_setup_controller.dart';
import 'package:shoping_app/helpers/textformfield_helper.dart';
import 'package:shoping_app/model/users/geo.dart';
import 'package:shoping_app/model/users/user_address.dart';
import 'package:shoping_app/model/users/user_model.dart';

class UserSetUpPage extends StatefulWidget {
  const UserSetUpPage({Key? key}) : super(key: key);

  @override
  State<UserSetUpPage> createState() => _UserSetUpPageState();
}

class _UserSetUpPageState extends State<UserSetUpPage> {
  late UserController userSetController;

  final locationController = Get.put(LocationController());

  @override
  void initState() {
    userSetController = Get.put<UserController>(UserController());
    super.initState();
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController flatNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Set Up Your Account'),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormHelpers.textFormFields(
                    controller: firstNameController,
                    label: 'First Name',
                    hint: 'First Name',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormHelpers.textFormFields(
                    controller: lastController,
                    label: 'Last Name',
                    hint: 'Last Name',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormHelpers.textFormFields(
                    controller: phoneNumberController,
                    label: 'Phone Number',
                    hint: 'Phone Number',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormHelpers.textFormFields(
                    controller: stateController,
                    label: 'State',
                    hint: 'State',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormHelpers.textFormFields(
                    controller: cityController,
                    label: 'City',
                    hint: 'City',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormHelpers.textFormFields(
                    controller: pincodeController,
                    label: 'Pin Code',
                    hint: 'Pin Code ',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormHelpers.textFormFields(
                    controller: flatNoController,
                    label: 'House No /Flat No /Village',
                    hint: 'House No/Flat No /Village',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await locationController.currentLocation();

                      var name =
                          firstNameController.text + ' ' + lastController.text;
                      await userSetController.userSetUp(
                        UserModel(
                          image:
                              'https://firebasestorage.googleapis.com/v0/b/shoping-app-d8f0d.appspot.com/o/images%2Fuser.png?alt=media&token=f9f8f8f8-f8f8-4f8f-8f8f-f8f8f8f8f8f8',
                          name: name,
                          email: FirebaseAuth.instance.currentUser!.email ?? '',
                          phone: phoneNumberController.text,
                          id: FirebaseAuth.instance.currentUser!.uid,
                          createdAt: DateTime.now(),
                          address: [
                            Address(
                              firstname: firstNameController.text,
                              lastname: lastController.text,
                              flatNo: flatNoController.text,
                              state: stateController.text,
                              city: cityController.text,
                              zipcode: pincodeController.text,
                              geo: Geo(
                                  lat: locationController.geo.value!.lat,
                                  lng: locationController.geo.value!.lng),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text('Save'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
