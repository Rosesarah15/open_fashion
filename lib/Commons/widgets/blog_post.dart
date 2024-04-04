import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/widgets/contact.dart';

class BlogPost extends StatelessWidget {
  const BlogPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 30),
            Image.asset(
              'assets/images/manflowers.png',
            ),
            const SizedBox(height: 18),
            blogPostText(
              '2021 STYLE GUIDE: THE BIGGEST FALL TRENDS',
              16,
            ),
            const SizedBox(height: 10),
            blogPostText(
              "You guys know how much i love mixing high\n and low-end - it's the best way to get the\nmost bank for your buck while still elevating\nyour wardrobe. The same goes for bags!\nAnd honestly they are probably the best\npieces to mix and match.\nI truly think the key\nto completing a look is with a great bag and I\nfound so many this year that I wanted to share\naround up of my most worn handbags",
              16,
            ),
            const SizedBox(height: 14),
            Image.asset('assets/images/brownbag.png'),
            const SizedBox(height: 25),
            buildDiamondRow(),
            const SizedBox(height: 15),
            blogPostText(
                "I found this Saint Lauret Canvas Handbag this\nsummer and immediately fell in love.The\nneutral fabrics are so beautiful and i like how\nthis handbag can carry into fall. The mini\nFendi bucket bag with the sheer fabric is so\nfun and such a statement bag. Also this\nDeMelier off white bag is so cute to carry to\na dinner with you or going out, it's small but\nnot too small to fit your phone and keys still.",
                16),
            const SizedBox(height: 30),
            _buildblogText('Posted by Open Fashion |', '3 Days ago'),
            const SizedBox(height: 20),
            _buildElevatedButtonRow(),
            const SizedBox(height: 30),
            buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildblogText(String text, String time) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        ),
        const SizedBox(width: 5),
        Text(
          time,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        )
      ],
    );
  }

  Widget _buildElevatedButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          child: const Text(
            '#Fashion',
            style: TextStyle(color: Colors.black),
          ),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {},
          child: const Text(
            '#Tips',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }

  Text blogPostText(
    String text,
    double fontsize,
  ) {
    return Text(
      text,
      style: TextStyle(fontSize: fontsize, color: Colors.black),
    );
  }
}

Widget buildDiamondRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _buildDiamondContainer(),
      const SizedBox(width: 5),
      _buildDiamondContainer(),
      const SizedBox(width: 5),
      _buildDiamondContainer(),
    ],
  );
}

Widget _buildDiamondContainer() {
  return SizedBox(
    width: 10,
    height: 10,
    child: CustomPaint(
      painter: DiamondPainter(),
    ),
  );
}

class DiamondPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height / 2);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

Widget blogPostText(
  String text,
  double fontsize, {
  bool redText = false, // Default to false for black text
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontsize,
      color: redText ? Colors.red : Colors.black,
    ),
  );
}
