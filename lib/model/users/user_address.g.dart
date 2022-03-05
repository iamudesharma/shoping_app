// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAddress _$$_UserAddressFromJson(Map<String, dynamic> json) =>
    _$_UserAddress(
      flatNo: json['flat_no'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: Geo.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserAddressToJson(_$_UserAddress instance) =>
    <String, dynamic>{
      'flat_no': instance.flatNo,
      'state': instance.state,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };
