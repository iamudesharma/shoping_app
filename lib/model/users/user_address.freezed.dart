// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
class _$AddressTearOff {
  const _$AddressTearOff();

  _Address call(
      {@JsonKey(name: 'flat_no') required String flatNo,
      required String state,
      required String city,
      @JsonKey(name: 'zip_code') required String zipcode,
      required Geo geo,
      @JsonKey(name: 'first_name') required String firstname,
      @JsonKey(name: 'last_name') required String lastname}) {
    return _Address(
      flatNo: flatNo,
      state: state,
      city: city,
      zipcode: zipcode,
      geo: geo,
      firstname: firstname,
      lastname: lastname,
    );
  }

  Address fromJson(Map<String, Object?> json) {
    return Address.fromJson(json);
  }
}

/// @nodoc
const $Address = _$AddressTearOff();

/// @nodoc
mixin _$Address {
  @JsonKey(name: 'flat_no')
  String get flatNo => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'zip_code')
  String get zipcode => throw _privateConstructorUsedError;
  Geo get geo => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'flat_no') String flatNo,
      String state,
      String city,
      @JsonKey(name: 'zip_code') String zipcode,
      Geo geo,
      @JsonKey(name: 'first_name') String firstname,
      @JsonKey(name: 'last_name') String lastname});

  $GeoCopyWith<$Res> get geo;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object? flatNo = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? geo = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
  }) {
    return _then(_value.copyWith(
      flatNo: flatNo == freezed
          ? _value.flatNo
          : flatNo // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as Geo,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $GeoCopyWith<$Res> get geo {
    return $GeoCopyWith<$Res>(_value.geo, (value) {
      return _then(_value.copyWith(geo: value));
    });
  }
}

/// @nodoc
abstract class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) then) =
      __$AddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'flat_no') String flatNo,
      String state,
      String city,
      @JsonKey(name: 'zip_code') String zipcode,
      Geo geo,
      @JsonKey(name: 'first_name') String firstname,
      @JsonKey(name: 'last_name') String lastname});

  @override
  $GeoCopyWith<$Res> get geo;
}

/// @nodoc
class __$AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(_Address _value, $Res Function(_Address) _then)
      : super(_value, (v) => _then(v as _Address));

  @override
  _Address get _value => super._value as _Address;

  @override
  $Res call({
    Object? flatNo = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? geo = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
  }) {
    return _then(_Address(
      flatNo: flatNo == freezed
          ? _value.flatNo
          : flatNo // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as Geo,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  _$_Address(
      {@JsonKey(name: 'flat_no') required this.flatNo,
      required this.state,
      required this.city,
      @JsonKey(name: 'zip_code') required this.zipcode,
      required this.geo,
      @JsonKey(name: 'first_name') required this.firstname,
      @JsonKey(name: 'last_name') required this.lastname});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  @JsonKey(name: 'flat_no')
  final String flatNo;
  @override
  final String state;
  @override
  final String city;
  @override
  @JsonKey(name: 'zip_code')
  final String zipcode;
  @override
  final Geo geo;
  @override
  @JsonKey(name: 'first_name')
  final String firstname;
  @override
  @JsonKey(name: 'last_name')
  final String lastname;

  @override
  String toString() {
    return 'Address(flatNo: $flatNo, state: $state, city: $city, zipcode: $zipcode, geo: $geo, firstname: $firstname, lastname: $lastname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Address &&
            const DeepCollectionEquality().equals(other.flatNo, flatNo) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.zipcode, zipcode) &&
            const DeepCollectionEquality().equals(other.geo, geo) &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.lastname, lastname));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flatNo),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(zipcode),
      const DeepCollectionEquality().hash(geo),
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(lastname));

  @JsonKey(ignore: true)
  @override
  _$AddressCopyWith<_Address> get copyWith =>
      __$AddressCopyWithImpl<_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(this);
  }
}

abstract class _Address implements Address {
  factory _Address(
      {@JsonKey(name: 'flat_no') required String flatNo,
      required String state,
      required String city,
      @JsonKey(name: 'zip_code') required String zipcode,
      required Geo geo,
      @JsonKey(name: 'first_name') required String firstname,
      @JsonKey(name: 'last_name') required String lastname}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  @JsonKey(name: 'flat_no')
  String get flatNo;
  @override
  String get state;
  @override
  String get city;
  @override
  @JsonKey(name: 'zip_code')
  String get zipcode;
  @override
  Geo get geo;
  @override
  @JsonKey(name: 'first_name')
  String get firstname;
  @override
  @JsonKey(name: 'last_name')
  String get lastname;
  @override
  @JsonKey(ignore: true)
  _$AddressCopyWith<_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
