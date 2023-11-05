import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import '../Styles/colors_style.dart';
import '../Styles/text_style.dart';
import '../resources/images.dart';

class CartCard extends HookWidget {
  const CartCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return HookBuilder(builder: (context) {
            final itemCount = useState<int>(0);
            return Container(
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
                          GestureDetector(
                            onTap: () {
                              itemCount.value++;
                            },
                            child: Container(
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
                          ),
                          SizedBox(
                            width: 47,
                            height: 38,
                            child: Center(
                              child: Text(
                                '${itemCount.value}',
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (itemCount.value > 0) itemCount.value--;
                            },
                            child: Container(
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
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              (69.650 * itemCount.value).toStringAsFixed(2),
                              style: blackMedium16,
                            ),
                            Text(
                              'ج.م',
                              style: blackMedium12,
                            ),
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
                          color: orange,
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
          });
        },
      ),
    );
  }
}
