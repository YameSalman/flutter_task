import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_task/resources/images.dart';

import '../Styles/colors_style.dart';
import '../Styles/decoration_tyle.dart';
import '../Styles/text_style.dart';

class RegisterPage extends HookWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userNameController = useTextEditingController();
    final emailController = useTextEditingController();
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final passwordConfirmationController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final userNameKey = useMemoized(() => GlobalKey<FormState>());
    final emailKey = useMemoized(() => GlobalKey<FormState>());
    final firstNameKey = useMemoized(() => GlobalKey<FormState>());
    final lastNameKey = useMemoized(() => GlobalKey<FormState>());
    final passwordKey = useMemoized(() => GlobalKey<FormState>());
    final passwordConfirmationKey = useMemoized(() => GlobalKey<FormState>());

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
                    Images.registerImage,
                    width: 130,
                    height: 96,
                  ), // Replace with your image path
                  const SizedBox(height: 32),
                  Text(
                    'حساب جديد',
                    style: orangeBold,
                  ),
                  const SizedBox(height: 13),
                  Text(
                    'مرحبا بك ، قم بملأ البيانات للتسجيل',
                    style: blackMedium14,
                  ),
                  const SizedBox(height: 44),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'اسم المستخدم',
                        style: blackMedium14, // You can define your own TextStyle
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
                        'البريد الالكتروني',
                        style: blackMedium14, // You can define your own TextStyle
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    key: emailKey,
                    controller: emailController,
                    decoration: normalFormStyle,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'الاسم الأول',
                        style: blackMedium14, // You can define your own TextStyle
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    key: firstNameKey,
                    controller: firstNameController,
                    decoration: normalFormStyle,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'الاسم الأخير',
                        style: blackMedium14, // You can define your own TextStyle
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    key: lastNameKey,
                    controller: lastNameController,
                    decoration: normalFormStyle,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'كلمة السر',
                        style: blackMedium14, // You can define your own TextStyle
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
                        filled: true,
                        fillColor: white,
                        enabledBorder: enabledBorderStyle,
                        errorBorder: errorBorderStyle,
                        focusedBorder: enabledBorderStyle,
                        focusedErrorBorder: errorBorderStyle,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            passwordVisible.value = !passwordVisible.value;
                          },
                          child: Icon(
                            passwordVisible.value ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'تأكيد كلمة السر',
                        style: blackMedium14, // You can define your own TextStyle
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  HookBuilder(builder: (context) {
                    final passwordVisible = useState<bool>(false);
                    return TextFormField(
                      key: passwordConfirmationKey,
                      controller: passwordConfirmationController,
                      obscureText: !passwordVisible.value,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: white,
                        enabledBorder: enabledBorderStyle,
                        errorBorder: errorBorderStyle,
                        focusedBorder: enabledBorderStyle,
                        focusedErrorBorder: errorBorderStyle,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            passwordVisible.value = !passwordVisible.value;
                          },
                          child: Icon(
                            passwordVisible.value ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 16),
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
                              'التسجيل',
                              style: whiteBold16, // Set the text color to white
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 42),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'لديك حساب ؟',
                        style: blackMedium14,
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the registration screen
                          // You can use Navigator.push to navigate to the new screen.
                        },
                        child: Text(
                          'الدخول',
                          style: orangeBoldUnderLine,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 87,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
