import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Commons/widgets/contact.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const ContactUs(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: AppColors.homeAppbarColor,
    leading: IconButton(
      icon: const ImageIcon(AssetImage('assets/icons/home_Menu.png')),
      onPressed: () {},
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/logos/openhouse.png',
          // height: 10,
          // width: 30,
        ),
      ],
    ),
    actions: [
      IconButton(
        icon: const ImageIcon(AssetImage('assets/icons/home_Search.png')),
        onPressed: () {},
      ),
      IconButton(
        icon: const ImageIcon(AssetImage('assets/icons/home_shopping bag.png')),
        onPressed: () {},
      ),
    ],
  );
}
