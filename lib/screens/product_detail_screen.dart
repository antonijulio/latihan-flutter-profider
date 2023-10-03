// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:latihan_provider/provider/all_product_providers.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;

    final getProduct = Provider.of<ProductProvider>(context)
        .allProduct
        .firstWhere((prodId) => prodId.id == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Text("INI ADALAH PAGE PRODUK ${getProduct.title}"),
      ),
    );
  }
}
