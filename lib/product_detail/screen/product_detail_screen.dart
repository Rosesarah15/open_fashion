import 'package:flutter/material.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';
import 'package:open_fashion/product_detail/widgets/product_detail.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black, context: context),
      body: const ProductDetail(),
    );
  }
}
