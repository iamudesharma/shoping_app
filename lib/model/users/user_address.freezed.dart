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

UserAddress _$UserAddressFromJson(Map<String, dynamic> json) {
  return _UserAddress.fromJson(json);
}

/// @nodoc
class _$UserAddressTearOff {
  const _$UserAddressTearOff();

  _UserAddress call(
      {@JsonKey(name: 'flat_no') required String flatNo,
      required String state,
      required String city,
      required String zipcode,
      required Geo geo}) {
    return _UserAddress(
      flatNo: flatNo,
      state: state,
      city: city,
      zipcode: zipcode,
      geo: geo,
    );
  }

  UserAddress fromJson(Map<String, Object?> json) {
    return UserAddress.fromJson(json);
  }
}

/// @nodoc
const $UserAddress = _$UserAddressTearOff();

/// @nodoc
mixin _$UserAddress {
  @JsonKey(name: 'flat_no')
  String get flatNo => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get zipcode =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  Geo get geo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddressCopyWith<UserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressCopyWith<$Res> {
  factory $UserAddressCopyWith(
          UserAddress value, $Res Function(UserAddress) then) =
      _$UserAddressCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'flat_no') String flatNo,
      String state,
      String city,
      String zipcode,
      Geo geo});

  $GeoCopyWith<$Res> get geo;
}

/// @nodoc
class _$UserAddressCopyWithImpl<$Res> implements $UserAddressCopyWith<$Res> {
  _$UserAddressCopyWithImpl(this._value, this._then);

  final UserAddress _value;
  // ignore: unused_field
  final $Res Function(UserAddress) _then;

  @override
  $Res call({
    Object? flatNo = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? geo = freezed,
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
abstract class _$UserAddressCopyWith<$Res>
    implements $UserAddressCopyWith<$Res> {
  factory _$UserAddressCopyWith(
          _UserAddress value, $Res Function(_UserAddress) then) =
      __$UserAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'flat_no') String flatNo,
      String state,
      String city,
      String zipcode,
      Geo geo});

  @override
  $GeoCopyWith<$Res> get geo;
}

/// @nodoc
class __$UserAddressCopyWithImpl<$Res> extends _$UserAddressCopyWithImpl<$Res>
    implements _$UserAddressCopyWith<$Res> {
  __$UserAddressCopyWithImpl(
      _UserAddress _value, $Res Function(_UserAddress) _then)
      : super(_value, (v) => _then(v as _UserAddress));

  @override
  _UserAddress get _value => super._value as _UserAddress;

  @override
  $Res call({
    Object? flatNo = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? geo = freezed,
  }) {
    return _then(_UserAddress(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAddress implements _UserAddress {
  _$_UserAddress(
      {@JsonKey(name: 'flat_no') required this.flatNo,
      required this.state,
      required this.city,
      required this.zipcode,
      required this.geo});

  factory _$_UserAddress.fromJson(Map<String, dynamic> json) =>
      _$$_UserAddressFromJson(json);

  @override
  @JsonKey(name: 'flat_no')
  final String flatNo;
  @override
  final String state;
  @override
  final String city;
  @override
  final String zipcode;
  @override // ignore: invalid_annotation_target
  final Geo geo;

  @override
  String toString() {
    return 'UserAddress(flatNo: $flatNo, state: $state, city: $city, zipcode: $zipcode, geo: $geo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserAddress &&
            const DeepCollectionEquality().equals(other.flatNo, flatNo) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.zipcode, zipcode) &&
            const DeepCollectionEquality().equals(other.geo, geo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flatNo),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(zipcode),
      const DeepCollectionEquality().hash(geo));

  @JsonKey(ignore: true)
  @override
  _$UserAddressCopyWith<_UserAddress> get copyWith =>
      __$UserAddressCopyWithImpl<_UserAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAddressToJson(this);
  }
}

abstract class _UserAddress implements UserAddress {
  factory _UserAddress(
      {@JsonKey(name: 'flat_no') required String flatNo,
      required String state,
      required String city,
      required String zipcode,
      required Geo geo}) = _$_UserAddress;

  factory _UserAddress.fromJson(Map<String, dynamic> json) =
      _$_UserAddress.fromJson;

  @override
  @JsonKey(name: 'flat_no')
  String get flatNo;
  @override
  String get state;
  @override
  String get city;
  @override
  String get zipcode;
  @override // ignore: invalid_annotation_target
  Geo get geo;
  @override
  @JsonKey(ignore: true)
  _$UserAddressCopyWith<_UserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
