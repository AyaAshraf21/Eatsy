import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/themes/app_color.dart';
import '../../../../core/widgets/default_button.dart';
import '../widgets/wavy_clipper.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late Timer _timer;
  ValueNotifier<int> timerNotifier = ValueNotifier<int>(60);
  ValueNotifier<bool> isResendClickableNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    timerNotifier.dispose();
    isResendClickableNotifier.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timerNotifier.value > 0) {
        timerNotifier.value--;
      } else {
        isResendClickableNotifier.value = true;
        _timer.cancel();
      }
    });
  }

  void _resendCode() {
    if (isResendClickableNotifier.value) {
      isResendClickableNotifier.value = false;
      timerNotifier.value = 30;
      _startTimer();
    }
  }

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
                  'assets/svg/otp.svg',
                  height: MediaQuery.of(context).size.height * 0.42,
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
                    'Enter the code sent to your phone number',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 20),
                  PinCodeTextField(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    appContext: context,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    length: 4,
                    // controller: _otpController,
                    obscureText: false,
                    autoFocus: true,
                    keyboardType: TextInputType.number,
                    autoDismissKeyboard: true,
                    animationType: AnimationType.fade,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 55,
                      fieldWidth: 50,
                      activeFillColor: Colors.grey[200]!,
                      selectedFillColor: Colors.grey[200]!,
                      inactiveFillColor: Colors.grey[200]!,
                      // activeColor: validInput()
                      //     ? isTrueOtp()
                      //     ? Colors.green
                      //     : Colors.red
                      //     : Colors.grey[200]!,
                      inactiveColor: Colors.grey[200]!,
                      selectedColor: primaryColor,
                    ),
                    enableActiveFill: true,
                    animationDuration: const Duration(milliseconds: 300),
                  ),
                  SizedBox(height: 25),
                  DefaultButton(
                    text: 'verfiy',
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
