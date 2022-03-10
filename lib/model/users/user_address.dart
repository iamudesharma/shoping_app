import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo.dart';

part 'user_address.freezed.dart';
part 'user_address.g.dart';



@freezed
abstract class Address with _$Address {
  factory Address({
    required String flatNo,
    required String state,
    required String city,
    required String zipcode,

    
    required Geo geo,
  }) = _Address;
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
