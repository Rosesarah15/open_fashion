import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Commons/widgets/contact.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _buildCategorygridButtons(),
            const SizedBox(height: 12),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: _buildIconText('Women', Icons.close),
                ),
                const SizedBox(width: 8),
                _buildIconText('All appaarel', Icons.close),
              ],
            ),
            const SizedBox(height: 25),
            _buildImageIconText(
              Image.asset('assets/images/creamjacket.png'),
              'LAMEREI',
              'Recycle Boucle Cardigan Pink',
              '120',
            ),
            const SizedBox(height: 15),
            _buildImageIconText(
              Image.asset('assets/images/creamsweater.png'),
              'LAMEREI',
              'Recycle Boucle Cardigan Pink',
              '120',
            ),
            const SizedBox(height: 15),
            _buildImageIconText(
              Image.asset('assets/images/blackjacket.png'),
              'LAMEREI',
              'Recycle Boucle Cardigan Pink',
              '120',
            ),
            const SizedBox(height: 15),
            _buildImageIconText(
              Image.asset('assets/images/brownsweaterr.png'),
              'LAMEREI',
              'Recycle Boucle Cardigan Pink',
              '120',
            ),
            const SizedBox(height: 15),
            _buildImageIconText(
              Image.asset('assets/images/jackety.png'),
              'LAMEREI',
              'Recycle Boucle Cardigan Pink',
              '120',
            ),
            const SizedBox(height: 15),
            _buildImageIconText(
              Image.asset('assets/images/creamjacket.png'),
              'LAMEREI',
              'Recycle Boucle Cardigan Pink',
              '120',
            ),
            const SizedBox(height: 15),
            _buildImageIconText(
              Image.asset('assets/images/blackjacket.png'),
              'LAMEREI',
              'Recycle Boucle Cardigan Pink',
              '120',
            ),
            const SizedBox(height: 15),
            _buildImageIconText(
              Image.asset('assets/images/creamjacket.png'),
              'LAMEREI',
              'Recycle Boucle Cardigan Pink',
              '120',
            ),
            const SizedBox(height: 15),
            _buildImageIconText(
              Image.asset('assets/images/jackety.png'),
              'LAMEREI',
              'Recycle Boucle Cardigan Pink',
              '120',
            ),
            const SizedBox(height: 15),
            _buildImageIconText(
              Image.asset('assets/images/brownsweaterr.png'),
              'LAMEREI',
              'Recycle Boucle Cardigan Pink',
              '120',
            ),
            const SizedBox(height: 55),
            _buildGreyBoxes(),
            const SizedBox(height: 30),
            buildFooter(context),
          ],
        ),
      ),
    );
  }
}

Widget _buildCategorygridButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Text(
        '4500 APPAREL',
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
      const SizedBox(width: 50),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonCColor,
          minimumSize: Size.zero,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'New',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      _buildCircularContainerWithImage(Image.asset('assets/icons/square.png')),
      _buildCircularContainerWithImage(Image.asset('assets/icons/Filter.png')),
    ],
  );
}

Widget _buildCircularContainerWithImage(Image image) {
  return Container(
    width: 35,
    height: 35,
    decoration: const BoxDecoration(
      color: AppColors.buttonCColor,
      shape: BoxShape.circle,
    ),
    child: Center(
      child: ClipOval(
        child: SizedBox(
          width: 30,
          height: 30,
          child: image,
        ),
      ),
    ),
  );
}

Widget _buildIconText(String text, IconData icon) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      side: const BorderSide(color: Colors.grey),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        ),
        const SizedBox(width: 5),
        Icon(
          icon,
          color: Colors.grey,
          size: 20,
        ),
      ],
    ),
  );
}

Widget _buildImageIconText(
  Image image,
  String headertext,
  String description,
  String price,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18),
    child: Row(
      children: [
        image,
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headertext,
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 16,
                ),
                SizedBox(width: 3),
                Text(
                  '4.8 Ratings',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Text(
                  'Size',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                const SizedBox(width: 8),
                _buildCircularContainers('S'),
                const SizedBox(width: 6),
                _buildCircularContainers('M'),
                const SizedBox(width: 6),
                _buildCircularContainers('L'),
                const SizedBox(width: 40),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Image.asset('assets/icons/Heart.png')),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildCircularContainers(String text) {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.grey,
        width: 2.0,
      ),
    ),
    child: Center(child: Text(text)),
  );
}

Widget _buildGreyBoxes() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        children: List.generate(
          5,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: Row(
              children: [
                GreyBox(index + 1),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(width: 4.0),
      Image.asset(
        'assets/icons/Forward (2).png',
        color: Colors.black,
      )
    ],
  );
}

class GreyBox extends StatelessWidget {
  final int number;

  const GreyBox(this.number, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      child: Center(
        child: Text(
          ' $number',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
