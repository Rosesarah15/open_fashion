import 'package:flutter/material.dart';
import 'package:open_fashion/cart/widgets/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Cart(),
    );
  }
}
