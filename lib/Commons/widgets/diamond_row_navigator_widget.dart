import 'package:flutter/material.dart';

class DiamondRowContainers extends StatelessWidget {
  const DiamondRowContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildThreeContainers(),
        _buildThreeContainers(),
        _buildThreeContainers(),
      ],
    );
  }

  Widget _buildThreeContainers() {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: CustomPaint(
        painter: DiamondPainter(),
      ),
    );
  }
}

class DiamondPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final Paint borderPaint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(0, size.height / 2)
      ..close();

    canvas.drawPath(path, paint);
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Three Diamonds'),
//       ),
//       body: Center(
//         child: DiamondRowContainers(),
//       ),
//     ),
//   ));
// }
