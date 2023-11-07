import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_task/Styles/text_style.dart';

import '../Styles/colors_style.dart';

class HomeItems extends HookWidget {
  final String name, image, price;
  final bool isFav;
  const HomeItems({
    super.key,
    required this.name,
    required this.image,
    required this.isFav,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 115,
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: HookBuilder(builder: (context) {
            final favorite = useState<bool>(false);
            return IconButton(
              onPressed: () {
                favorite.value = !favorite.value;
              },
              icon: Icon(favorite.value ? Icons.favorite : Icons.favorite_border,
                  color: favorite.value ? orange : Colors.grey),
            );
          }),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
          color: Colors.white,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'قلادة نسائية مطلية بالذهب على شكل ... ',
                style: blackMedium12,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(price, style: blueBold14),
                      Text('ج.م', style: blueMedium12),
                    ],
                  ),
                  const Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
