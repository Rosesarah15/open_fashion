import 'package:flutter/material.dart';
import 'package:open_fashion/blog_grid_view/widgets/blog_gridview.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class BlogGridviewPage extends StatelessWidget {
  const BlogGridviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          iconColor: Colors.black,
          imageColor: Colors.black, context: context),
      body: BlogGridview(),
    );
  }
}
