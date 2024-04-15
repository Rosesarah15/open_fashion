import 'package:flutter/material.dart';
import 'package:open_fashion/commons/fonts/app_fonts.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/collection/screen/collection_screen.dart';
import 'package:open_fashion/commons/widgets/diamond_row_navigator_widget.dart';

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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CollectionPage(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.homeExploreButtonColor),
                  child: const Text(
                    'EXPLORE COLLECTION',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ),
        ),
        const Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: DiamondRowContainers(),
        ),
      ]),
    );
  }

  Widget _buildWelcomeImageText(
    String text,
  ) {
    return Text(text, style: AppFonts.landingText);
  }
}
