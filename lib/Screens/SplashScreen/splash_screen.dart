import 'package:flutter/material.dart';
import 'package:task_project/Screens/OnBoardingScreen/onboarding_screen.dart';
import 'package:task_project/Utills/AppImage/app_image.dart';
import 'package:task_project/core/constants/app_strings.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  void initState(){

    super.initState();

    Future.delayed(Duration(seconds: 3),(){

      Navigator.pushReplacement(

        context,

        MaterialPageRoute(builder: (context) => const OnboardingScreen()),

      );
    },
    );
  }



  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 19,vertical: 185),
            child: Column(
              children: [
                Image.asset(
                  AppImage.car,
                  height: 124,
                  width: 124,
                ),

                SizedBox(height: 16),
                Padding(padding: EdgeInsets.only(left: 19,right: 29 ),
                  child: Text(
                    AppStrings.splashTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff2D2D2D),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


                SizedBox(height: 8),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 70),
                    child: Text(

                      AppStrings.splashDescription,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff636F85),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                      ),
                    ),
                  ),


                SizedBox(height: 252),
                Padding(
                  padding: const EdgeInsets.only(bottom:64),
                  child: Image.asset(
                    AppImage.loading,
                    height: 49,
                    width: 46.68,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

