import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
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
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final menuItem = menuItems[index];
                return _MenuListItem(text: menuItem['text'] as String);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: imageText('assets/icons/Call.png', '(786) 713-8616'),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: imageText('assets/icons/Location.png', 'Store locator'),
          ),
          const SizedBox(height: 25),
          Image.asset('assets/icons/home_divider.png'),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/Twitter .png'),
              const SizedBox(width: 10),
              Image.asset('assets/icons/Instagram (2).png'),
              const SizedBox(width: 10),
              Image.asset('assets/icons/YouTube .png'),
            ],
          ),
          const SizedBox(height: 60)
        ],
      ),
    );
  }

  Row imageText(String image, String text) {
    return Row(
      children: [
        Image.asset(image),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        )
      ],
    );
  }

  Widget _buildMenuText(String text, double size, Color color) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color),
    );
  }
}

class _MenuListItem extends StatefulWidget {
  final String text;

  const _MenuListItem({Key? key, required this.text}) : super(key: key);

  @override
  State<_MenuListItem> createState() => _MenuListItemState();
}

class _MenuListItemState extends State<_MenuListItem> {
  late String _selectedItem = 'Option 1';
  late bool _isDropdownExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Expanded(child: Text(widget.text)),
          const SizedBox(width: 10),
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedItem,
              items: _isDropdownExpanded
                  ? ['Option 1', 'Option 2', 'Option 3']
                      .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList()
                  : null,
              onChanged: (String? newValue) {
                setState(() {
                  if (newValue != null) _selectedItem = newValue;
                });
              },
              onTap: () {
                setState(() {
                  _isDropdownExpanded = !_isDropdownExpanded;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> menuItems = [
  {'text': 'New'},
  {'text': 'Apparel'},
  {'text': 'Bag'},
  {'text': 'Shoes'},
  {'text': 'Beauty'},
  {'text': 'Accessories'},
];
