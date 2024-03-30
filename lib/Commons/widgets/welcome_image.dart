import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(children: [
        Image.asset(
          'assets/images/home_main_image.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Positioned(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildWelcomeImageText('LUXURY'),
            _buildWelcomeImageText('FASHION'),
            _buildWelcomeImageText('& ACCESSORIES'),
            //const SizedBox(height: 60),
          ],
        )),
        Positioned(
          bottom: 60,
          left: 10,
          right: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 50,
              width: 340,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.homeExploreButtonColor),
                  child: const Text(
                    'EXPLORE COLLECTION',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ),
        )
      ]),
    );
  }

  Widget _buildWelcomeImageText(
    String text,
  ) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    );
  }
}
