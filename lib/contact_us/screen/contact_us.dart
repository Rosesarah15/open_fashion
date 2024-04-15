import 'package:flutter/material.dart';

import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/commons/widgets/appbar_widget.dart';
import 'package:open_fashion/contact_us/widgets/contact.dart';


class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          appbarColor: AppColors.homeAppbarColor,
          imageColor: Colors.black,
          iconColor: Colors.grey, context: context),
      body: const ContactUs(),
    );
  }
}

