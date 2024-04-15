import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';
import 'package:open_fashion/our_story/widgets/about.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: AppColors.newArrivalColor,
          imageColor: Colors.black,
          iconColor: Colors.grey, context: context),
      body: const MyAboutPage(),
    );
  }
}
