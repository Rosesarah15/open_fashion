import 'package:flutter/material.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';
import 'package:open_fashion/search_view/widgets/search_view.dart';

class SearchViewPage extends StatelessWidget {
  const SearchViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black, context: context),
      body: SearchView(),
    );
  }
}
