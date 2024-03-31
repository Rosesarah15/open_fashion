import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Screens/blog_screen.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.newArrivalColor,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 35),
                  _buildColoredText('CONTACT US', Colors.black, 25),
                  const SizedBox(height: 8),
                  Image.asset('assets/icons/home_divider.png'),
                  const SizedBox(height: 30),
                  Image.asset('assets/icons/Chat Message.png'),
                  const SizedBox(height: 10),
                  _buildColoredText(
                      'Need an ASAP answer? Contact us via chat,\n 24/7! For existing future orders, please  \n call us.',
                      Colors.black,
                      17),
                  const SizedBox(
                    height: 25,
                  ),
                  _buildTextbutton(
                    'CHAT WITH US',
                    Colors.white,
                    15,
                    () {},
                  ),
                  const SizedBox(height: 60),
                  Image.asset('assets/icons/Add Message.png'),
                  const SizedBox(height: 15),
                  _buildColoredText(
                      'You can text us at 800-309-2622 or click\n on the "text us" link below on your mobile\n device. Please allow the system to \n acknowledge a simple greeting  (even "Hi" will do!) \n before providing your question/ \n order details. Consent is not required for \n any purchase. Message and data rates may \n apply. Text messaging may not be available \n via all carriers.',
                      Colors.black,
                      15),
                  const SizedBox(height: 20),
                  _buildTextbutton('TEXT US', Colors.white, 15, () {}),
                  const SizedBox(height: 20),
                  Image.asset('assets/icons/Twitter (4).png'),
                  const SizedBox(height: 15),
                  _buildColoredText(
                      "To send us a private or direct message, like\n@Open Fashion on Facebook or follow us\n on Twitter. We'll get back to you ASAP.\n Please include your name, order number,\n and email address for a faster response!",
                      Colors.black,
                      15),
                  const SizedBox(height: 50),
                  /////////////////////////////////////////
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
                      _buildFooterText(
                          '08:00 - 22:00 - Everyday', Colors.black),
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
          ),
        ));
  }
}

Widget _buildColoredText(
  String text,
  Color color,
  double size,
) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: size,
    ),
  );
}

Widget _buildTextbutton(
    String text, Color color, double size, VoidCallback onPressed) {
  return Container(
    width: 160,
    height: 35,
    decoration: const BoxDecoration(color: Colors.black),
    child: InkWell(
      onTap: onPressed,
      child: Align(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: size,
            color: color,
          ),
        ),
      ),
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
              MaterialPageRoute(builder: (context) => const BlogPage()));
          break;
        case 'Contact':
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BlogPage()));
          break;
        case 'Blog':
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BlogPage()));
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
