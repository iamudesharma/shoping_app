import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping_app/controller/user_setup_controller.dart';
import 'package:shoping_app/helpers/textformfield_helper.dart';
import 'package:shoping_app/model/user_model.dart';

class UserSetUpPage extends StatefulWidget {
  const UserSetUpPage({Key? key}) : super(key: key);

  @override
  State<UserSetUpPage> createState() => _UserSetUpPageState();
}

class _UserSetUpPageState extends State<UserSetUpPage> {
  late UserSetController userSetController;
  @override
  void initState() {
    userSetController = Get.put<UserSetController>(UserSetController());
    super.initState();
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  // TextEditingController phoneNumberController = TextEditingController();

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
                      var name =
                          firstNameController.text + ' ' + lastController.text;
                      userSetController.userSetUp(
                        FirebaseAuth.instance.currentUser!.uid,
                        UserModel(
                          name: name,
                          email: FirebaseAuth.instance.currentUser!.email ?? '',
                          phoneNumber: phoneNumberController.text,
                          uid: FirebaseAuth.instance.currentUser!.uid,
                          createAt: Timestamp.now(),
                          address: [
                            AddresssModel(
                              city: cityController.text,
                              flatNo: flatNoController.text,
                              state: stateController.text,
                              pinCode: pincodeController.text,
                            )
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
