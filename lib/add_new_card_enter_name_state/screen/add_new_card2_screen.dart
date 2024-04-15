import 'package:flutter/material.dart';
import 'package:open_fashion/add_new_card_enter_name_state/widgets/add_new_card2_widget.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class AddNewCard2 extends StatelessWidget {
  const AddNewCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black,
          context: context),
      body: const AddNewCardName(),
    );
  }
}
