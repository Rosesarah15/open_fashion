import 'package:flutter/material.dart';

class MyAboutPage extends StatelessWidget {
  const MyAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            _buildAboutText('OUR STORY', 22, Colors.black),
            const SizedBox(height: 5),
            Image.asset('assets/icons/home_divider.png'),
            const SizedBox(height: 20),
            _buildAboutText(
                'Open Fashion - Free Ecommerce UI Kit is a\nfree download UI Kit. You can open Open\nFashion - Free Ecommerce UI Kit file by\nFigma.',
                15,
                Colors.black),
            const SizedBox(height: 20),
            _buildAboutText(
                'Create stunning shop with bulletproof\nguidelines and thoughtful components. Its\nlibrary contains more than 50+ components\nsupporting Light & Dark Mode and 60+\nready to use mobile screens.',
                15,
                Colors.black),
            const SizedBox(height: 30),
            Image.asset('assets/images/ladybooks.png'),
            const SizedBox(height: 50),
            _buildAboutText('SIGN UP', 18, Colors.black),
            const SizedBox(height: 5),
            Image.asset('assets/icons/home_divider.png'),
            const SizedBox(height: 10),
            _buildAboutText(
                'Recieve early access to new arrivals, sales\nexclusive content, events and much more!',
                15,
                Colors.grey),
            const SizedBox(height: 22),
            _buildAboutText('Email adress', 15, Colors.grey),
            const SizedBox(height: 10),
            Container(
              width: 350,
              height: 1,
              color: Colors.grey,
            ),
            const SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'SUBMIT',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/icons/Forward Arrow.png',
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildAboutText(String text, double fontsize, Color color) {
  return Text(
    text,
    style: TextStyle(fontSize: fontsize, color: color),
  );
}
