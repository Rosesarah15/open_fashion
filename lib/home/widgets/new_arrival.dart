import 'package:flutter/material.dart';
import 'package:open_fashion/page_not_found/screen/404_screen.dart';
import 'package:open_fashion/cart/screen/cart_screen.dart';
import 'package:open_fashion/commons/fonts/app_fonts.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/blog_list_view/screen/blog_listview_screen.dart';
import 'package:open_fashion/category_grid_view_full/screen/category_grid_viewscreen.dart';
import 'package:open_fashion/category_grid_view/screen/category_gridviewcoats.dart';
import 'package:open_fashion/home/widgets/video_player.dart';
import 'package:open_fashion/search_view/screen/search_view_screen.dart';

class NewArrival extends StatelessWidget {
  NewArrival({super.key});

  final List<Map<String, dynamic>> newArrivalItems = [
    {
      'image': 'assets/images/home_first_image.png',
      'productname': '2IWN reversible angora ',
      'productdescription': ' cardigan',
      'price': 120,
    },
    {
      'image': 'assets/images/home_second_image.png',
      'productname': '2IWN reversible angora',
      'productdescription': 'cardigan',
      'price': 120,
    },
    {
      'image': 'assets/images/home_third_image.png',
      'productname': '2IWN reversible angora',
      'productdescription': 'cardigan',
      'price': 120,
    },
    {
      'image': 'assets/images/home_fouth_image.png',
      'productname': '2IWN reversible angora',
      'productdescription': 'cardigan',
      'price': 120,
    },
  ];

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
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageNotFound()));
                  },
                  child: _buildNewArrivalText('Bag')),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          GridView.builder(
              itemCount: newArrivalItems.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.6),
              itemBuilder: (context, index) {
                final item = newArrivalItems[index];
                return _buildNewArrivalItem(
                  item['image'],
                  item['productname'],
                  item['productdescription'],
                  item['price'],
                );
              }),
          const SizedBox(
            height: 25,
          ),
          ////////////////////////////////////////////////
          TextButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartPage()));
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
          Text(
            'COLLECTIONS',
            style: AppFonts.title,
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
          const VideoPlayerApp(),
          const SizedBox(height: 65),
          Text(
            'JUST FOR YOU',
            style: AppFonts.title,
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
    String image, String productname, String productdescription, int price) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        image,
        width: 190,
        height: 230,
        fit: BoxFit.cover,
      ),
      const SizedBox(height: 20),
      Text(
        productname,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
      const SizedBox(height: 5),
      Text(
        productdescription,
        style: AppFonts.bodyMedium,
      ),
      Text(
        '\$$price',
        style: const TextStyle(fontSize: 14, color: Colors.red),
      )
    ],
  );
}
