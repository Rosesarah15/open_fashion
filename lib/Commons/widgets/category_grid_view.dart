import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Commons/widgets/contact.dart';
import 'package:open_fashion/Screens/product_detail_screen.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildCategorygridButtons(),
            const SizedBox(height: 20),
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
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductDetailPage()));
              },
              child: _buildApparelImage(
                  Image.asset(
                    'assets/images/womancoat.png',
                  ),
                  'MOHAN',
                  'Recycle Boucle Knit Cardigan Pink',
                  '120'),
            ),
            const SizedBox(height: 22),
            _buildApparelImage(Image.asset('assets/images/brownsweater.png'),
                'MOHAN', 'Recycle Bouncle Knit Cardigan Pink', '120'),
            const SizedBox(height: 22),
            _buildApparelImage(
                Image.asset('assets/images/womanbluesweater.png'),
                'MOHAN',
                'Recycle Bouncle Knit Cardigan Pink',
                '120'),
            const SizedBox(height: 22),
            _buildApparelImage(Image.asset('assets/images/womanyelow.png'),
                'MOHAN', 'Recycle Bouncle Knit Cardigan Pink', '120'),
            const SizedBox(height: 22),
            _buildApparelImage(
                Image.asset('assets/images/womancreamsweater.png'),
                'MOHAN',
                'Recycle Bouncle Knit Cardigan Pink',
                '120'),
            const SizedBox(height: 60),
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
      _buildCircularContainerWithImage(Image.asset('assets/icons/Gallery.png')),
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

Widget _buildApparelImage(
    Image image, String text, String textdescription, String price) {
  return Column(
    children: [
      Stack(children: [
        image,
        Positioned(
            bottom: 10,
            right: 10,
            child: Image.asset(
              'assets/icons/Heart.png',
            )),
      ]),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            textdescription,
            style: const TextStyle(fontSize: 17, color: Colors.black),
          ),
          Text(
            '\$$price',
            style: const TextStyle(fontSize: 15, color: Colors.red),
          ),
        ],
      )
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
      // const Icon(
      //   Icons.arrow_forward,
      //   size: 30,
      //   color: Colors.black,
      // ),
      Image.asset(
        'assets/icons/Forward (2).png',
        color: Colors.black,
      )
    ],
  );
}

// Widget _buildGreyBoxes() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: List.generate(
//       5,
//       (index) => Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 6.0),
//         child: Row(
//           children: [
//             GreyBox(index + 1),
//             // const SizedBox(width: 5.0),
//           ],
//         ),
//       ),
//     ),
//   );
// }

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
