import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Commons/widgets/contact.dart';
import 'package:open_fashion/Screens/blog_post_screen.dart';

class BlogGridview extends StatelessWidget {
  const BlogGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Center(child: blogText('BLOG', 22, Colors.black)),
            const SizedBox(height: 5),
            Image.asset('assets/icons/home_divider.png'),
            const SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildScrollablebutton(
                      'Fashion', 13, Colors.black, AppColors.buttonColor),
                  const SizedBox(width: 8),
                  _buildScrollablebutton(
                      'Promo', 13, Colors.black, AppColors.buttonColor),
                  const SizedBox(width: 8),
                  _buildScrollablebutton(
                      'Policy', 13, Colors.black, AppColors.buttonColor),
                  const SizedBox(width: 8),
                  _buildScrollablebutton(
                      'Lookbook', 13, Colors.black, AppColors.buttonColor),
                  const SizedBox(width: 8),
                  _buildScrollablebutton(
                      'Sample', 13, Colors.black, AppColors.buttonColor),
                ],
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BlogPostPage()));
              },
              child: _buildImageTextIcon(
                Image.asset(
                  'assets/images/manflowers.png',
                ),
              ),
            ),
            const SizedBox(height: 30),
            _buildImageTextIcon(Image.asset('assets/images/bag.png')),
            const SizedBox(height: 30),
            _buildImageTextIcon(Image.asset('assets/images/legsboots.png')),
            const SizedBox(height: 30),
            _buildImageTextIcon(Image.asset('assets/images/womansun.png')),
            const SizedBox(height: 30),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LOAD MORE',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(width: 6),
                  Icon(Icons.add)
                ],
              ),
            ),
            const SizedBox(height: 30),
            buildFooter(context),
          ],
        ),
      ),
    );
  }

  Text blogText(String text, double fontsize, Color color) {
    return Text(
      text,
      style: TextStyle(fontSize: fontsize, color: color),
    );
  }
}

Widget _buildScrollablebutton(
    String text, double fontsize, Color color, Color buttonColor) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
      ),
    ),
  );
}

Widget _buildImageTextIcon(
  Image image,
) {
  return Column(
    children: [
      Stack(children: [
        image,
        const Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Icons.bookmark,
              color: Colors.black,
              size: 24,
            )),
        const Positioned(
          bottom: 10,
          left: 10,
          child: Text(
            '2012 STYLE GUIDE: BIGGEST\nFALL TRENDS',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),
      ]),
      const SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Row(
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Text(
                  '#Fashion',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                )),
            const SizedBox(width: 6),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Text(
                  '#Tips',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                )),
            const SizedBox(width: 80),
            const Text(
              '4 days ago',
              style: TextStyle(fontSize: 15, color: Colors.black),
            )
          ],
        ),
      ),
    ],
  );
}
