import 'package:flutter/material.dart';
import 'package:open_fashion/checkout/screen/check_out_screen.dart';

import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/commons/widgets/diamond_row_navigator_widget.dart';
import 'package:open_fashion/commons/widgets/navigation_footer_widget.dart';

class AddNewCardName extends StatelessWidget {
  const AddNewCardName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'PAYMENT METHOD',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Image.asset('assets/icons/home_divider.png'),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildVisaCard(
                      'assets/images/visacard.png', AppColors.cardNumber),
                  const SizedBox(width: 20),
                  buildVisaCard('assets/images/visacard.png', Colors.black),
                  const SizedBox(width: 20),
                  buildVisaCard('assets/images/visacard.png', Colors.black),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const DiamondRowContainers(),
            const SizedBox(height: 20),
            buildLabelAndTextField('Name On Card'),
            const SizedBox(height: 30),
            buildLabelAndTextField('Card Number'),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: buildLabelAndTextField('Exp Month')),
                const SizedBox(width: 13),
                Expanded(child: buildLabelAndTextField('Exp Date')),
              ],
            ),
            const SizedBox(height: 30),
            buildLabelAndTextField('CVV'),
            const SizedBox(height: 60),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckOut()));
              },
              child: const BuildFooterNavigation(
                text: 'ADD CARD',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildVisaCard(String image, Color color) {
  return Stack(
    children: [
      Image.asset(
        image,
        color: color,
      ),
      Positioned(
        top: 20,
        right: 20,
        child: Image.asset('assets/images/Mastercard.png'),
      ),
      const Positioned(
        bottom: 20,
        left: 20,
        right: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Iris Watson',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  '03/25',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              '2365 3654 2365 3698',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildLabelAndTextField(String label) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
        const SizedBox(height: 8),
        Container(
          height: 20,
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ))),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
