import 'package:flutter/material.dart';
import 'package:open_fashion/blog_post/widgets/blog_post.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class BlogPostPage extends StatelessWidget {
  const BlogPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black, context: context),
      body: const BlogPost(),
    );
  }
}
