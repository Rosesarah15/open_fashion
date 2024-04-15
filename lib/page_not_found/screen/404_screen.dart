import 'package:flutter/material.dart';
import 'package:open_fashion/page_not_found/widgets/empty_page_widget.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black,
          context: context),
      body: const EmptyPage(),
    );
  }
}
