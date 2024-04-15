import 'package:flutter/material.dart';
import 'package:open_fashion/add_new_address/screen/add_new_address_screen.dart';
import 'package:open_fashion/commons/widgets/clickable_icon_text_row_widget.dart';

class Checkout2 extends StatelessWidget {
  const Checkout2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 15),
          checkoutText('CHECKOUT', Colors.black, 20),
          Image.asset('assets/icons/home_divider.png'),
          const SizedBox(height: 20),
          _buildCircularTextFieldWithDropdown(
              "SHIPPING ADDRESS", "Add shipping adress"),
          const SizedBox(height: 10),
          _buildCircularTextFieldWithDropdown(
              "SHIPPING METHOD", "Pickup at store"),
          const SizedBox(height: 15),
          _buildCircularTextFieldWithDropdown(
              "PAYMENT METHOD", "select pickup method"),
          const SizedBox(height: 160),
          checkoutTotal('TOTAL', Colors.black, 16, 240),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddNewAddress()));
            },
            child: clickableIconTextRow('assets/icons/home_shopping bag.png',
                'PLACE ORDER', 18, context),
          ),
        ],
      ),
    );
  }
}

Widget checkoutText(String text, Color color, double fontsize) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontsize,
      color: color,
    ),
  );
}

Widget _buildCircularTextFieldWithDropdown(String label, String hintText) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: hintText,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(Icons.arrow_drop_down),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget checkoutTotal(String text, Color color, double fontsize, int price) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: fontsize,
            color: color,
          ),
        ),
        Text(
          '\$$price',
          style: const TextStyle(color: Colors.red),
        )
      ],
    ),
  );
}
