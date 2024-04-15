import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';

Widget cartFavoritesRow(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    color: AppColors.homeExploreButtonColor,
    height: 60,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Row(
        children: [
          const Icon(
            Icons.add,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          const Text(
            'ADD TO BASKET',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(width: 180),
          Image.asset('assets/icons/Heart (1).png'),
        ],
      ),
    ),
  );
}