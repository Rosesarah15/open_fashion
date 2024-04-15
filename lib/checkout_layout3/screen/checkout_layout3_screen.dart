import 'package:flutter/material.dart';
import 'package:open_fashion/checkout_layout3/widgets/checkout_layout3_widget.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class CheckOut3 extends StatelessWidget {
  const CheckOut3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black,
          context: context),
      body: CheckoutLayout3(),
    );
  }
}
