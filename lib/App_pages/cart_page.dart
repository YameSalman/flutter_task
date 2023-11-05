import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/resources/images.dart';

import '../Styles/colors_style.dart';
import '../Styles/text_style.dart';
import '../Widgets/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGround,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), // Adjust the radius as needed
                  color: white,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '(352)',
                          style: blueBold14,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'عنصر',
                          style: blackMedium14,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'الإجمالي',
                          style: blueBold14,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          '70,048',
                          style: blackMedium14,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          'ج.م',
                          style: blackMedium12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const CartCard(),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        Images.cartImage,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            'هل تمتلك كوبون للخصم ؟',
                            style: whiteBold16,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Handle button 1 click
                              },
                              child: Text('أدخل رقم الكوبون'),
                            ),
                            SizedBox(width: 16), // Adjust the space between buttons
                            ElevatedButton(
                              onPressed: () {
                                // Handle button 2 click
                              },
                              child: Text('تطبيق'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: 122,
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), // Adjust the radius as needed
                  color: white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'الإجمالي',
                          style: blueBold14,
                        ),
                        Row(
                          children: [
                            Text(
                              '70,048',
                              style: blackMedium14,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'ج.م',
                              style: blackMedium12,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'الضرائب',
                          style: blueBold14,
                        ),
                        Row(
                          children: [
                            Text(
                              '5.00',
                              style: blackMedium14,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'ج.م',
                              style: blackMedium12,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      color: normalBlack,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your button action here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: blueLogin, // Set the background color
                            ),
                            child: Text('إتمام الشراء', style: whiteBold16),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
