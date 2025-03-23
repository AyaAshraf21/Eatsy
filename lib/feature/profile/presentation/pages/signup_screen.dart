import 'package:eatsy/feature/profile/presentation/widgets/defual_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/themes/app_color.dart';
import '../../../../core/widgets/default_button.dart';
import '../widgets/circle_background.dart';
import '../widgets/wavy_clipper.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: WavyClipper(),
              child: Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(gradient: gradientColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text('Welcome Back 👋',
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                  SizedBox(height: 22),
                  Text('Let\'s Make Your Account',
                      style: Theme.of(context).textTheme.bodyLarge),
                  SizedBox(height: 15),
                  DefaultTextField(
                    labelText: 'Email/Phone Number',
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: DefaultTextField(
                          labelText: 'First Name',
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: DefaultTextField(
                          labelText: 'Last Name',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  DefaultTextField(
                    labelText: 'Password',
                    obscureText: true,
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                  SizedBox(height: 15),
                  DefaultTextField(
                    labelText: 'Confirm Password',
                    obscureText: true,
                    suffixIcon: Icon(Icons.visibility_off),
                  ),

                  SizedBox(height: 20),

                  DefaultButton(),

                  SizedBox(height: 20),

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
                        "Already Have Account? ",
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
                          Get.offAllNamed(AppRoutes.signInScreen);
                        },
                        child: Text("Sign In Now"),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
