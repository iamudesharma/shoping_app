import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping_app/controller/address_controller.dart';
import 'package:shoping_app/controller/shared_preferences_controller.dart';
import 'package:shoping_app/controller/user_setup_controller.dart';

class AddressPage extends StatefulWidget {
  final controller;
  const AddressPage({Key? key, required this.controller}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  AddressController controller = Get.find<AddressController>();

  @override
  void initState() {
    controller.getAddress(docId: Get.find<SharedPerfController>().getUserId());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address'),
      ),
      body: Obx(() {
        if (controller.addressLoading.value == true) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: controller.addressModel.value?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              final data = controller.addressModel.value![index];
              return Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      data.zipcode,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      data.flatNo,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      data.state,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }
      }),
    );
  }
}
