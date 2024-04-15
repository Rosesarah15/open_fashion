import 'package:flutter/material.dart';
import 'package:open_fashion/payment_success/widgets/payment_success_widget.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PaymentSuccesses(),
    );
  }
}
