import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/collection_detail/widgets/collection_detail.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';

class CollectionDetailPage extends StatelessWidget {
  const CollectionDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: AppColors.homeExploreButtonColor,
          imageColor: Colors.white,
          iconColor: Colors.white, context: context),
      body: CollectionDetail(),
    );
  }
}
