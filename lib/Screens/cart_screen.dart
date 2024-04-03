import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/widgets/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Cart(),
    );
  }
}
