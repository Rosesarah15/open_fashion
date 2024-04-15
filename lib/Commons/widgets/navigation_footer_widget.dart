import 'package:flutter/material.dart';

class BuildFooterNavigation extends StatelessWidget {
  final String text;

  const BuildFooterNavigation({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: Colors.black,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
