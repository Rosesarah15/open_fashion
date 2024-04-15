import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/collection/widgets/collection.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: AppColors.homeExploreButtonColor,
          imageColor: Colors.white,
          iconColor: Colors.white, context: context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Collection(),
      ),
    );
  }
}
