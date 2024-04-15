import 'package:flutter/material.dart';
import 'package:open_fashion/commons/widgets/cart_favorites_row_widget.dart';
import 'package:open_fashion/commons/widgets/footer_widget.dart';
import 'package:open_fashion/full_screen/screen/full_screen.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FullScreen()));
                },
                child: Image.asset('assets/images/womancoat.png')),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 5; i++) buildDiamondContainer(),
              ],
            ),
            const SizedBox(height: 20),
            _buildproductdetailtext(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: [
                  const Text(
                    'Color',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  const SizedBox(width: 15),
                  buildCircularContainer(Colors.black),
                  const SizedBox(width: 6),
                  buildCircularContainer(Colors.brown),
                  const SizedBox(width: 6),
                  buildCircularContainer(Colors.grey),
                  const SizedBox(width: 45),
                  const Text(
                    'Size',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  const SizedBox(width: 15),
                  buildCircularSizeContainer('S'),
                  const SizedBox(width: 5),
                  buildCircularSizeContainer('M'),
                  const SizedBox(width: 5),
                  buildCircularSizeContainer('L'),
                ],
              ),
            ),
            const SizedBox(height: 35),
            cartFavoritesRow(context),
            const SizedBox(height: 30),
            _buildText('MATERIALS',
                'We work with monitoring programs to ensure\ncompliance with safety, health and quality\nstandards for our products '),
            const SizedBox(height: 20),
            _buildText('CARE',
                'To keep your jackets and coats clean, you only\nneed to freshen them up and go over them with a\ncloth or clothes brush. If you need to dry clean\na garment, look for a dry cleaner that uses\ntechnologies that are respectful of the environment.'),
            const SizedBox(height: 20),
            _buildIconText(
                Image.asset(
                  'assets/icons/Do Not Bleach.png',
                ),
                'Do not use bleach'),
            const SizedBox(height: 10),
            _buildIconText(Image.asset('assets/icons/Do Not Tumble Dry.png'),
                'Do not tumble dry'),
            const SizedBox(height: 10),
            _buildIconText(Image.asset('assets/icons/Do Not Wash.png'),
                'Dry clean with tetrachlorothylene'),
            const SizedBox(height: 10),
            _buildIconText(Image.asset('assets/icons/Iron Low .png'),
                'Iron at maximum of 110^0C/230^0F'),
            const SizedBox(height: 30),
            const Text(
              'Care',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            _buildImageText(
                Image.asset('assets/icons/Truck.png'),
                'Free Flat Rate Shipping',
                Image.asset('assets/images/dropdown.png')),
            const SizedBox(height: 10),
            Image.asset('assets/icons/Line .png'),
            const SizedBox(height: 10),
            _buildImageText(Image.asset('assets/icons/Tag.png'), 'COD Policy',
                Image.asset('assets/images/dropdown.png')),
            const SizedBox(height: 10),
            Image.asset('assets/icons/Line .png'),
            const SizedBox(height: 10),
            _buildImageText(Image.asset('assets/icons/Refresh.png'),
                'Return Policy', Image.asset('assets/images/dropdown.png')),
            const SizedBox(height: 50),
            const Text(
              'YOU MAY ALSO LIKE',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Image.asset('assets/icons/home_divider.png'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                productCard(Image.asset('assets/images/blackjacket.png'),
                    '21WN\nreversible angora cardigan', '120'),
                productCard(Image.asset('assets/images/brownsweaterr.png'),
                    'lame\nreversible angora cardigan', '120'),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                productCard(Image.asset('assets/images/blackjacket.png'),
                    '21WN\nreversible angora cardigan', '120'),
                productCard(Image.asset('assets/images/brownsweaterr.png'),
                    'lame\nreversible angora cardigan', '120'),
              ],
            ),
            const SizedBox(height: 20),
            buildFooter(context),
          ],
        ),
      ),
    );
  }
}

Widget buildDiamondContainer() {
  return Container(
    width: 9,
    height: 9,
    margin: const EdgeInsets.symmetric(horizontal: 5),
    child: CustomPaint(
      painter: DiamondPainter(),
    ),
  );
}

class DiamondPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final Paint borderPaint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(0, size.height / 2)
      ..close();

    canvas.drawPath(path, paint);
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

Widget _buildproductdetailtext() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'MOHAN',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Image.asset(
              'assets/icons/Export.png',
              color: Colors.black,
            )
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 36),
        child: Text(
          'Recycle Boucle Knit Cardigan Pink',
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
      const SizedBox(height: 5),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 36),
        child: Text(
          '\$120',
          style: TextStyle(fontSize: 16, color: Colors.red),
        ),
      ),
    ],
  );
}

Widget buildCircularContainer(Color color) {
  return Container(
    width: 16,
    height: 16,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
  );
}

Widget buildCircularSizeContainer(String text) {
  return Container(
    width: 20,
    height: 20,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      shape: BoxShape.circle,
    ),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(fontSize: 13, color: Colors.black),
      ),
    ),
  );
}

Widget _buildText(String headerText, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headerText,
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
        const SizedBox(height: 6),
        Text(
          text,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        )
      ],
    ),
  );
}

Widget _buildIconText(Image image, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        image,
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        )
      ],
    ),
  );
}

Widget _buildImageText(
  Image image,
  String text,
  Image dropdown,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        image,
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        ),
        const SizedBox(width: 10),
        dropdown,
      ],
    ),
  );
}

Widget productCard(Image image, String text, String number) {
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
