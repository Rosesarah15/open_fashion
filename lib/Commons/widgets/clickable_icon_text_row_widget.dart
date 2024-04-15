import 'package:flutter/material.dart';

Widget clickableIconTextRow(
   String image, String text, double fontsize, BuildContext context) {
  return Container(
    color: Colors.black,
    width: MediaQuery.of(context).size.width,
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, color: Colors.white,), 
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
