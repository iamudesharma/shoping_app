// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductItem _$ProductItemFromJson(Map<String, dynamic> json) {
  return _ProductItem.fromJson(json);
}

/// @nodoc
class _$ProductItemTearOff {
  const _$ProductItemTearOff();

  _ProductItem call(
      {required String id,
      required String name,
      required String description,
      required String imageUrl,
      required double price,
      required int quantity,
      @TimestampConverter() required DateTime createdAt}) {
    return _ProductItem(
      id: id,
      name: name,
      description: description,
      imageUrl: imageUrl,
      price: price,
      quantity: quantity,
      createdAt: createdAt,
    );
  }

  ProductItem fromJson(Map<String, Object?> json) {
    return ProductItem.fromJson(json);
  }
}

/// @nodoc
const $ProductItem = _$ProductItemTearOff();

/// @nodoc
mixin _$ProductItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductItemCopyWith<ProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemCopyWith<$Res> {
  factory $ProductItemCopyWith(
          ProductItem value, $Res Function(ProductItem) then) =
      _$ProductItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      double price,
      int quantity,
      @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class _$ProductItemCopyWithImpl<$Res> implements $ProductItemCopyWith<$Res> {
  _$ProductItemCopyWithImpl(this._value, this._then);

  final ProductItem _value;
  // ignore: unused_field
  final $Res Function(ProductItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ProductItemCopyWith<$Res>
    implements $ProductItemCopyWith<$Res> {
  factory _$ProductItemCopyWith(
          _ProductItem value, $Res Function(_ProductItem) then) =
      __$ProductItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      double price,
      int quantity,
      @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class __$ProductItemCopyWithImpl<$Res> extends _$ProductItemCopyWithImpl<$Res>
    implements _$ProductItemCopyWith<$Res> {
  __$ProductItemCopyWithImpl(
      _ProductItem _value, $Res Function(_ProductItem) _then)
      : super(_value, (v) => _then(v as _ProductItem));

  @override
  _ProductItem get _value => super._value as _ProductItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_ProductItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductItem implements _ProductItem {
  _$_ProductItem(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.price,
      required this.quantity,
      @TimestampConverter() required this.createdAt});

  factory _$_ProductItem.fromJson(Map<String, dynamic> json) =>
      _$$_ProductItemFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final double price;
  @override
  final int quantity;
  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'ProductItem(id: $id, name: $name, description: $description, imageUrl: $imageUrl, price: $price, quantity: $quantity, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$ProductItemCopyWith<_ProductItem> get copyWith =>
      __$ProductItemCopyWithImpl<_ProductItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductItemToJson(this);
  }
}

abstract class _ProductItem implements ProductItem {
  factory _ProductItem(
      {required String id,
      required String name,
      required String description,
      required String imageUrl,
      required double price,
      required int quantity,
      @TimestampConverter() required DateTime createdAt}) = _$_ProductItem;

  factory _ProductItem.fromJson(Map<String, dynamic> json) =
      _$_ProductItem.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  double get price;
  @override
  int get quantity;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$ProductItemCopyWith<_ProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}
