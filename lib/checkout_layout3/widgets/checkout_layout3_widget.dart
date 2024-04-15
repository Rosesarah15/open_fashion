import 'package:flutter/material.dart';
import 'package:open_fashion/commons/widgets/clickable_icon_text_row_widget.dart';
import 'package:open_fashion/payment_success/screen/payment_success_screen.dart';

class CheckoutLayout3 extends StatelessWidget {
  CheckoutLayout3({super.key});

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
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Text(
              'CHECK OUT',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Image.asset('assets/icons/home_divider.png'),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      checkoutText('Iris Watson', 20),
                      const SizedBox(
                        height: 10,
                      ),
                      checkoutText('606-3727 Ullamcorper.Street', 16),
                      const SizedBox(height: 10),
                      checkoutText('Roseville NH 11523', 16),
                      const SizedBox(height: 10),
                      checkoutText('(786) 713-8616', 16),
                    ],
                  ),
                  const SizedBox(width: 100),
                  Image.asset(
                    'assets/icons/Forward (2).png',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: [
                  Image.asset('assets/images/Mastercard.png'),
                  const SizedBox(width: 30),
                  const Text('Master Card ending'),
                  const SizedBox(width: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildCircularContainer(),
                      _buildCircularContainer(),
                      _buildCircularContainer(),
                      _buildCircularContainer(),
                      const Text(
                        '89',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      const SizedBox(width: 50),
                      Image.asset(
                        'assets/icons/Forward (2).png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider()),
            const SizedBox(height: 12),
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
            const SizedBox(height: 150),
            _buildTotalText('TOTAL', 240),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentSuccess()));
              },
              child: clickableIconTextRow('assets/icons/home_shopping bag.png',
                  'CHECKOUT', 20, context),
            ),
          ],
        ),
      ),
    );
  }

  Text checkoutText(String text, double fontsize) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
      ),
    );
  }
}

Widget _buildCircularContainer() {
  return Container(
    width: 7,
    height: 7,
    decoration: const BoxDecoration(
      color: Colors.black,
      shape: BoxShape.circle,
    ),
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
