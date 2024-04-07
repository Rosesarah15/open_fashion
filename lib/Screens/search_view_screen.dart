import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/widgets/search_view.dart';
import 'package:open_fashion/Screens/contact_us.dart';

class SearchViewPage extends StatelessWidget {
  const SearchViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black),
      body: const SearchView(),
    );
  }
}
