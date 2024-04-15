import 'package:flutter/material.dart';
import 'package:open_fashion/category_grid_view_full/widgets/category_grid_view.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class CategoryGridViewPage extends StatelessWidget {
  const CategoryGridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black, context: context),
      body: CategoryGridView(),
    );
  }
}
