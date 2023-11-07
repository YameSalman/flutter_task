import 'package:flutter/material.dart';

import 'home_cateories.dart';

class HomeCateoriesList extends StatelessWidget {
  final List list;
  const HomeCateoriesList({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      reverse: true,
      itemCount: list.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, i) {
        return HomeCateories(
          image: list[i]['image'],
          name: list[i]['name'],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 8,
        );
      },
    );
  }
}
