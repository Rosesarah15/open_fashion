import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Commons/widgets/product_detail2.dart';
import 'package:open_fashion/Screens/contact_us.dart';

class ProductDetailPage2 extends StatelessWidget {
  const ProductDetailPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: AppColors.newArrivalColor,
          imageColor: Colors.black,
          iconColor: Colors.grey),
      body: const ProductDetail2(),
    );
  }
}
