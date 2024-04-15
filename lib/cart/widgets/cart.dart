import 'package:flutter/material.dart';
import 'package:open_fashion/checkout_layout2/screen/checkout_layout2_screen.dart';
import 'package:open_fashion/commons/widgets/clickable_icon_text_row_widget.dart';

class Cart extends StatelessWidget {
  Cart({super.key});

  final List<Map<String, dynamic>> cartItems = [
    {
      'imagePath': 'assets/images/knit.png',
      'label': 'LAMEREI',
      'description': 'Recycle Boucle knit Cardigan',
      'price': 120,
    },
    {
      'imagePath': 'assets/images/sweatshirt.png',
      'label': '5252  BY O!O|',
      'description': '2021 Signature Sweatshirt [NAVY]',
      'price': 120,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Icon(
            Icons.clear,
            color: Colors.black,
          ),
          const SizedBox(height: 20),
          cartText('CART', Colors.black, 20),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return _buildCartImageText(
                  Image.asset(item['imagePath']!),
                  item['label']!,
                  item['description']!,
                  item['price']!,
                );
              },
            ),
          ),
          const SizedBox(height: 60),
          Container(
            width: 350,
            height: 0.1,
            color: Colors.grey,
          ),
          const SizedBox(height: 20),
          _buildTotalText('SUB TOTAL', 120),
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Checkoutlayout2()));
            },
            child: clickableIconTextRow(
                'assets/icons/home_shopping bag.png', 'BUY NOW', 18, context),
          ),
          const SizedBox(height: 20)
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
    Image image, String label, String description, int price) {
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
          const SizedBox(height: 15),
          Text(
            description,
            style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
          const SizedBox(height: 15),
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
          const SizedBox(height: 15),
          Text(
            '\$$price',
            style: const TextStyle(
                fontSize: 16,
                decoration: TextDecoration.none,
                color: Colors.red),
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

Widget _buildTotalText(String text, int price) {
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
