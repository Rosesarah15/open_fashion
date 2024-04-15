import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/commons/widgets/footer_widget.dart';

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
                  buildFooter(context),
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
