import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';
import 'package:open_fashion/product_detail_layout_2/widgets/product_detail2.dart';

class ProductDetailPage2 extends StatelessWidget {
  const ProductDetailPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: AppColors.newArrivalColor,
          imageColor: Colors.black,
          iconColor: Colors.grey, context: context),
      body: const ProductDetail2(),
    );
  }
}
