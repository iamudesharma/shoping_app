import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoping_app/model/users/user_address.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  factory UserModel({
    // required String id,
    required String id,
    required String name,
    required String email,
    required String phone,
  
    required String image,
    required String createdAt,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
