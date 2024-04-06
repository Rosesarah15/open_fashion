import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Commons/widgets/contact.dart';

class BlogListView extends StatelessWidget {
  const BlogListView({super.key});

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
              _buildImageTextBlog(
                  Image.asset(
                    'assets/images/whitedress.png',
                  ),
                  '2021 STYLE GUIDE:\nTHE BIGGEST FALL\nTRENDS',
                  '4 days ago'),
              const SizedBox(height: 18),
              _buildImageTextBlog(
                  Image.asset(
                    'assets/images/officewear.png',
                  ),
                  "3 PAIRS OF DENIM\nYOU WON'T BELIEVE",
                  '5 days ago'),
              const SizedBox(height: 18),
              _buildImageTextBlog(
                  Image.asset(
                    'assets/images/yellowblouse.png',
                  ),
                  "5 FALL LOOKS I'M\nLOVING",
                  '01/11/2020'),
              const SizedBox(height: 18),
              _buildImageTextBlog(
                  Image.asset(
                    'assets/images/coatboats.png',
                  ),
                  "5 FALL BOOT TRENDS\nYOU NEED TO TRY",
                  '25/10/2021'),
              const SizedBox(height: 18),
              _buildImageTextBlog(
                  Image.asset(
                    'assets/images/strippedcoat.png',
                  ),
                  "2021 STYLE GUIDE:\nTHE BIGGEST FALL\nTRENDS",
                  '16/10/2021'),
              const SizedBox(height: 18),
              _buildImageTextBlog(
                  Image.asset(
                    'assets/images/sleavedjacket.png',
                  ),
                  "3 PAIRS OF DENIM\nYOU WON'T BELIEVE",
                  '10/10/2021'),
              const SizedBox(height: 40),
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

Widget _buildImageTextBlog(Image image, String headertext, String period) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      image,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headertext,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
          const SizedBox(height: 5),
          const Text(
            "The excitment of fall fashion\nis here and I'm already loving\nsome of the trend forecasts ",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          const SizedBox(height: 5),
          Text(
            period,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          )
        ],
      ),
    ],
  );
}
