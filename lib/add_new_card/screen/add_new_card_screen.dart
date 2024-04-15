import 'package:flutter/material.dart';
import 'package:open_fashion/add_new_card/widgets/add_new_card_widget.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black,
          context: context),
      body: const AddCard(),
    );
  }
}
