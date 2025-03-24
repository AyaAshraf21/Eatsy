import 'package:eatsy/core/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/themes/app_color.dart';
import '../widgets/defual_text_field.dart';
import '../widgets/wavy_clipper.dart';

class ForgetPasswordEmail extends StatelessWidget {
  const ForgetPasswordEmail({super.key});

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
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SvgPicture.asset(
                  'assets/svg/forgetPassword.svg',
                  height: MediaQuery.of(context).size.height * 0.42,
                  width: MediaQuery.of(context).size.height * 0.42,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  right: 20,
                  left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Forget Password',
                      style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(height: 15),
                  Text(
                    'Enter your email address to reset your password',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 20),
                  DefaultTextField(
                    labelText: 'Email',
                  ),
                  SizedBox(height: 25),
                  DefaultButton(
                    text: 'Send',
                    onPressed: () {
                      Get.toNamed(AppRoutes.resetPassword);
                    },
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
