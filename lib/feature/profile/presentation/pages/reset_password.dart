import 'package:eatsy/core/widgets/default_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/app_color.dart';
import '../widgets/defual_text_field.dart';
import '../widgets/wavy_clipper.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: WavyClipper(),
              child: Container(
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(gradient: gradientColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Reset Password',
                      style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(height: 25),
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (val) {}),
                      Text(
                        "Remember me",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  DefaultButton(
                    text: 'Reset',
                    onPressed: () {},
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
