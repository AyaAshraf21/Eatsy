import 'package:eatsy/core/routes/app_routes.dart';
import 'package:eatsy/core/widgets/default_button.dart';
import 'package:eatsy/feature/profile/presentation/widgets/circle_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/themes/app_color.dart';
import '../widgets/defual_text_field.dart';
import '../widgets/wavy_clipper.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: WavyClipper(),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(gradient: gradientColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    Icon(
                      Icons.fastfood,
                      size: 50,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Eatsy',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Welcome 👋',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 22),
                    Text(
                      'Login to your Account',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(height: 15),

                    DefaultTextField(
                      labelText: 'Email/Phone Number',
                    ),
                    SizedBox(height: 15),

                    DefaultTextField(
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.visibility_off),
                      obscureText: true,
                    ),
                    // SizedBox(height: 1),

                    // Remember Me & Forgot Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (val) {}),
                            Text(
                              "Remember me",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            // Get.toNamed(AppRoutes.forgetPasswordEmail);
                            Get.toNamed(AppRoutes.forgetPasswordPhone);
                          },
                          child: Text("Forgot Password?"),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    // Sign In Button
                    DefaultButton(
                      text: 'Sign In',
                      onPressed: () {},
                    ),

                    SizedBox(height: 20),

                    // OR Divider
                    Row(
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("or"),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                    SizedBox(height: 20),

                    // Social Media Login
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleBackground(
                          width: 45,
                          height: 45,
                          color: Theme.of(context).colorScheme.surface,
                          imagePath: 'assets/icons/google.png',
                          assetWidth: 30,
                          assetHeight: 30,
                        ),
                        SizedBox(width: 15),
                        CircleBackground(
                          width: 45,
                          height: 45,
                          color: Theme.of(context).colorScheme.surface,
                          imagePath: 'assets/icons/facebook.png',
                          assetWidth: 30,
                          assetHeight: 30,
                        ),
                        SizedBox(width: 15),
                        CircleBackground(
                          width: 45,
                          height: 45,
                          color: Theme.of(context).colorScheme.surface,
                          imagePath: 'assets/icons/apple.png',
                          assetWidth: 30,
                          assetHeight: 30,
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(0, 0),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            Get.offAllNamed(AppRoutes.signUpScreen);
                          },
                          child: Text("Create An Account"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Social Media Icon Widget
  Widget socialIcon(String assetPath) {
    return InkWell(
      onTap: () {},
      child: Image.asset(
        assetPath,
        height: 40,
        width: 40,
      ),
    );
  }
}
