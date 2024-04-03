import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';
import 'package:open_fashion/Commons/widgets/contact.dart';
import 'package:open_fashion/Screens/product_detailpage2.dart';

class CollectionDetail extends StatelessWidget {
  const CollectionDetail({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildImageTextHeart(
                  Image.asset('assets/images/collectiondetaildress.png'),
                  'October\n reversible angora cardigan',
                  '100'),
              _buildImageTextHeart(
                  Image.asset('assets/images/collectiondetailboot.png'),
                  'October\n reversible angora cardigan',
                  '100'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildImageTextHeart(
                  Image.asset('assets/images/collectiondetailpins.png'),
                  'October\n reversible angora cardigan',
                  '100'),
              _buildImageTextHeart(
                  Image.asset('assets/images/collectiondetailrings.png'),
                  'October\n reversible angora cardigan',
                  '100'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductDetailPage2(),
                      ));
                },
                child: _buildImageTextHeart(
                    Image.asset('assets/images/collectiondetailring.png'),
                    'October\n reversible angora cardigan',
                    '100'),
              ),
              _buildImageTextHeart(
                  Image.asset('assets/images/collectiondetailrinng.png'),
                  'October\n reversible angora cardigan',
                  '100'),
            ],
          ),
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

Widget _buildImageTextHeart(Image image, String text, String number) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Stack(
        children: [
          image,
          Positioned(
            bottom: 10,
            right: 10,
            child: Image.asset('assets/icons/Heart.png'),
          ),
        ],
      ),
      Text(
        text,
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
      Text(
        '\$$number',
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
