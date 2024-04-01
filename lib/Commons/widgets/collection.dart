import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Commons/widgets/contact.dart';

class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.homeExploreButtonColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Image.asset(
            'assets/images/octobercollection.png',
          ),
          const SizedBox(height: 30),
          Image.asset('assets/images/octobercollection2.png'),
          const SizedBox(height: 10),
          _buildImageText(
              '02',
              Container(
                width: 110,
                height: 0.3,
                color: Colors.white,
              ),
              'BLACK COLLECTION'),
          const SizedBox(height: 50),
          Image.asset('assets/images/octobercollection3.png'),
          const SizedBox(height: 10),
          _buildImageText(
              '03',
              Container(
                width: 130,
                height: 0.3,
                color: Colors.white,
              ),
              'HAE BY HAEKIM'),
          const SizedBox(height: 50),
          buildFooter(context),
        ],
      ),
    );
  }
}

Widget _buildImageText(String number, Widget container, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        number,
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
      container,
      Text(
        text,
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
    ],
  );
}
