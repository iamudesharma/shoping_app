import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping_app/admin/controller/add_product_controller.dart';
import 'package:shoping_app/admin/model/product_model.dart';
// import 'package:image_picker_web/image_picker_web.dart';
import 'package:uuid/uuid.dart';
import '../helper/textformfield_helper.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage(
      {Key? key, this.isEdit = false, this.productModel, this.docId})
      : super(key: key);

  final bool isEdit;
  final ProductModel? productModel;
  final String? docId;

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  @override
  void initState() {
    super.initState();
    print(widget.productModel?.image ?? '' + 'THis a image');
    if (widget.isEdit) {
      productTextEditingController =
          TextEditingController(text: widget.productModel?.name);
      priceTextEditingController =
          TextEditingController(text: widget.productModel?.price);
      productDescriptionTextEditingController =
          TextEditingController(text: widget.productModel?.description);
      productCategoryTextEditingController =
          TextEditingController(text: widget.productModel?.category);
      productsubCategoryTextEditingController = TextEditingController(
        text: widget.productModel?.subCategory,
      );
    } else {
      productTextEditingController = TextEditingController();
      priceTextEditingController = TextEditingController();
      productDescriptionTextEditingController = TextEditingController();
      productCategoryTextEditingController = TextEditingController();
      productCategoryTextEditingController = TextEditingController();
    }
  }

  late TextEditingController productTextEditingController =
      TextEditingController();
  late TextEditingController priceTextEditingController =
      TextEditingController();
  late TextEditingController productCategoryTextEditingController =
      TextEditingController();
  late TextEditingController productsubCategoryTextEditingController =
      TextEditingController();
  late TextEditingController productDescriptionTextEditingController =
      TextEditingController();

  final controller = Get.find<AddProductController>();

  removeImage() {
    setState(() {
      widget.productModel?.image = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 400,
            maxWidth: 600,
            minHeight: 400,
            maxHeight: 600,
          ),
          child: Card(
            // color: Colors.black,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormHelpers.textFormFields(
                      controller: productTextEditingController,
                      label: 'Product Name',
                      hint: 'Enter The Product Name',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormHelpers.textFormFields(
                        controller: priceTextEditingController,
                        label: 'Product Price',
                        hint: 'Enter The Product Price'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormHelpers.textFormFields(
                        controller: productDescriptionTextEditingController,
                        label: 'Product Description',
                        hint: 'Enter The Product Description'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormHelpers.textFormFields(
                      controller: productCategoryTextEditingController,
                      label: 'Product Category',
                      hint: 'Enter The Product Category,',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormHelpers.textFormFields(
                        controller: productsubCategoryTextEditingController,
                        label: 'Product SubCategory',
                        hint: 'Enter The Product SubCategory'),
                    widget.isEdit == false
                        ? Obx(() {
                            if (controller.productImage.value != null) {
                              return SizedBox(
                                height: 200,
                                width: 200,
                                child: Image.memory(
                                  Uint8List.fromList(
                                      controller.productImage.value!.codeUnits),
                                ),
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          })
                        : widget.productModel!.image == null
                            ? Obx(
                                () => controller.updateImage.value == null
                                    ? const SizedBox.shrink()
                                    : SizedBox(
                                        height: 200,
                                        width: 200,
                                        child: Image.memory(
                                          Uint8List.fromList(controller
                                              .updateImage.value!.codeUnits),
                                        ),
                                      ),
                              )
                            : Image.network(
                                widget.productModel!.image ?? '',
                                height: 200,
                                width: 200,
                              ),
                    const SizedBox(
                      height: 10,
                    ),
                    widget.isEdit
                        ? TextButton(
                            onPressed: () async {
                              if (widget.productModel?.image != null) {
                                removeImage();
                              } else {
                                await controller.updateImages();
                              }
                            },
                            child: Text(widget.productModel?.image != null
                                ? 'Remove Image'
                                : 'Add Image'),
                          )
                        : Obx(() => controller.productImage.value == null
                            ? TextButton.icon(
                                onPressed: () async {
                                  await controller.getImage();
                                },
                                icon: const Icon(Icons.add),
                                label: const Text('Add Product Images'),
                              )
                            : const SizedBox.shrink()),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton.icon(
                      onPressed: () async {
                        if (widget.isEdit) {
                          await controller.productCollectionReference
                              .doc(widget.docId)
                              .update({
                            "name": productTextEditingController.text,
                            "price": priceTextEditingController.text,
                            "description":
                                productDescriptionTextEditingController.text,
                            "category":
                                productCategoryTextEditingController.text,
                            "subCategory":
                                productsubCategoryTextEditingController.text,
                            "image": controller.imageFile.value ??
                                widget.productModel?.image,
                          });
                          Get.back();
                          controller.imageFile.value = null;
                          productTextEditingController.clear();
                          priceTextEditingController.clear();
                          productDescriptionTextEditingController.clear();
                          productCategoryTextEditingController.clear();
                          productsubCategoryTextEditingController.clear();
                        } else {
                          await controller.productCollectionReference.add(
                            ProductModel(
                              name: productTextEditingController.text,
                              image: controller.imageFile.value!,
                              description:
                                  productDescriptionTextEditingController.text,
                              category:
                                  productCategoryTextEditingController.text,
                              subCategory:
                                  productsubCategoryTextEditingController.text,
                              price: priceTextEditingController.text,
                              uid: const Uuid().v4(),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(double.infinity, 45),
                      ),
                      icon: const Icon(Icons.add),
                      label: Text(
                          widget.isEdit ? 'Update Product' : 'Add Product'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
