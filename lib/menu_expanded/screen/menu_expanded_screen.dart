import 'package:flutter/material.dart';
import 'package:open_fashion/menu_expanded/widgets/menu_expanded_widget.dart';
class MenuExpanded extends StatelessWidget {
  const MenuExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ExpandedMenu(),
    );
  }
}