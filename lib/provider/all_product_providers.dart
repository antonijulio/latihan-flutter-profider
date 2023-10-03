import 'dart:math';
import 'package:flutter/material.dart';

import 'product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _allProducts = List.generate(
    25,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Product ${index + 1}",
        description: 'Ini adalah deskripsi produk ${index + 1}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );

  List<Product> get allProduct {
    return [..._allProducts];
  }
}
