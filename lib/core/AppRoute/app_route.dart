
import 'package:get/get.dart';
import 'package:task_project/Screens/OnBoardingScreen/onboarding_screen.dart';
import 'package:task_project/Screens/ProductScreen/AddProductScreen/add_product_screen.dart';
import 'package:task_project/Screens/ProductScreen/EditProductScreen/edit_product_screen.dart';
import 'package:task_project/Screens/ProductScreen/HomeScreen/home_screen.dart';
import 'package:task_project/Screens/ProductScreen/HomeScreen/product_details_screen.dart';
import 'package:task_project/Screens/ProductScreen/HomeScreen/set_up_profile_screen.dart';
import 'package:task_project/Screens/ProfileScreen/profile_screen.dart';
import 'package:task_project/Screens/SplashScreen/select_location_screen.dart';
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
  static const String profileScreen = "/profileScreen";
  static const String homeScreen = "/homeScreen";
  static const String detailsScreen = "/detailsScreen";
  static const String editScreen = "/editScreen";
  static const String addScreen = "/addScreen";
  static const String selectScreen = "/selectScreen";
  static const String setScreen = "/setScreen";
  static const String newScreen= "/newScreen";
  static const String myScreen= "/myScreen";




  static List<GetPage>routes = [

    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: onboardingScreen, page: () => OnboardingScreen()),
    GetPage(name: loginScreen, page: () => SignInScreen()),
    GetPage(name: signupScreen, page: () => SignUpScreen()),
    GetPage(name: forgotScreen, page: () => ForgotPasswordScreen()),
    GetPage(name: resetScreen, page: () => ResetScreen()),
    GetPage(name: verifyScreen, page: () => VerifyScreen()),
    GetPage(name: locationScreen, page: () => LocationAccessScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: editScreen, page: () => EditProductScreen()),
    GetPage(name: addScreen, page: () => AddProductScreen()),
    GetPage(name: selectScreen, page: () => SelectLocationScreen()),
    GetPage(name: setScreen, page: () => SetUpProfileScreen()),
    GetPage(name: newScreen, page: () => ProfileScreen()),
    GetPage(name: myScreen, page: () => ProductDetailsScreen()),



  ];

}