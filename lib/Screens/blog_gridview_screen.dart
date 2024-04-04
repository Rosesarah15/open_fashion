import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/widgets/blog_gridview.dart';
import 'package:open_fashion/Screens/contact_us.dart';

class BlogGridviewPage extends StatelessWidget {
  const BlogGridviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          iconColor: Colors.black,
          imageColor: Colors.black),
      body: const BlogGridview(),
    );
  }
}
