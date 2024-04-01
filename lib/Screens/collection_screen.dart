import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Commons/widgets/collection.dart';
import 'package:open_fashion/Screens/contact_us.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: AppColors.homeExploreButtonColor,
          imageColor: Colors.white,
          iconColor: Colors.white),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Collection(),
      ),
    );
  }
}
