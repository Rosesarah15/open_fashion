import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/widgets/blog_post.dart';
import 'package:open_fashion/Screens/contact_us.dart';

class BlogPostPage extends StatelessWidget {
  const BlogPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black),
      body: const BlogPost(),
    );
  }
}
