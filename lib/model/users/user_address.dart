import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo.dart';

part 'user_address.freezed.dart';
part 'user_address.g.dart';

@freezed
abstract class UserAddress with _$UserAddress {
  factory UserAddress({
    @JsonKey(name: 'flat_no') required String flatNo,
    required String state,
    required String city,
    required String zipcode,
    // ignore: invalid_annotation_target
    required Geo geo,
  }) = _UserAddress;
  factory UserAddress.fromJson(Map<String, dynamic> json) =>
      _$UserAddressFromJson(json);
}
