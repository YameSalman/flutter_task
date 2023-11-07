import 'package:flutter/material.dart';
import 'package:flutter_task/Styles/colors_style.dart';
import 'package:flutter_task/resources/images.dart';
import 'CarouselWidget.dart';
import 'home_cateories__list.dart';
import 'home_items_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List list = [
      {
        'name': 'أزياء',
        'image': Images.categoryImage,
      },
      {
        'name': 'نسائى',
        'image': Images.categoryImage,
      },
      {
        'name': 'رجالى',
        'image': Images.categoryImage,
      },
      {
        'name': 'ألعاب',
        'image': Images.categoryImage,
      },
      {
        'name': 'أزياء',
        'image': Images.categoryImage,
      },
      {
        'name': 'نسائى',
        'image': Images.categoryImage,
      },
      {
        'name': 'رجالى',
        'image': Images.categoryImage,
      },
      {
        'name': 'ألعاب',
        'image': Images.categoryImage,
      },
    ];
    List list2 = [
      {
        'name': 'أزياء',
        'image': Images.categoryImage,
        'isFav': true,
        'price': '125',
      },
      {
        'name': 'نسائى',
        'image': Images.categoryImage,
        'isFav': false,
        'price': '125',
      },
      {
        'name': 'رجالى',
        'image': Images.categoryImage,
        'isFav': true,
        'price': '125',
      },
      {
        'name': 'ألعاب',
        'image': Images.categoryImage,
        'isFav': false,
        'price': '125',
      },
      {
        'name': 'أزياء',
        'image': Images.categoryImage,
        'isFav': true,
        'price': '125',
      },
      {
        'name': 'نسائى',
        'image': Images.categoryImage,
        'isFav': true,
        'price': '125',
      },
      {
        'name': 'رجالى',
        'image': Images.categoryImage,
        'isFav': true,
        'price': '125',
      },
      {
        'name': 'ألعاب',
        'image': Images.categoryImage,
        'isFav': true,
        'price': '125',
      },
    ];

    return Scaffold(
      backgroundColor: backGround,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 170,
                child: CarouselSliderPage(),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 100,
              child: HomeCateoriesList(
                list: list,
              ),
            ),
            HomeItemsList(
              list: list2,
              title: 'وصل حديثا',
            ),
            HomeItemsList(
              list: list2,
              title: 'الأكثر شعبية',
            )
          ],
        ),
      ),
    );
  }
}
