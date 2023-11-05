import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_task/App_pages/cart_page.dart';
import 'package:flutter_task/Auth_pages/register_page.dart';
import 'package:flutter_task/resources/images.dart';

import '../Styles/colors_style.dart';
import '../Styles/decoration_tyle.dart';
import '../Styles/text_style.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userNameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final userNameKey = useMemoized(() => GlobalKey<FormState>());
    final passwordKey = useMemoized(() => GlobalKey<FormState>());

    return Scaffold(
      backgroundColor: backGround,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 54),
                  Image.asset(
                    Images.loginImage,
                    width: 128,
                    height: 96,
                  ), // Replace with your image path
                  const SizedBox(height: 38),
                  Text(
                    'تسجيل الدخول',
                    style: orangeBold,
                  ),
                  const SizedBox(height: 13),
                  Text(
                    'من فضلك قم بالدخول لإتمام الشراء',
                    style: blackMedium14,
                  ),
                  const SizedBox(height: 48),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'اسم المستخدم',
                        style: blackMedium14,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    key: userNameKey,
                    controller: userNameController,
                    decoration: normalFormStyle,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'كلمة السر',
                        style: blackMedium14,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  HookBuilder(builder: (context) {
                    final passwordVisible = useState<bool>(false);
                    return TextFormField(
                      key: passwordKey,
                      controller: passwordController,
                      obscureText: !passwordVisible.value,
                      decoration: InputDecoration(
                          filled: true, // Fill the background
                          fillColor: white,
                          enabledBorder: enabledBorderStyle,
                          focusedBorder: enabledBorderStyle,
                          errorBorder: errorBorderStyle,
                          focusedErrorBorder: errorBorderStyle,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              passwordVisible.value = !passwordVisible.value;
                            },
                            child: Icon(
                              passwordVisible.value ? Icons.visibility : Icons.visibility_off,
                            ),
                          )),
                    );
                  }),
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {}
                              // Perform login logic here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: blueLogin, // Set the background color to #0000CE
                            ),
                            child: Text(
                              'الدخول',
                              style: whiteText, // Set the text color to white
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 44),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ليس لديك حساب ؟',
                        style: blackMedium14,
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CartPage(),
                          ));
                        },
                        child: Text(
                          'التسجيل',
                          style: orangeBoldUnderLine,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
