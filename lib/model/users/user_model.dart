import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoping_app/model/users/user_address.dart';

import '../product/product_item.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';


@JsonSerializable(
explicitToJson: true 
)
@freezed

abstract class UserModel with _$UserModel {
  factory UserModel({
    // required String id,
    required String id,
    required String name,
    required String email,
    required String phone,
    required String image,
   @TimestampConverter() required DateTime createdAt,
    required List<Address> address,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
