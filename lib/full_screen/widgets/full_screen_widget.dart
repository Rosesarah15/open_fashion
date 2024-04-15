import 'package:flutter/material.dart';

class FullScreens extends StatelessWidget {
  FullScreens({
    super.key,
  });

  final List<String> images = [
    'assets/images/womancoat.png',
    'assets/images/ladysnapshot.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Stack(
          children: [
            Positioned(
                top: -15,
                right: 15,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
                )),
            const SizedBox(height: 20),
            Positioned.fill(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: images.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 10);
                },
                itemBuilder: (BuildContext context, int index) {
                  return _buildProductImages(images[index]);
                },
              ),
            ),
            // Small Containers
            Positioned(
              top: 0,
              right: 20,
              bottom: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(
                  5,
                  (index) => buildDiamondContainer(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildProductImages(String image) {
  return Image.asset(
    image,
    width: double.infinity,
    fit: BoxFit.cover,
  );
}

Widget buildDiamondContainer() {
  return Container(
    width: 9,
    height: 9,
    margin: const EdgeInsets.symmetric(vertical: 5),
    child: CustomPaint(
      painter: DiamondPainter(),
    ),
  );
}

class DiamondPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(0, size.height / 2)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
