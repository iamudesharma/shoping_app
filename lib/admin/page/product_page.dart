import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping_app/admin/controller/add_product_controller.dart';
import 'package:shoping_app/admin/page/add_product_page.dart';

import '../model/product_model.dart';
import '../routes/routes.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  final controller = Get.put<AddProductController>(AddProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.toNamed(
            AdminRoutes.AddProductPage,
          );
        },
        label: const Text('Add Product'),
      ),
      appBar: AppBar(),
      body: StreamBuilder<QuerySnapshot<Object?>>(
          stream: controller.productCollectionReference.snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
            var data = snapshot.data?.docs;

            if (data?.first.exists != null) {
              print(data!.length);
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Error'),
              );
            } else if (snapshot.data!.docs.isEmpty) {
              return const Center(
                child: Text('No Data'),
              );
            } else {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 1.0,
                ),
                itemCount: data?.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    key: ValueKey(
                      data![index].id,
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.network(data.elementAt(index).get('image')),
                            Positioned(
                              top: 10,
                              left: 10,
                              child: CircleAvatar(
                                backgroundColor: Colors.black.withOpacity(0.5),
                                child: IconButton(
                                  onPressed: () {
                                   
                                  },
                                  icon: const Icon(Icons.edit),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: CircleAvatar(
                                backgroundColor: Colors.red.withOpacity(0.5),
                                child: IconButton(
                                  onPressed: () async {
                                    await controller.deleteProduct(
                                        docId: data.elementAt(index).id);
                                  },
                                  icon: const Icon(Icons.delete),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(data.elementAt(index).get('name'))
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