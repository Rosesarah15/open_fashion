import 'package:flutter/material.dart';
import 'package:open_fashion/Commons/theme/app_colors.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: AppColors.newArrivalColor,
      child: Column(
        children: [
          const SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildMenuText('WOMEN', 17, Colors.black),
              _buildMenuText('MAN', 17, Colors.black),
              _buildMenuText('KIDS', 17, Colors.black),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 10),
              Image.asset('assets/icons/home_divider.png'),
              Container(
                width: 200,
                height: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(height: 30),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _menuItems.length,
              itemBuilder: (context, index) {
                final menuItem = _menuItems[index];
                return _MenuItemWithText(
                    text: menuItem['text'], items: menuItem['items']
                    );
              },
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildMenuText(String text, double size, Color color) {
  return Text(
    text,
    style: TextStyle(fontSize: size, color: color),
  );
}

class _MenuItemWithText extends StatefulWidget {
  final String text;
  final List<String> items;

  const _MenuItemWithText({required this.text, required this.items});

  @override
  State<_MenuItemWithText> createState() => _MenuItemWithTextState();
}

class _MenuItemWithTextState extends State<_MenuItemWithText> {
  // ignore: unused_field
  late bool _isDropdownExpanded;
  String? _selectedItem;

  @override
  void initState() {
    super.initState();
    _isDropdownExpanded = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(widget.text),
            const SizedBox(width: 10),
            _buildDropdownMenu(widget.items),
          ],
        ),
      ],
    );
  }

  Widget _buildDropdownMenu(List<String> items) {
    return DropdownButton<String>(
      value: _selectedItem,
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _selectedItem = newValue;
        });
      },
      underline: Container(),
    );
  }
}

final List<Map<String, dynamic>> _menuItems = [
  {
    'text': 'New',
    'items': ['llll', 'kkkk', 'lkop']
  },
  {
    'text': 'Apparel',
    'items': ['llll', 'kkkk', 'lkop']
  },
  {
    'text': 'Bag',
    'items': ['llll', 'kkkk', 'lkop']
  },
  {
    'text': 'Shoes',
    'items': ['llll', 'kkkk', 'lkop']
  },
  {
    'text': 'Beauty',
    'items': ['llll', 'kkkk', 'lkop']
  },
  {
    'text': 'Accessories',
    'items': ['llll', 'kkkk', 'lkop']
  },
];
