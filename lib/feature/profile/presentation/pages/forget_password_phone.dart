import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/themes/app_color.dart';
import '../../../../core/widgets/default_button.dart';
import '../widgets/defual_text_field.dart';
import '../widgets/wavy_clipper.dart';

class ForgetPasswordPhone extends StatelessWidget {
  const ForgetPasswordPhone({super.key});

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
                  'assets/svg/phone.svg',
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.height * 0.45,
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
                  Text('Otp Verification',
                      style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(height: 15),
                  Text(
                    'Enter your phone number to reset your password',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 20),
                  DefaultTextField(
                    labelText: 'Phone',
                  ),
                  SizedBox(height: 25),
                  DefaultButton(
                    text: 'Send',
                    onPressed: () {
                      Get.toNamed(AppRoutes.otp);
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
