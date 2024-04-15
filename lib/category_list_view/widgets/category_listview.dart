import 'package:flutter/material.dart';
import 'package:open_fashion/category_grid_view/screen/category_gridviewcoats.dart';
import 'package:open_fashion/commons/fonts/app_fonts.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/commons/widgets/footer_widget.dart';
import 'package:open_fashion/commons/widgets/page_navigation_row_widget.dart';

class CategoryListview extends StatelessWidget {
  CategoryListview({super.key});

  final List<Map<String, dynamic>> apparelList = [
    {
      'imagePath': 'assets/images/creamjacket.png',
      'headerText': 'LAMEREI',
      'productdescription': 'Recycle Boucle Cardigan Pink',
      'price': 120,
    },
    {
      'imagePath': 'assets/images/creamsweater.png',
      'headerText': 'LAMEREI',
      'productdescription': 'Recycle Boucle Cardigan Pink',
      'price': 120,
    },
    {
      'imagePath': 'assets/images/blackjacket.png',
      'headerText': 'LAMEREI',
      'productdescription': 'Recycle Boucle Cardigan Pink',
      'price': 120,
    },
    {
      'imagePath': 'assets/images/brownsweaterr.png',
      'headerText': 'LAMEREI',
      'productdescription': 'Recycle Boucle Cardigan Pink',
      'price': 120,
    },
    {
      'imagePath': 'assets/images/jackety.png',
      'headerText': 'LAMEREI',
      'productdescription': 'Recycle Boucle Cardigan Pink',
      'price': 120,
    },
    {
      'imagePath': 'assets/images/creamjacket.png',
      'headerText': 'LAMEREI',
      'productdescription': 'Recycle Boucle Cardigan Pink',
      'price': 120,
    },
    {
      'imagePath': 'assets/images/blackjacket.png',
      'headerText': 'LAMEREI',
      'productdescription': 'Recycle Boucle Cardigan Pink',
      'price': 120,
    },
    {
      'imagePath': 'assets/images/creamjacket.png',
      'headerText': 'LAMEREI',
      'productdescription': 'Recycle Boucle Cardigan Pink',
      'price': 120,
    },
    {
      'imagePath': 'assets/images/jackety.png',
      'headerText': 'LAMEREI',
      'productdescription': 'Recycle Boucle Cardigan Pink',
      'price': 120,
    },
    {
      'imagePath': 'assets/images/brownsweaterr.png',
      'headerText': 'LAMEREI',
      'productdescription': 'Recycle Boucle Cardigan Pink',
      'price': 120,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _buildCategorygridButtons(context),
            const SizedBox(height: 15),
            const SizedBox(height: 25),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: apparelList.length,
                itemBuilder: (context, index) {
                  final item = apparelList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: _buildImageIconText(
                      Image.asset(item['imagePath']!),
                      item['headerText']!,
                      item['productdescription']!,
                      item['price']!,
                    ),
                  );
                }),
            const SizedBox(height: 55),
            pageNavigationRow(),
            const SizedBox(height: 30),
            buildFooter(context),
          ],
        ),
      ),
    );
  }
}

Widget _buildCategorygridButtons(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        '4500 APPAREL',
        style: AppFonts.subTitle,
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
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategoryGridCoatsPage()));
          },
          child: _buildCircularContainerWithImage(
              Image.asset('assets/icons/square.png'), context)),
      _buildCircularContainerWithImage(
          Image.asset('assets/icons/Filter.png'), context),
    ],
  );
}

Widget _buildCircularContainerWithImage(Image image, BuildContext context) {
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

Widget _buildImageIconText(
  Image image,
  String productname,
  String productdescription,
  int price,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18),
    child: Row(
      children: [
        image,
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productname,
              style: AppFonts.title,
            ),
            const SizedBox(height: 20),
            Text(
              productdescription,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 16,
                ),
                const SizedBox(width: 3),
                Text(
                  '4.8 Ratings',
                  style: AppFonts.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Text(
                  'Size',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                const SizedBox(width: 8),
                _buildCircularContainers('S'),
                const SizedBox(width: 6),
                _buildCircularContainers('M'),
                const SizedBox(width: 6),
                _buildCircularContainers('L'),
                const SizedBox(width: 40),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Image.asset('assets/icons/Heart.png')),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildCircularContainers(String text) {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.grey,
        width: 2.0,
      ),
    ),
    child: Center(child: Text(text)),
  );
}
