import 'package:eatsy/core/routes/app_routes.dart';
import 'package:eatsy/feature/profile/presentation/pages/forget_password_email.dart';
import 'package:eatsy/feature/profile/presentation/pages/forget_password_phone.dart';
import 'package:eatsy/feature/profile/presentation/pages/otp_screen.dart';
import 'package:eatsy/feature/profile/presentation/pages/signin_screen.dart';
import 'package:eatsy/feature/profile/presentation/pages/splash_screen.dart';
import 'package:get/get.dart';

import '../../feature/profile/presentation/pages/onboarding_screen.dart';
import '../../feature/profile/presentation/pages/reset_password.dart';
import '../../feature/profile/presentation/pages/signup_screen.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.splashScreen, page: () => SplashScreen()),
    GetPage(name: AppRoutes.onboardingScreen, page: () => OnboardingScreen()),
    GetPage(name: AppRoutes.signInScreen, page: () => SignInScreen()),
    GetPage(name: AppRoutes.signUpScreen, page: () => SignUpScreen()),
    GetPage(
        name: AppRoutes.forgetPasswordEmail, page: () => ForgetPasswordEmail()),
    GetPage(
        name: AppRoutes.forgetPasswordPhone, page: () => ForgetPasswordPhone()),
    GetPage(name: AppRoutes.resetPassword, page: () => ResetPassword()),
    GetPage(name: AppRoutes.otp, page: () => OtpScreen()),
  ];
}
