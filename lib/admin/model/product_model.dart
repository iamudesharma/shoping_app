import 'dart:convert';



class ProductModel {
  String name;
  String? image;
  String uid;
  String description;
  String category;
  String subCategory;
  String price;

  ProductModel({
    required this.name,
    required this.image,
    required this.uid,
    required this.description,
    required this.category,
    required this.subCategory,
    required this.price,
  });

  ProductModel copyWith({
    String? name,
    String? image,
    String? uid,
    String? description,
    String? category,
    String? subCategory,
    String? price,
  }) {
    return ProductModel(
      name: name ?? this.name,
      image: image ?? this.image,
      uid: uid ?? this.uid,
      description: description ?? this.description,
      category: category ?? this.category,
      subCategory: subCategory ?? this.subCategory,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'uid': uid,
      'description': description,
      'category': category,
      'subCategory': subCategory,
      'price': price,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      uid: map['uid'] ?? '',
      description: map['description'] ?? '',
      category: map['category'] ?? '',
      subCategory: map['subCategory'] ?? '',
      price: map['price'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(name: $name, image: $image, uid: $uid, description: $description, category: $category, subCategory: $subCategory, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductModel &&
      other.name == name &&
      other.image == image &&
      other.uid == uid &&
      other.description == description &&
      other.category == category &&
      other.subCategory == subCategory &&
      other.price == price;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      image.hashCode ^
      uid.hashCode ^
      description.hashCode ^
      category.hashCode ^
      subCategory.hashCode ^
      price.hashCode;
  }
}
