import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/resources/images.dart';

import '../Styles/colors_style.dart';
import '../Styles/text_style.dart';

class ItemPage extends HookWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGround,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(8), // Adjust the radius to control the rounding
                bottomRight: Radius.circular(8),
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      Images.categoryImage,
                      width: double.infinity,
                      height: 253,
                      fit: BoxFit.cover,
                    ),
                    HookBuilder(builder: (context) {
                      final favourite = useState<bool>(false);
                      return IconButton(
                          splashColor: Colors.transparent,
                          onPressed: () {
                            favourite.value = !favourite.value;
                          },
                          icon: Icon(
                            favourite.value ? Icons.favorite : Icons.favorite_border,
                            color: favourite.value ? orange : Colors.grey,
                          ));
                    })
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 9),
                  width: double.infinity,
                  child: Text(
                    'قلادة نسائية مطلية بالذهب على شكل شكل إنفينيتي مرصعة بالتوباز الأبيض من ديفاز دايموند',
                    textAlign: TextAlign.start,
                    style: blackMedium12,
                    textScaleFactor: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Text(
                      '199.00',
                      style: blueBold14,
                    ),
                    Text(
                      'ج.م',
                      style: blueMedium12,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your button action here
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0, minimumSize: const Size.fromHeight(40),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                          backgroundColor: blueLogin, // Set the background color
                        ),
                        child: Text('نقل إلى سلة التسوق', style: whiteBold16),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
