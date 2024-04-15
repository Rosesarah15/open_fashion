import 'package:flutter/material.dart';
import 'package:open_fashion/cart/widgets/cart.dart';


class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Icon(
              Icons.clear,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: GestureDetector(
              child: cartText('CART', Colors.black, 20),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  Cart(),
                    ));
              },
            ),
          ),
          Expanded(
              child: Center(
                  child: cartText('You have no items in your shopping bag',
                      Colors.grey, 17))),
          _buildShoppingBag(
              Image.asset(
                'assets/icons/home_shopping bag.png',
                color: Colors.white,
              ),
              'CONTINUE SHOPPING',
              18,
              context),
        ],
      ),
    );
  }

  Text cartText(String text, Color color, double fontsize) {
    return Text(
      text,
      style: TextStyle(fontSize: fontsize, color: color),
    );
  }
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
          style: TextStyle(fontSize: fontsize, color: Colors.white),
        )
      ],
    ),
  );
}
