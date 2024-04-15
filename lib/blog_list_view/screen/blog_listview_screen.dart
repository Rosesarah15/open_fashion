import 'package:flutter/material.dart';
import 'package:open_fashion/blog_list_view/widgets/blog_listview.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class BlogListViewPage extends StatelessWidget {
  const BlogListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black, context: context),
      body:  BlogListView(),
    );
  }
}
