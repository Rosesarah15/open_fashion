import 'package:flutter/material.dart';
import 'package:open_fashion/checkout/widgets/check_out_widget.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: Colors.white,
          imageColor: Colors.black,
          iconColor: Colors.black,
          context: context),
      body: CheckOut1(),
    );
  }
}
