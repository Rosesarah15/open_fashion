import 'package:flutter/material.dart';
import 'package:open_fashion/add_new_card/screen/add_new_card_screen.dart';
import 'package:open_fashion/commons/widgets/navigation_footer_widget.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text(
              'ADD SHIPPING ADDRESS',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Image.asset('assets/icons/home_divider.png'),
            const SizedBox(height: 45),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'First Name',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      textFieldInput(),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Last Name',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      textFieldInput(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  textFieldInput(),
                  const SizedBox(height: 25),
                  const Text(
                    'City',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  textFieldInput(),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'State',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            textFieldInput(),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'ZIP code',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            textFieldInput(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  textFieldInput(),
                ],
              ),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddNewCard()));
              },
              child: const BuildFooterNavigation(
                text: 'ADD NOW',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container textFieldInput() {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
