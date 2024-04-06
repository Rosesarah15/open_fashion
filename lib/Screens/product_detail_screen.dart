import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/widgets/product_detail.dart';
import 'package:open_fashion/Screens/contact_us.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black),
      body: const ProductDetail(),
    );
  }
}
