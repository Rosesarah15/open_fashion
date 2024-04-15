import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/our_story/screen/about_screen.dart';
import 'package:open_fashion/blog_grid_view/screen/blog_gridview_screen.dart';
import 'package:open_fashion/contact_us/screen/contact_us.dart';

class OpenFashion extends StatelessWidget {
  OpenFashion({super.key});

  final List<Map<String, String>> images = [
    {'image': 'assets/images/home_mia.png', 'text': '@ mia'},
    {'image': 'assets/images/home_jihyn.png', 'text': '@ _jihyn'},
    {'image': 'assets/images/home_mia1.png', 'text': '@ mia'},
    {'image': 'assets/images/home_jihyn1.png', 'text': '@ _jihyn'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.homeopenFashion,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset('assets/logos/openhouse.png'),
          const SizedBox(
            height: 35,
          ),
          const Text(
            'Making a luxurious lifestyle accessible\n  for a generous group of women is our \n                       daily drive.',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/icons/home_divider.png'),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildImageTexts('assets/icons/home_Miroodles Sticker.png',
                  'Fast shipping. Free on \n orders over 25'),
              _buildImageTexts('assets/icons/home_Miroodles Sticker (1).png',
                  'Sustainable process\n from start finish.'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildImageTexts('assets/icons/home_Miroodles Sticker (2).png',
                  'Unique designs\n and high-quality materials.'),
              _buildImageTexts('assets/icons/home_Miroodles Sticker (3).png',
                  'Fast shipping.\n Free on orders over 25.'),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Image.asset(
            'assets/icons/home_scriggly_design.png',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.newArrivalColor,
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
                ),
                const Text(
                  'FOLLOW US',
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/icons/home_Instagram(1).png'),
                const SizedBox(
                  height: 10,
                ),
                GridView.builder(
                    itemCount: images.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 0.95),
                    itemBuilder: (context, index) {
                      final image = images[index];
                      return _buildImages(image['image']!, image['text']!);
                    }),
                const SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/icons/Twitter .png'),
                      Image.asset('assets/icons/Instagram (2).png'),
                      Image.asset('assets/icons/YouTube .png'),
                    ]),
                const SizedBox(
                  height: 30,
                ),
                Image.asset('assets/icons/home_divider.png'),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildFooterText('Support@openui.design', Colors.black),
                    _buildFooterText('+60 825 876', Colors.black),
                    _buildFooterText('08:00 - 22:00 - Everyday', Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset('assets/icons/home_divider.png'),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildFooterTextButton('About', (context)),
                    _buildFooterTextButton('Contact', (context)),
                    _buildFooterTextButton('Blog', (context)),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildImageTexts(
  String imagePath,
  String text,
) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        width: 70,
        height: 70,
      ),
      const SizedBox(height: 20),
      Text(
        '\$$text',
        style: const TextStyle(
          fontSize: 15,
          color: Colors.grey,
        ),
      ),
    ],
  );
}

Widget _buildImages(String imagePath, String text) {
  return Stack(
    alignment: Alignment.bottomLeft,
    children: [
      Image.asset(
        imagePath,
        width: 300,
        height: 300,
      ),
      Positioned(
        bottom: 30,
        left: 20,
        right: 0,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    ],
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
              MaterialPageRoute(builder: (context) => const AboutPage()));
          break;
        case 'Contact':
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ContactPage()));
          break;
        case 'Blog':
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const BlogGridviewPage()));
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
