import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/commons/widgets/footer_widget.dart';
import 'package:open_fashion/commons/widgets/icon_text_container_widget.dart';

class BlogListView extends StatelessWidget {
  BlogListView({super.key});

  final List<Map<String, dynamic>> blogPosts = [
    {
      'image': 'assets/images/whitedress.png',
      'productname': '2021 STYLE GUIDE:\nTHE BIGGEST FALL\nTRENDS',
      'productdescription':
          'The excitement of fall fashion is here and I\'m already loving some of the trend forecasts.',
      'period': '4 days ago',
    },
    {
      'image': 'assets/images/officewear.png',
      'productname': "3 PAIRS OF DENIM\nYOU WON'T BELIEVE",
      'productdescription':
          "The excitment of fall fashion\nis here and I'm already loving\nsome of the trend forecasts ",
      'period': '5 days ago',
    },
    {
      'image': 'assets/images/yellowblouse.png',
      'productname': "5 FALL LOOKS I'M\nLOVING",
      'productdescription':
          "The excitment of fall fashion\nis here and I'm already loving\nsome of the trend forecasts ",
      'period': '01/11/2020',
    },
    {
      'image': 'assets/images/coatboats.png',
      'productname': "5 FALL BOOT TRENDS\nYOU NEED TO TRY",
      'productdescription':
          "The excitment of fall fashion\nis here and I'm already loving\nsome of the trend forecasts ",
      'period': '25/10/2021',
    },
    {
      'image': 'assets/images/strippedcoat.png',
      'productname': "2021 STYLE GUIDE:\nTHE BIGGEST FALL\nTRENDS",
      'productdescription':
          "The excitment of fall fashion\nis here and I'm already loving\nsome of the trend forecasts ",
      'period': '16/10/2021',
    },
    {
      'image': 'assets/images/sleavedjacket.png',
      'productname': "3 PAIRS OF DENIM\nYOU WON'T BELIEVE",
      'productdescription':
          "The excitment of fall fashion\nis here and I'm already loving\nsome of the trend forecasts ",
      'period': '10/10/2021',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text(
                'BLOG',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Image.asset('assets/icons/home_divider.png'),
              const SizedBox(height: 20),
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
              const SizedBox(height: 15),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: blogPosts.length,
                  itemBuilder: (context, index) {
                    return _buildImageTextBlog(
                        Image.asset(blogPosts[index]['image']),
                        blogPosts[index]['productname'],
                        blogPosts[index]['productdescription'],
                        blogPosts[index]['period']);
                  }),
              const SizedBox(height: 40),
              iconTextContainer(),
              const SizedBox(height: 30),
              buildFooter(context),
            ],
          )),
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

Widget _buildImageTextBlog(
    Image image, String productname, String productdescription, String period) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Expanded(flex: 1, child: image),
      Expanded(
        flex: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productname,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(height: 5),
            Text(
              productdescription,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
            const SizedBox(height: 5),
            Text(
              period,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            )
          ],
        ),
      ),
    ],
  );
}
