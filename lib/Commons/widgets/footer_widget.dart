import 'package:flutter/material.dart';
import 'package:open_fashion/blog_grid_view/screen/blog_gridview_screen.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
Widget buildFooter(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    color: AppColors.newArrivalColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/icons/Twitter .png'),
            Image.asset('assets/icons/Instagram (2).png'),
            Image.asset('assets/icons/YouTube .png'),
          ],
        ),
        const SizedBox(height: 30),
        Image.asset('assets/icons/home_divider.png'),
        const SizedBox(height: 25),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildFooterText('Support@openui.design', Colors.black),
            _buildFooterText('+60 825 876', Colors.black),
            _buildFooterText('08:00 - 22:00 - Everyday', Colors.black),
          ],
        ),
        const SizedBox(height: 30),
        Image.asset('assets/icons/home_divider.png'),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildFooterTextButton('About', context),
            _buildFooterTextButton('Contact', context),
            _buildFooterTextButton('Blog', context),
          ],
        ),
        const SizedBox(height: 35),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          color: AppColors.homeopenFashion,
          child: const Center(
            child: Text(
              'Copyright OpenUI All Rights Reserved',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildFooterText(
  String text,
  Color color,
) {
  return Column(
    children: [
      Text(
        text,
        style: TextStyle(color: color, fontSize: 20),
      ),
    ],
  );
}

Widget _buildFooterTextButton(
  String text,
  BuildContext context,
) {
  return TextButton(
    onPressed: () {
      switch (text) {
        case 'About':
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BlogGridviewPage()));
          break;
        case 'Contact':
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BlogGridviewPage()));
          break;
        case 'Blog':
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BlogGridviewPage()));
          break;
        default:
          break;
      }
    },
    child: Text(
      text,
      style: const TextStyle(color: Colors.black, fontSize: 20),
    ),
  );
}


