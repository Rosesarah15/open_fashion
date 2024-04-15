import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_fashion/commons/theme/app_colors.dart';
import 'package:open_fashion/search/screen/search_screen.dart';

class PaymentSuccesses extends StatelessWidget {
  const PaymentSuccesses({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: AppColors.newArrivalColor,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Column(
            children: [
              const SizedBox(height: 60),
              paymentText('PAYMENT SUCCESS'),
              const SizedBox(height: 45),
              Stack(
                children: [
                  Positioned(
                    top: -1,
                    left: 166,
                    child: Image.asset('assets/icons/smallstar.png'),
                  ),
                  Positioned(
                    top: 0,
                    right: 150,
                    child: Image.asset('assets/icons/star.png'),
                  ),
                  Center(
                    child: Image.asset('assets/icons/checked.png'),
                  ),
                ],
              ),
              const SizedBox(height: 45),
              paymentText('Your payment was success'),
              const SizedBox(height: 10),
              paymentText('Payment ID 15263541'),
              const SizedBox(height: 18),
              Image.asset('assets/icons/home_divider.png'),
              const SizedBox(height: 18),
              paymentText('Rate your purchase'),
              const SizedBox(height: 12),
              buildRowEmojis(),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildNavigationSubmit(),
                  const SizedBox(width: 13),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Screen()));
                      },
                      child: buildNavigationHome()),
                ],
              )
            ],
          ),
        ]),
      ),
      Positioned(
        top: 10,
        right: 10,
        child: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
      ),
    ]);
  }
}

Text paymentText(String text) {
  return Text(
    text,
  );
}

Widget buildRowEmojis() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('assets/icons/Disappointedemoji.png'),
      Image.asset('assets/icons/Happyemoji.png'),
      Image.asset('assets/icons/heartemoji.png'),
    ],
  );
}

Widget buildNavigationSubmit() {
  return Container(
    width: 170,
    height: 50,
    color: Colors.black,
    child: const Center(
      child: Text(
        'SUBMIT',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget buildNavigationHome() {
  return Container(
    width: 190,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.grey,
      ),
    ),
    child: const Center(
      child: Text(
        'BACK TO HOME',
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}
