import 'package:flutter/material.dart';
import 'package:open_fashion/checkout_layout2/widgets/checkout_layout2_widget.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class Checkoutlayout2 extends StatelessWidget {
  const Checkoutlayout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black,
          context: context),
      body: const Checkout2(),
    );
  }
}
