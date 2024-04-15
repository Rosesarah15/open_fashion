import 'package:flutter/material.dart';
import 'package:open_fashion/category_grid_view/widgets/category_gridviewcoats.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class CategoryGridCoatsPage extends StatelessWidget {
  const CategoryGridCoatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black, context: context),
      body: const CategoryGridCoats(),
    );
  }
}
