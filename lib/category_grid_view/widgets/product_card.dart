import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.image,
      required this.productname,
      required this.productdescription,
      required this.price});
  final String image;
  final String productname;
  final String productdescription;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(
              image,
              width: double.infinity,
              height: 190,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Image.asset('assets/icons/Heart.png'),
            ),
          ],
        ),
        Text(
          productname,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        ),
        Text(
          productdescription,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        ),
        Text(
          '\$$price',
          style: const TextStyle(fontSize: 15, color: Colors.red),
        ),
      ],
    );
  }
}
