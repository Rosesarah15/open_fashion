import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';

class JustForYou extends StatelessWidget {
  const JustForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildImageJustForYou('Harris Tweed Three Button\n   Jacket',
                  'assets/images/home_second_image.png', "120"),
              _buildImageJustForYou('IWN reversible angora\n   Cardigan',
                  'assets/images/home_fouth_image.png', '120'),
              _buildImageJustForYou(
                  'Cashmere Blend Cropped\n  Jacket SWIWJ285-AM',
                  'assets/images/home_third_image.png',
                  '120'),
              _buildImageJustForYou('Harris Tweed Three Button\n   Jacket',
                  'assets/images/home_first_image.png', '120'),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      const Text(
        '@ TRENDING',
        style: TextStyle(color: Colors.black, fontSize: 27),
      ),
      const SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildbuttonText('# 2021'),
          _buildbuttonText('# spring'),
          _buildbuttonText('# collection'),
          _buildbuttonText('# fall')
        ],
      ),
      Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildbuttonText('#dress'),
          _buildbuttonText('#autumncollection'),
          _buildbuttonText('#opencollection'),
        ],
      ),
      const SizedBox(
        height: 30,
      )
    ]);
  }

  Widget _buildImageJustForYou(String text, String imagePath, String price) {
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
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          Text(
            '\$$price',
            style: const TextStyle(fontSize: 20, color: Colors.red),
          ),
        ],
      ),
    );
  }
}

Widget _buildbuttonText(
  String text,
) {
  return ElevatedButton(
    onPressed: () {},
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(AppColors.buttonColor)),
    child: Text(
      text,
      style: const TextStyle(color: Colors.black),
    ),
  );
}
