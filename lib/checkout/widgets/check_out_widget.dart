import 'package:flutter/material.dart';
import 'package:open_fashion/checkout_layout3/screen/checkout_layout3_screen.dart';
import 'package:open_fashion/commons/widgets/clickable_icon_text_row_widget.dart';

class CheckOut1 extends StatelessWidget {
  CheckOut1({super.key});

  final List<Map<String, dynamic>> cartItems = [
    {
      'imagePath': 'assets/images/knit.png',
      'label': 'LAMEREI',
      'description': 'Recycle Boucle knit Cardigan',
      'price': 120,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          const SizedBox(height: 20),
          const Text(
            'CHECK OUT',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 15),
          Image.asset('assets/icons/home_divider.png'),
          const SizedBox(height: 15),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return _buildCartImageText(
                  Image.asset(item['imagePath']!),
                  item['label']!,
                  item['description']!,
                  item['price']!,
                );
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 8),
                const Divider(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: addPromoCode(),
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: deliveryRow(),
                ),
                const SizedBox(height: 20),
                const Divider(),
              ],
            ),
          ),
          const SizedBox(height: 250),
          _buildTotalText('EST.TOTAL', 240),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CheckOut3()));
            },
            child: clickableIconTextRow(
                'assets/icons/home_shopping bag.png', 'CHECKOUT', 20, context),
          ),
        ]),
      ),
    );
  }

  Row deliveryRow() {
    return Row(
      children: [
        Image.asset('assets/icons/Door to Door Delivery .png'),
        const SizedBox(width: 12),
        const Text(
          'Delivery',
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
        const SizedBox(width: 160),
        const Text(
          'Free',
          style: TextStyle(fontSize: 13, color: Colors.black),
        ),
      ],
    );
  }

  Row addPromoCode() {
    return Row(
      children: [
        Image.asset('assets/icons/Voucher (1).png'),
        const SizedBox(width: 15),
        const Text(
          'Add promo code',
          style: TextStyle(color: Colors.black),
        )
      ],
    );
  }
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
