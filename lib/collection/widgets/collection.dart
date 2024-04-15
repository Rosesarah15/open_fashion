import 'package:flutter/material.dart';

import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/collection_detail/screen/collection_detail_screen.dart';
import 'package:open_fashion/commons/widgets/footer_widget.dart';

class Collection extends StatelessWidget {
  Collection({super.key});

  final List<Map<String, dynamic>> collectionItems = [
    {
      'image': 'assets/images/octobercollection1.png',
      'pagenumber': 01,
      'productname': 'October Collection'
    },
    {
      'image': 'assets/images/octobercollection2.png',
      'pagenumber': 02,
      'productname': 'Black Collection'
    },
    {
      'image': 'assets/images/octobercollection3.png',
      'pagenumber': 03,
      'productname': 'HAE BY HAEKIM'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.homeExploreButtonColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: collectionItems.length,
              itemBuilder: (context, index) {
                final item = collectionItems[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CollectionDetailPage(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      _buildImageText(item['image'], item['pagenumber'],
                          item['productname'])
                    ],
                  ),
                );
              }),
          const SizedBox(height: 30),
          const SizedBox(height: 50),
          buildFooter(context),
        ],
      ),
    );
  }
}

Widget _buildImageText(String image, int pagenumber, String productname) {
  return Column(
    children: [
      Image.asset(
        image,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'pagenumber',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          containergrey(),
          Text(
            productname,
            style: const TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    ],
  );
}

Container containergrey() {
  return Container(
    width: 100,
    height: 0.3,
    color: Colors.white,
  );
}
