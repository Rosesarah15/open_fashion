import 'package:flutter/material.dart';
import 'package:open_fashion/commons/widgets/footer_widget.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

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
            const Text(
              'PAGE NOT FOUND',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 60),
            Image.asset('assets/icons/dammy.png'),
            const SizedBox(height: 30),
            textPageNotFound("We can't find the page you"),
            textPageNotFound("looking for, it will return to the"),
            const SizedBox(height: 35),
            _buildNavigationContainer(),
            const SizedBox(height: 50),
            buildFooter(context),
          ],
        ),
      ),
    );
  }

  Text textPageNotFound(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 15, color: Colors.black),
    );
  }
}

Widget _buildNavigationContainer() {
  return InkWell(
    onTap: () {},
    child: Container(
      width: 200,
      height: 40,
      color: Colors.black,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          SizedBox(width: 8),
          Text(
            'Back',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}
