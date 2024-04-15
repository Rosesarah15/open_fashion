import 'package:flutter/material.dart';
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

Widget pageNavigationRow() {
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
              ],
            ),
          ),
        ),
      ),
      const SizedBox(width: 4.0),
      Image.asset(
        'assets/icons/Forward (2).png',
        color: Colors.black,
      )
    ],
  );
}
