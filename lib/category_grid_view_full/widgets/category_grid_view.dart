import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/commons/widgets/footer_widget.dart';
import 'package:open_fashion/commons/widgets/page_navigation_row_widget.dart';

import 'package:open_fashion/product_detail/screen/product_detail_screen.dart';


class CategoryGridView extends StatelessWidget {
  CategoryGridView({super.key});

  final List<Map<String, dynamic>> imageList = [
    {
      'image': 'assets/images/womancoat.png',
      'productname': 'MOHAN',
      'productdescription': 'Recycle Boucle Knit Cardigan Pink',
      'price': 120,
    },
    {
      'image': 'assets/images/brownsweater.png',
      'productname': 'MOHAN',
      'productdescription': 'Recycle Boucle Knit Cardigan Pink',
      'price': 120,
    },
    {
      'image': 'assets/images/womanbluesweater.png',
      'productname': 'MOHAN',
      'productdescription': 'Recycle Boucle Knit Cardigan Pink',
      'price': 120,
    },
    {
      'image': 'assets/images/womanyelow.png',
      'productname': 'MOHAN',
      'productdescription': 'Recycle Boucle Knit Cardigan Pink',
      'price': 120,
    },
    {
      'image': 'assets/images/womancreamsweater.png',
      'productname': 'MOHAN',
      'productdescription': 'Recycle Boucle Knit Cardigan Pink',
      'price': 120,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildCategorygridButtons(),
            const SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: _buildIconText('Women', Icons.close),
                ),
                const SizedBox(width: 8),
                _buildIconText('All appaarel', Icons.close),
              ],
            ),
            const SizedBox(height: 12),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  final item = imageList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductDetailPage(),
                          ),
                        );
                      },
                      child: _buildApparelImage(
                        item['image'],
                        item['productname'],
                        item['productdescription'],
                        item['price'],
                      ),
                    ),
                  );
                }),
            const SizedBox(height: 60),
            pageNavigationRow(),
            const SizedBox(height: 30),
            buildFooter(context),
          ],
        ),
      ),
    );
  }
}

Widget _buildCategorygridButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Text(
        '4500 APPAREL',
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
      const SizedBox(width: 50),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonCColor,
          minimumSize: Size.zero,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'New',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      GestureDetector(
          onTap: () {},
          child: _buildCircularContainerWithImage(
              Image.asset('assets/icons/Gallery.png'))),
      _buildCircularContainerWithImage(Image.asset('assets/icons/Filter.png')),
    ],
  );
}

Widget _buildCircularContainerWithImage(Image image) {
  return Container(
    width: 35,
    height: 35,
    decoration: const BoxDecoration(
      color: AppColors.buttonCColor,
      shape: BoxShape.circle,
    ),
    child: Center(
      child: ClipOval(
        child: SizedBox(
          width: 30,
          height: 30,
          child: image,
        ),
      ),
    ),
  );
}

Widget _buildIconText(String text, IconData icon) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      side: const BorderSide(color: Colors.grey),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        ),
        const SizedBox(width: 5),
        Icon(
          icon,
          color: Colors.grey,
          size: 20,
        ),
      ],
    ),
  );
}

Widget _buildApparelImage(
    String image, String productname, String productdescription, int price) {
  return Column(
    children: [
      Stack(children: [
        Image.asset(image),
        Positioned(
            bottom: 10,
            right: 10,
            child: Image.asset(
              'assets/icons/Heart.png',
            )),
      ]),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: Text(
              productname,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            productdescription,
            style: const TextStyle(fontSize: 17, color: Colors.black),
          ),
          Text(
            '\$$price',
            style: const TextStyle(fontSize: 15, color: Colors.red),
          ),
        ],
      )
    ],
  );
}

