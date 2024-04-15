import 'package:flutter/material.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/commons/widgets/footer_widget.dart';

class CollectionDetail extends StatelessWidget {
  CollectionDetail({super.key});

  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/images/collectiondetaildress.png',
      'productname': 'October',
      'productdescription': 'reversible angora cardigan',
      'price': 100,
    },
    {
      'image': 'assets/images/collectiondetailboot.png',
      'productname': 'October',
      'productdescription': 'reversible angora cardigan',
      'price': 100,
    },
    {
      'image': 'assets/images/collectiondetailpins.png',
      'productname': 'October',
      'productdescription': 'reversible angora cardigan',
      'price': 100,
    },
    {
      'image': 'assets/images/collectiondetailrings.png',
      'productname': 'October',
      'productdescription': 'reversible angora cardigan',
      'price': 100,
    },
    {
      'image': 'assets/images/collectiondetailring.png',
      'productname': 'October',
      'productdescription': 'reversible angora cardigan',
      'price': 100,
    },
    {
      'image': 'assets/images/collectiondetailrinng.png',
      'productname': 'October',
      'productdescription': 'reversible angora cardigan',
      'price': 100,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.homeExploreButtonColor,
      child: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Stack(children: [
            Image.asset('assets/logos/ten.png'),
            Image.asset('assets/images/octoberlady.png'),
            Image.asset('assets/logos/tenn.png'),
          ]),
          const SizedBox(height: 40),
          GridView.builder(
              itemCount: products.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                return productCard(
                    products[index]['image'],
                    products[index]['productname'],
                    products[index]['productdescription'],
                    products[index]['price']);
              }),
          const SizedBox(height: 40),
          const Text(
            'YOU MAY ALSO LIKE',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Image.asset(
            'assets/icons/home_divider.png',
            color: Colors.white,
          ),
          const SizedBox(height: 40),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 25),
                _buildImageScrollText('BLACK COLLECTION',
                    Image.asset('assets/images/octobercollection2.png')),
                const SizedBox(width: 13),
                _buildImageScrollText('HAE BY HAEKIN',
                    Image.asset('assets/images/octobercollection3.png')),
                const SizedBox(width: 13),
                _buildImageScrollText(
                    'LOU', Image.asset('assets/images/octoberlady.png')),
              ],
            ),
          ),
          const SizedBox(height: 70),
          buildFooter(context),
        ],
      )),
    );
  }
}

Widget productCard(
    String image, String productname, String productdescription, int price) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Stack(
        children: [
          Image.asset(
            image,
            width: double.infinity,
            height: 220,
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
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
      Text(
        productdescription,
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
      Text(
        '\$$price',
        style: const TextStyle(fontSize: 15, color: Colors.red),
      ),
    ],
  );
}

Widget _buildImageScrollText(String text, Image image) {
  return Column(
    children: [
      image,
      const SizedBox(height: 10),
      Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      )
    ],
  );
}
