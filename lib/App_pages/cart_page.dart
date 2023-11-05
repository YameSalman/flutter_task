import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/resources/images.dart';

import '../Styles/colors_style.dart';
import '../Styles/text_style.dart';

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
              Expanded(
                  child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    height: 152,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6), // Adjust the radius as needed
                      color: white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 111,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(6), // Adjust the radius as needed
                                ),
                                child: Image.asset(
                                  Images.categoryImage,
                                  width: 123,
                                  height: 111,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 9),
                                    width: 188,
                                    child: Text(
                                      'عطر برائحة القرنفل والسدر الجبلي مناسب للسهرات والهدايا مغلف في زجاجة مرصعة بالذهب',
                                      textAlign: TextAlign.start,
                                      style: blackMedium12,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 14),
                                    child: Row(
                                      children: [
                                        Text(
                                          '199.00',
                                          style: blueBold14,
                                        ),
                                        Text(
                                          'ج.م',
                                          style: blueBold12,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(height: 1, color: normalBlack),
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 38,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    color: blueLogin,
                                    borderRadius: const BorderRadius.only(bottomRight: Radius.circular(6)),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 24, // You can adjust the icon size as needed
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 47,
                                  height: 38,
                                  child: Center(
                                    child: Text(
                                      '350',
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 38,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    color: blueLogin,
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 24, // You can adjust the icon size as needed
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '69,650',
                                    style: blackMedium16,
                                  ),
                                  Text(''),
                                ],
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(6),
                              ),
                              child: Container(
                                width: 38,
                                height: 38,
                                color: Colors.orange,
                                child: SvgPicture.asset(
                                  Images.removeImage, // Replace with the URL of your SVG image
                                  width: 7,
                                  height: 7,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
