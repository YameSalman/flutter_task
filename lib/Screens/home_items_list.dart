import 'package:flutter/material.dart';
import 'package:flutter_task/Styles/text_style.dart';
import 'home_items.dart';

class HomeItemsList extends StatelessWidget {
  final List list;
  final String title;
  const HomeItemsList({
    super.key,
    required this.list,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: blackBold14,
                ),
                Text(
                  'عرض الكل',
                  style: blackMedium12,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 210,
            width: double.infinity,
            child: ListView.separated(
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return SizedBox(
                  width: 135,
                  child: HomeItems(
                    image: list[i]['image'],
                    name: list[i]['name'],
                    isFav: list[i]['isFav'],
                    price: list[i]['price'],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 12,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
