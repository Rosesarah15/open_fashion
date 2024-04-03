import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Commons/widgets/justforyou.dart';
import 'package:open_fashion/Commons/widgets/new_arrival.dart';
import 'package:open_fashion/Commons/widgets/openfash.dart';
import 'package:open_fashion/Commons/widgets/welcome_image.dart';
import 'package:open_fashion/Screens/cart_empty_screen.dart';
import 'package:open_fashion/Screens/menu_screen.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            WelcomeImage(),
            NewArrival(),
            JustForYou(),
            OpenFashion(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.homeAppbarColor,
      leading: IconButton(
        icon: const ImageIcon(AssetImage('assets/icons/home_Menu.png')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MenuPage(),
              ));
        },
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
          icon:
              const ImageIcon(AssetImage('assets/icons/home_shopping bag.png')),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartEmptyPage(),
                ));
          },
        ),
      ],
    );
  }
}
