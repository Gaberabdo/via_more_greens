import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String name;
  final String image;

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
    };
  }

  const ProductModel({
    required this.name,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      image: json['image'],
    );
  }

  @override
  List<Object> get props => [
        name,
        image,
      ];
}
