import 'dart:convert';

class ProductModel {
  String name;
  String image;
  String pirce;
  String description;
  String category;
  String subCategory;
  String brand;
  ProductModel({
    required this.name,
    required this.image,
    required this.pirce,
    required this.description,
    required this.category,
    required this.subCategory,
    required this.brand,
  });

  

  ProductModel copyWith({
    String? name,
    String? image,
    String? pirce,
    String? description,
    String? category,
    String? subCategory,
    String? brand,
  }) {
    return ProductModel(
      name: name ?? this.name,
      image: image ?? this.image,
      pirce: pirce ?? this.pirce,
      description: description ?? this.description,
      category: category ?? this.category,
      subCategory: subCategory ?? this.subCategory,
      brand: brand ?? this.brand,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'pirce': pirce,
      'description': description,
      'category': category,
      'subCategory': subCategory,
      'brand': brand,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      pirce: map['pirce'] ?? '',
      description: map['description'] ?? '',
      category: map['category'] ?? '',
      subCategory: map['subCategory'] ?? '',
      brand: map['brand'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(name: $name, image: $image, pirce: $pirce, description: $description, category: $category, subCategory: $subCategory, brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductModel &&
      other.name == name &&
      other.image == image &&
      other.pirce == pirce &&
      other.description == description &&
      other.category == category &&
      other.subCategory == subCategory &&
      other.brand == brand;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      image.hashCode ^
      pirce.hashCode ^
      description.hashCode ^
      category.hashCode ^
      subCategory.hashCode ^
      brand.hashCode;
  }
}
