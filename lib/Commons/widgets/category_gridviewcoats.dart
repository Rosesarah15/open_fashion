import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Commons/widgets/contact.dart';

class CategoryGridCoats extends StatelessWidget {
  const CategoryGridCoats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _buildCategorygridButtons(),
            const SizedBox(height: 13),
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
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImageTextHeart(
                    Image.asset('assets/images/creamsweater.png'),
                    '21WN\nreversible angora cardigan',
                    '120'),
                _buildImageTextHeart(
                    Image.asset('assets/images/creamjacket.png'),
                    'lame\nreversible angora cardigan',
                    '120'),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImageTextHeart(
                    Image.asset('assets/images/blackjacket.png'),
                    '21WN\nreversible angora cardigan',
                    '120'),
                _buildImageTextHeart(
                    Image.asset('assets/images/brownsweaterr.png'),
                    'lame\nreversible angora cardigan',
                    '120'),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImageTextHeart(Image.asset('assets/images/jackety.png'),
                    '21WN\nreversible angora cardigan', '120'),
                _buildImageTextHeart(
                    Image.asset('assets/images/creamjacket.png'),
                    'lame\nreversible angora cardigan',
                    '120'),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImageTextHeart(
                    Image.asset('assets/images/blackjacket.png'),
                    '21WN\nreversible angora cardigan',
                    '120'),
                _buildImageTextHeart(
                    Image.asset('assets/images/brownsweaterr.png'),
                    'lame\nreversible angora cardigan',
                    '120'),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImageTextHeart(Image.asset('assets/images/jackety.png'),
                    '21WN\nreversible angora cardigan', '120'),
                _buildImageTextHeart(
                    Image.asset('assets/images/creamjacket.png'),
                    'lame\nreversible angora cardigan',
                    '120'),
              ],
            ),
            const SizedBox(height: 35),
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
      _buildCircularContainerWithImage(
          Image.asset('assets/icons/Listview.png')),
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

Widget _buildImageTextHeart(Image image, String text, String number) {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        children: [
          image,
          Positioned(
            bottom: 10,
            right: 10,
            child: Image.asset('assets/icons/Heart.png'),
          ),
        ],
      ),
      Text(
        text,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      Text(
        '\$$number',
        style: const TextStyle(fontSize: 15, color: Colors.red),
      ),
    ],
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
                //const SizedBox(width: 4.0),
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
