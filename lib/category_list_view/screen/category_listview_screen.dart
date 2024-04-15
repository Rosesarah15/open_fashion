import 'package:flutter/material.dart';
import 'package:open_fashion/category_list_view/widgets/category_listview.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class CategoryListviewPage extends StatelessWidget {
  const CategoryListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black, context: context),
      body: CategoryListview(),
    );
  }
}
