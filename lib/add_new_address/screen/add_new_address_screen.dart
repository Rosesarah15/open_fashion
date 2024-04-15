import 'package:flutter/material.dart';
import 'package:open_fashion/add_new_address/widgets/add_new_address_widget.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black,
          context: context),
      body: const AddAddress(),
    );
  }
}
