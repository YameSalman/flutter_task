import 'package:flutter/material.dart';
import 'package:flutter_task/Styles/text_style.dart';

class HomeCateories extends StatelessWidget {
  final String name, image;
  const HomeCateories({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            image,
          ),
          radius: 30,
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          name,
          style: blackMedium12,
        )
      ],
    );
  }
}
