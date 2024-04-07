import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/widgets/category_listview.dart';
import 'package:open_fashion/Screens/contact_us.dart';

class CategoryListviewPage extends StatelessWidget {
  const CategoryListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black),
      body: const CategoryListview(),
    );
  }
}
