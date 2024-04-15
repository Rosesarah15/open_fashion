import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';
import 'package:open_fashion/home/widgets/justforyou.dart';
import 'package:open_fashion/home/widgets/new_arrival.dart';
import 'package:open_fashion/home/widgets/openfash.dart';
import 'package:open_fashion/home/widgets/welcome_image.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          context: context,
          appbarColor: AppColors.homeAppbarColor,
          iconColor: Colors.black,
          imageColor: Colors.black),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const WelcomeImage(),
            NewArrival(),
            const JustForYou(),
            
            OpenFashion(),
          ],
        ),
      ),
    );
  }
}
