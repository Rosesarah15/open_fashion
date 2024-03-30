import 'package:flutter/material.dart';

class JustForYou extends StatelessWidget {
  const JustForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildImageJustForYou('', 'assets/images/home_second_image.png'),
            _buildImageJustForYou('', 'assets/images/home_fouth_image.png'),
            _buildImageJustForYou('', 'assets/images/home_third_image.png'),
            _buildImageJustForYou('', 'assets/images/home_first_image.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildImageJustForYou(String text, String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 300,
            height: 400,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
