import 'package:flutter/material.dart';
import 'package:open_fashion/cart_empty/widgets/cart_empty.dart';

class CartEmptyPage extends StatelessWidget {
  const CartEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CartEmpty(),
    );
  }
}
