import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 40),
          const Icon(
            Icons.clear,
            color: Colors.black,
          ),
          const SizedBox(height: 20),
          cartText('CART', Colors.black, 20),
          const SizedBox(height: 30),
          _buildCartImageText(Image.asset('assets/images/knit.png'), 'LAMEREI',
              'Recycle Boucle knit Cardigan', 120),
          _buildCartImageText(Image.asset('assets/images/sweatshirt.png'),
              '5252  BY O!O|', '2021 Signature Sweatshirt [NAVY]', 120),
          const SizedBox(height: 60),
          Container(
            width: 350,
            height: 0.1,
            color: Colors.grey,
          ),
          const SizedBox(height: 20),
          _buildTotalText('SUB TOTAL', '120'),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Shipping Charges, taxes and discount codes\nare calculated at the time of accounting.',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  decoration: TextDecoration.none),
            ),
          ),
          const SizedBox(height: 45),
          _buildShoppingBag(
              Image.asset(
                'assets/icons/home_shopping bag.png',
                color: Colors.white,
              ),
              'BUY NOW',
              18,
              context),
        ],
      ),
    );
  }
}

Text cartText(String text, Color color, double fontsize) {
  return Text(
    text,
    style: TextStyle(
        fontSize: fontsize, color: color, decoration: TextDecoration.none),
  );
}

Widget _buildCartImageText(
    Image image, String label, String description, double price) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: image,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCircularContainerWithText(const Icon(Icons.remove)),
              const SizedBox(width: 5),
              const Text(
                '1',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    decoration: TextDecoration.none),
              ),
              const SizedBox(width: 5),
              _buildCircularContainerWithText(const Icon(Icons.add)),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '\$$price',
            style:
                const TextStyle(fontSize: 16, decoration: TextDecoration.none),
          ),
        ],
      ),
    ],
  );
}

Widget _buildCircularContainerWithText(Icon icon) {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.grey,
      ),
    ),
    child: Center(
      child: icon,
    ),
  );
}

Widget _buildTotalText(String text, String price) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              decoration: TextDecoration.none),
        ),
        Text(
          '\$$price',
          style: const TextStyle(
              fontSize: 18, color: Colors.red, decoration: TextDecoration.none),
        )
      ],
    ),
  );
}

Widget _buildShoppingBag(
    Image image, String text, double fontsize, BuildContext context) {
  return Container(
    color: Colors.black,
    width: MediaQuery.of(context).size.width,
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image,
        const SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
              fontSize: fontsize,
              color: Colors.white,
              decoration: TextDecoration.none),
        )
      ],
    ),
  );
}
