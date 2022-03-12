import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo.dart';

part 'user_address.freezed.dart';
part 'user_address.g.dart';

@JsonSerializable(explicitToJson: true)
@freezed
abstract class Address with _$Address {
  factory Address({
    @JsonKey(name: 'flat_no') required String flatNo,
    required String state,
    required String city,
    @JsonKey(name: 'zip_code') required String zipcode,
    required Geo geo,
    @JsonKey(name: 'first_name') required String firstname,
    @JsonKey(name: 'last_name') required String lastname,
  }) = _Address;
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
