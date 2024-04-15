import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/commons/widgets/footer_widget.dart';
import 'package:open_fashion/commons/widgets/page_navigation_row_widget.dart';


class SearchView extends StatelessWidget {
  SearchView({super.key});

  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/images/greydress.png',
      'productname': '21WN',
      'productdescription': 'Reversible Angora Cardigan',
      'price': 120,
    },
    {
      'image': 'assets/images/blacksuitdress.png',
      'productname': 'lame',
      'productdescription': 'Reversible Angora Cardigan',
      'price': 120,
    },
    {
      'image': 'assets/images/blackdress.png',
      'productname': 'lame',
      'productdescription': 'Reversible Angora Cardigan',
      'price': 120,
    },
    {
      'image': 'assets/images/peachdress.png',
      'productname': 'lame',
      'productdescription': 'Reversible Angora Cardigan',
      'price': 120,
    },
    {
      'image': 'assets/images/blackpartydress.png',
      'productname': 'lame',
      'productdescription': 'Reversible Angora Cardigan',
      'price': 120,
    },
    {
      'image': 'assets/images/paleblackdress.png',
      'productname': 'lame',
      'productdescription': 'Reversible Angora Cardigan',
      'price': 120,
    },
    {
      'image': 'assets/images/creamdress.png',
      'productname': 'lame',
      'productdescription': 'Reversible Angora Cardigan',
      'price': 120,
    },
    {
      'image': 'assets/images/blackdress.png',
      'productname': 'lame',
      'productdescription': 'Reversible Angora Cardigan',
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
              const SizedBox(height: 25),
              _buildCategorygridButtons(),
              const SizedBox(height: 30),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 6,
                      crossAxisSpacing: 6,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return productCard(
                      product['image'],
                      product['productname'],
                      product['productdescription'],
                      product['price'],
                    );
                  }),
              const SizedBox(height: 50),
              pageNavigationRow(),
              const SizedBox(height: 30),
              buildFooter(context),
            ],
          )),
    );
  }
}

Widget _buildCategorygridButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Text(
        '8 RESULT OF DRESS',
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
      _buildCircularContainerWithImage(
          Image.asset('assets/icons/Listview.png')),
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

Widget productCard(
    String image, String productname, String productdescription, int price) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        children: [
          Image.asset(
            image,
            width: 160,
            height: 200,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Image.asset('assets/icons/Heart.png'),
          ),
        ],
      ),
      Text(
        productname,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      Text(
        productdescription,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
      Text(
        '\$$price',
        style: const TextStyle(fontSize: 15, color: Colors.red),
      ),
    ],
  );
}

