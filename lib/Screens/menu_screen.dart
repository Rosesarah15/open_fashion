import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/widgets/menu.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyMenu(),
          ],
        ),
      ),
    );
  }
}
