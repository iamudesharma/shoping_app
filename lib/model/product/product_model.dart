import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:shoping_app/model/product/product_item.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
   factory ProductModel({
    required String id,
    required String category,
    required List<ProductItem> items,


   }) = _ProductModel;
   factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}


