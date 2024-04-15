import 'package:flutter/material.dart';
import 'package:open_fashion/cart_empty/screen/cart_empty_screen.dart';
import 'package:open_fashion/menu/widgets/menu.dart';
import 'package:open_fashion/search_recent/screen/search_recent_screen.dart';

AppBar buildAppBar(
    {required Color appbarColor,
    required Color imageColor,
    required Color iconColor,
    required BuildContext context}) {
  return AppBar(
    backgroundColor: appbarColor,
    leading: IconButton(
      icon: const ImageIcon(
        AssetImage('assets/icons/home_Menu.png'),
        size: 25,
      ),
      color: imageColor,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyMenu()));
      },
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
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SearchRecentPage()));
        },
      ),
      IconButton(
        icon: const ImageIcon(
          AssetImage(
            'assets/icons/home_shopping bag.png',
          ),
          size: 25,
        ),
        color: iconColor,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CartEmptyPage()));
        },
      ),
    ],
  );
}
