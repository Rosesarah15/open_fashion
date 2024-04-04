import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';

class SearchRecent extends StatelessWidget {
  const SearchRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: 360,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search items',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 30,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {},
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buildSearchText('Recent Search', Colors.grey, 17),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTextButton('Dress', Icons.close),
              _buildTextButton('Collection', Icons.close),
              _buildTextButton('Nike', Icons.close),
            ],
          ),
          const SizedBox(height: 35),
          _buildSearchText('Popular Search terms', Colors.grey, 15),
          const SizedBox(height: 15),
          _buildSearchText('Trend', Colors.black, 16),
          const SizedBox(height: 10),
          _buildSearchText('Dress', Colors.black, 16),
          const SizedBox(height: 10),
          _buildSearchText('Bag', Colors.black, 16),
          const SizedBox(height: 10),
          _buildSearchText('Tshirt', Colors.black, 16),
          const SizedBox(height: 10),
          _buildSearchText('Beauty', Colors.black, 16),
          const SizedBox(height: 10),
          _buildSearchText('Accessories', Colors.black, 16),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

Widget _buildSearchText(
  String text,
  Color color,
  double fontsize,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
      ),
    ),
  );
}

Widget _buildTextButton(String text, IconData iconData) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.buttonSearchColor,
    ),
    child: Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.black),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(width: 2),
          Icon(
            iconData,
            color: Colors.black,
            size: 17,
          ),
        ],
      ),
    ),
  );
}
