import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';

import 'package:open_fashion/Screens/blog_listview_screen.dart';
import 'package:open_fashion/Screens/category_grid_viewscreen.dart';
import 'package:open_fashion/Screens/category_gridviewcoats.dart';
import 'package:open_fashion/Screens/category_listview_screen.dart';
import 'package:open_fashion/Screens/search_view_screen.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: AppColors.newArrivalColor,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            height: 25,
          ),
          const Text(
            'NEW ARRIVAL',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          Image.asset('assets/icons/home_divider.png'),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CategoryGridCoatsPage()));
                  },
                  child: _buildNewArrivalText('All')),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CategoryGridViewPage()));
                  },
                  child: _buildNewArrivalText('Apparel')),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogListViewPage()));
                  },
                  child: _buildNewArrivalText('Dress')),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchViewPage()));
                  },
                  child: _buildNewArrivalText('Tshirt')),
              _buildNewArrivalText('Bag'),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNewArrivalItem('assets/images/home_first_image.png'),
              _buildNewArrivalItem('assets/images/home_second_image.png'),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNewArrivalItem('assets/images/home_third_image.png'),
              _buildNewArrivalItem('assets/images/home_fouth_image.png'),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoryListviewPage()));
            },
            label: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Explore More',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.black,
                ),
              ],
            ),
            icon: const SizedBox.shrink(),
          ),

          // TextButton.icon(
          //   onPressed: () {},
          //   label: const Text(
          //     'Explore More',
          //     style: TextStyle(color: Colors.black, fontSize: 20),
          //   ),
          //   icon: const Icon(
          //     Icons.arrow_forward_outlined,
          //     color: Colors.black,
          //   ),
          // ),
          const SizedBox(
            height: 60,
          ),
          Image.asset('assets/icons/home_divider.png'),
          const SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/logos/Prada_logo.png'),
              Image.asset('assets/logos/Burberry_logo.png'),
              Image.asset('assets/logos/Boss_logo.png'),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/logos/Catier_logo.png'),
              Image.asset('assets/logos/Gucci_logo.png'),
              Image.asset('assets/logos/Tiffany & Co_logo.png'),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset('assets/icons/home_divider.png'),
          const SizedBox(
            height: 60,
          ),
          const Text(
            'COLLECTIONS',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/woman_october.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/images/womanlegs_autumn.png',
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'JUST FOR YOU',
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/icons/home_divider.png'),
          const SizedBox(
            height: 30,
          ),
        ]));
  }
}

Widget _buildNewArrivalText(
  String text,
) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 20,
      color: Colors.grey,
    ),
  );
}

Widget _buildNewArrivalItem(
  String imagePath,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        imagePath,
        width: 190,
        height: 190,
        fit: BoxFit.cover,
      ),
      const SizedBox(height: 20),
      const Text(
        '2IWN reversible angora\n           cardigan',
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
      const SizedBox(height: 5),
      const Text(
        '\$120',
        style: TextStyle(fontSize: 16, color: Colors.red),
      )
    ],
  );
}
