import 'package:flutter/material.dart';
import 'package:open_fashion/category_list_view/screen/category_listview_screen.dart';
import 'package:open_fashion/commons/fonts/app_fonts.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/category_grid_view/widgets/product_card.dart';
import 'package:open_fashion/commons/widgets/footer_widget.dart';
import 'package:open_fashion/commons/widgets/page_navigation_row_widget.dart';

class CategoryGridCoats extends StatelessWidget {
  const CategoryGridCoats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _buildCategorygridButtons(context),
            const SizedBox(height: 13),
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
            const SizedBox(height: 18),
            GridView.builder(
              itemCount: products.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 18,
                  childAspectRatio: 0.75),
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                  image: products[index].image,
                  productname: products[index].productname,
                  productdescription: products[index].productdescription,
                  price: products[index].price,
                );
              },
            ),
            const SizedBox(height: 160),
            pageNavigationRow(),
            const SizedBox(height: 30),
            buildFooter(context),
          ],
        ),
      ),
    );
  }
}

Widget _buildCategorygridButtons(BuildContext context) {
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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'New',
              style: AppFonts.title,
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CategoryListviewPage()));
        },
        child: _buildCircularContainerWithImage(
            Image.asset('assets/icons/Listview.png'), context),
      ),
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

final List<ProductProperties> products = [
  ProductProperties(
    image: 'assets/images/creamsweater.png',
    productname: '21WN',
    productdescription: 'reversible angora cardigan',
    price: 120,
  ),
  ProductProperties(
    image: 'assets/images/creamjacket.png',
    productname: 'lame',
    productdescription: 'reversible angora cardigan',
    price: 120,
  ),
  ProductProperties(
      image: 'assets/images/blackjacket.png',
      productname: '21WN',
      productdescription: 'reversible angora cardigan',
      price: 120),
  ProductProperties(
      image: 'assets/images/brownsweaterr.png',
      productname: '21WN',
      productdescription: 'reversible angora cardigan',
      price: 120),
  ProductProperties(
      image: 'assets/images/jackety.png',
      productname: '21WN',
      productdescription: 'reversible angora cardigan',
      price: 120),
  ProductProperties(
      image: 'assets/images/creamjacket.png',
      productname: '21WN',
      productdescription: 'reversible angora cardigan',
      price: 120),
  ProductProperties(
      image: 'assets/images/blackjacket.png',
      productname: '21WN',
      productdescription: 'angora cardigan',
      price: 120),
  ProductProperties(
      image: 'assets/images/brownsweaterr.png',
      productname: 'lame',
      productdescription: 'angora cardigan',
      price: 120),
  ProductProperties(
      image: 'assets/images/jackety.png',
      productname: '21WN',
      productdescription: 'reversible angora cardigan',
      price: 120),
  ProductProperties(
      image: 'assets/images/creamjacket.png',
      productname: 'lame',
      productdescription: 'angora cardigan',
      price: 120),
];

class ProductProperties {
  final String image;
  final String productname;
  final int price;
  final String productdescription;

  ProductProperties(
      {required this.image,
      required this.productname,
      required this.price,
      required this.productdescription});
}
