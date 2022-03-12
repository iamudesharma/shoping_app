// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'flat_no': instance.flatNo,
      'state': instance.state,
      'city': instance.city,
      'zip_code': instance.zipcode,
      'geo': instance.geo.toJson(),
      'first_name': instance.firstname,
      'last_name': instance.lastname,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      flatNo: json['flat_no'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      zipcode: json['zip_code'] as String,
      geo: Geo.fromJson(json['geo'] as Map<String, dynamic>),
      firstname: json['first_name'] as String,
      lastname: json['last_name'] as String,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'flat_no': instance.flatNo,
      'state': instance.state,
      'city': instance.city,
      'zip_code': instance.zipcode,
      'geo': instance.geo,
      'first_name': instance.firstname,
      'last_name': instance.lastname,
    };
