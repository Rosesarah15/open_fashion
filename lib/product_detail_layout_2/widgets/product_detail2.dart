import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/commons/widgets/cart_favorites_row_widget.dart';
import 'package:open_fashion/commons/widgets/footer_widget.dart';


class ProductDetail2 extends StatelessWidget {
  const ProductDetail2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.newArrivalColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/ringdetailpage.png',
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImage(Image.asset('assets/images/ringdetail2.png')),
                _buildImage(Image.asset('assets/images/ringgdetailpage.png')),
                _buildImage(
                    Image.asset('assets/images/sideringdetailpage2.png')),
                _buildImage(Image.asset('assets/images/ringdetail2.png')),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'MOHAN',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Image.asset('assets/icons/Export.png'),
              ],
            ),
            _buildColoredText(
                'Recycle Boucle Knit Cardigan Pink', Colors.black, 16),
            _buildColoredText('\$120', Colors.red, 18),
            const SizedBox(height: 20),
            Row(
              children: [
                _buildColoredText('Ring Size', Colors.black, 14),
                const SizedBox(width: 8),
                _buildCircularContainerWithText(AppColors.containerColor, '6'),
                const SizedBox(width: 8),
                _buildCircularContainerWithText(AppColors.newArrivalColor, '8'),
                const SizedBox(width: 8),
                _buildCircularContainerWithText(AppColors.newArrivalColor, '9'),
                const SizedBox(width: 8),
                _buildCircularContainerWithText(
                    AppColors.newArrivalColor, '10'),
                const SizedBox(width: 8),
                _buildCircularContainerWithText(
                    AppColors.newArrivalColor, '11'),
              ],
            ),
            const SizedBox(height: 20),
            cartFavoritesRow(context),
            const SizedBox(height: 15),
            const Text(
              'GALLERY',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(height: 10),
            _buildColumnImages(),
            const SizedBox(height: 18),
            const Text(
              'CARE',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(height: 15),
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
            const SizedBox(height: 20),
            const Text(
              'YOU MAY ALSO LIKE',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 10),
            Image.asset('assets/icons/home_divider.png'),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                productCard(Image.asset('assets/images/ringdetail.png'),
                    '21WN\nreversible angora cardigan', '120'),
                productCard(Image.asset('assets/images/diamondringdetail.png'),
                    '21WN\nreversible angora cardigan', '120'),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                productCard(
                    Image.asset('assets/images/collectiondetailrinng.png'),
                    '21WN\nreversible angora cardigan',
                    '120'),
                productCard(Image.asset('assets/images/bluering.png'),
                    '21WN\nreversible angora cardigan', '120'),
              ],
            ),
            const SizedBox(height: 40),
            buildFooter(context),
          ],
        ),
      ),
    );
  }
}

Widget _buildImage(Image image) {
  return SizedBox(
    width: 67,
    height: 65,
    child: image,
  );
}

Widget _buildColoredText(String text, Color color, double size) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: size),
  );
}

Widget _buildCircularContainerWithText(Color color, String text) {
  return Container(
    width: 30,
    height: 30,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: Colors.grey)),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
    ),
  );
}


Widget _buildColumnImages() {
  return Column(
    children: [
      Image.asset('assets/images/chin.png'),
      const SizedBox(height: 12),
      Image.asset('assets/images/fingers.png'),
      const SizedBox(height: 12),
      Image.asset('assets/images/diamond.png')
    ],
  );
}

Widget _buildImageText(
  Image image,
  String text,
  Image dropdown,
) {
  return Row(
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
  );
}

Widget productCard(Image image, String text, String number) {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
