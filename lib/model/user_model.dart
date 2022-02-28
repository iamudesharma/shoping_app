import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class UserModel {
  String name;
  String email;
  String phoneNumber;
  String uid;
  Timestamp createAt;
  List<AddresssModel>? address;
  List<CartModel>? cart;
  UserModel({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.uid,
    required this.createAt,
    this.address,
    this.cart,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'uid': uid,
      'createAt': createAt.toDate().toIso8601String(),
      'address': address?.map((x) => x.toMap()).toList(),
      'cart': cart?.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      uid: map['uid'] ?? '',
      createAt: map['createAt'] as Timestamp,
      address: map['address'] != null
          ? List<AddresssModel>.from(
              map['address']?.map(
                (x) => AddresssModel.fromMap(x),
              ),
            )
          : null,
      cart: map['cart'] != null
          ? List<CartModel>.from(
              map['cart']?.map(
                (x) => CartModel.fromMap(x),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, phoneNumber: $phoneNumber, uid: $uid, createAt: $createAt, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.name == name &&
        other.email == email &&
        other.phoneNumber == phoneNumber &&
        other.uid == uid &&
        other.createAt == createAt &&
        listEquals(other.address, address) &&
        listEquals(other.cart, cart);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        phoneNumber.hashCode ^
        uid.hashCode ^
        createAt.hashCode ^
        address.hashCode ^
        cart.hashCode;
  }
}

class AddresssModel {
  String? state;
  String? flatNo;
  String? city;
  String? pinCode;
  AddresssModel({
    this.state,
    this.flatNo,
    this.city,
    this.pinCode,
  });

  Map<String, dynamic> toMap() {
    return {
      'state': state,
      'flatNo': flatNo,
      'city': city,
      'pinCode': pinCode,
    };
  }

  factory AddresssModel.fromMap(Map<String, dynamic> map) {
    return AddresssModel(
      state: map['state'],
      flatNo: map['flatNo'],
      city: map['city'],
      pinCode: map['pinCode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AddresssModel.fromJson(String source) =>
      AddresssModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AddresssModel(state: $state, flatNo: $flatNo, city: $city, pinCode: $pinCode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AddresssModel &&
        other.state == state &&
        other.flatNo == flatNo &&
        other.city == city &&
        other.pinCode == pinCode;
  }

  @override
  int get hashCode {
    return state.hashCode ^ flatNo.hashCode ^ city.hashCode ^ pinCode.hashCode;
  }
}

class CartModel {
  String productId;
  Timestamp createAt;
  CartModel({
    required this.productId,
    required this.createAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'createAt': createAt.toDate().toIso8601String(),
    };
  }

  factory CartModel.fromMap(Map<String, dynamic> map) {
    return CartModel(
      productId: map['productId'] ?? '',
      createAt: Timestamp.fromMillisecondsSinceEpoch(map['createAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CartModel.fromJson(String source) =>
      CartModel.fromMap(json.decode(source));

  @override
  String toString() => 'CartModel(productId: $productId, createAt: $createAt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartModel &&
        other.productId == productId &&
        other.createAt == createAt;
  }

  @override
  int get hashCode => productId.hashCode ^ createAt.hashCode;
}
