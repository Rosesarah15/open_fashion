import 'package:flutter/material.dart';

class Search1 extends StatelessWidget {
  Search1({Key? key}) : super(key: key);

  final List<String> popularSearchTerms = [
    'Trend',
    'Dress',
    'Bag',
    'T-shirt',
    'Beauty',
    'Accessories',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
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
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: Text(
              'Popular search terms',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 30),
          ListView.builder(
            shrinkWrap: true,
            itemCount: popularSearchTerms.length,
            itemBuilder: (context, index) {
              final term = popularSearchTerms[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 23),
                child: Text(
                  term,
                  style: const TextStyle(fontSize: 16),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
