import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_task/Styles/colors_style.dart';

import '../resources/images.dart';

final List<String> imageList = [
  Images.categoryImage,
  Images.categoryImage,
  Images.categoryImage,
  Images.categoryImage,
  Images.categoryImage,
];

class CarouselSliderPage extends HookWidget {
  const CarouselSliderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HookBuilder(builder: (context) {
      final currentIndex = useState<int>(0);
      return Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 140.0,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                currentIndex.value = index;
              },
            ),
            items: imageList.map((imageUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return SizedBox(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) => Container(
                width: 13,
                height: 3,
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: currentIndex.value == index ? blueLogin : Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
        ],
      );
    });
  }
}
