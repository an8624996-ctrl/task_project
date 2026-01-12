
import 'package:get/get.dart';
import 'package:task_project/Screens/OnBoardingScreen/onboarding_screen.dart';
import 'package:task_project/Screens/SplashScreen/splash_screen.dart';
import 'package:task_project/Screens/forgot_password_screen.dart';
import 'package:task_project/Screens/location_access_screen.dart';
import 'package:task_project/Screens/reset_screen.dart';
import 'package:task_project/Screens/sign_in_screen.dart';
import 'package:task_project/Screens/sign_up_screen.dart';
import 'package:task_project/Screens/verify_screen.dart';


class AppRoute{

  static const String splashScreen = "/splashScreen";
  static const String onboardingScreen = "/onboardingScreen";
  static const String loginScreen = "/loginScreen";
  static const String signupScreen = "/signupScreen";
  static const String forgotScreen = "/forgotScreen";
  static const String resetScreen = "/resetScreen";
  static const String verifyScreen = "/verifyScreen";
  static const String locationScreen = "/locationScreen";



  static List<GetPage>routes = [

    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: onboardingScreen, page: () => OnboardingScreen()),
    GetPage(name: loginScreen, page: () => SignInScreen()),
    GetPage(name: signupScreen, page: () => SignUpScreen()),
    GetPage(name: forgotScreen, page: () => ForgotPasswordScreen()),
    GetPage(name: resetScreen, page: () => ResetScreen()),
    GetPage(name: verifyScreen, page: () => VerifyScreen()),
    GetPage(name: locationScreen, page: () => LocationAccessScreen()),



  ];

}