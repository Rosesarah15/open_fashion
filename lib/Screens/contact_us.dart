import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Commons/widgets/contact.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: AppColors.homeAppbarColor,
          imageColor: Colors.black,
          iconColor: Colors.grey),
      body: const ContactUs(),
    );
  }
}

AppBar buildAppBar(
    {required Color appbarColor,
    required Color imageColor,
    required Color iconColor}) {
  return AppBar(
    backgroundColor: appbarColor,
    leading: IconButton(
      icon: const ImageIcon(
        AssetImage('assets/icons/home_Menu.png'),
        size: 25,
      ),
      color: imageColor,
      onPressed: () {},
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/logos/openhouse.png',
          color: imageColor,
        ),
      ],
    ),
    actions: [
      IconButton(
        icon: const ImageIcon(
          AssetImage('assets/icons/home_Search.png'),
          size: 25,
        ),
        color: iconColor,
        onPressed: () {},
      ),
      IconButton(
        icon: const ImageIcon(
          AssetImage(
            'assets/icons/home_shopping bag.png',
          ),
          size: 25,
        ),
        color: iconColor,
        onPressed: () {},
      ),
    ],
  );
}
