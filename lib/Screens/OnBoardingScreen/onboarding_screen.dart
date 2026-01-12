import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/Utills/AppImage/app_image.dart';
import 'package:task_project/core/constants/app_strings.dart';

import '../../core/AppRoute/app_route.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final PageController controller = PageController();
  int currentPage = 0;

  final List<Map<String,String>> newData = [

    {
      "Title" : AppStrings.onboardTitle,
      "Des" : AppStrings.onboardDescription,
      "Image" : AppImage.onboarding,
    },


    {
      "Title" : AppStrings.onboardingTitle,
      "Des" : AppStrings.onboardingDescription,
      "Image" : AppImage.onboarding1,
    }


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: PageView.builder(
                controller: controller,
                  itemCount: newData.length,
                  onPageChanged: (index){
                  setState(() {
                    currentPage = index;
                  });
                  },
                  itemBuilder: (context,index){
                  return
                      Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Image.asset(
                                newData[index]["Image"]!,
                                height: 327,
                                width: 327,
                              ),
                              SizedBox(height: 56),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                                child: SizedBox(
                                  height: 68,
                                  width: 247,
                                  child: Text(
                                    newData[index]["Title"]!,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff2D2D2D),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                                child: SizedBox(
                                  height: 48,
                                  width: 297,
                                  child: Text(
                                    newData[index]["Des"]!,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff636F85),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 40),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ...List.generate(
                                      newData.length,
                                          (dotIndex) => buildDot(dotIndex),

                                  ),
                                ],
                              ),

                              SizedBox(height: 64),
                              GestureDetector(
                                onTap: (){
                                  Get.toNamed(AppRoute.loginScreen);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 56,
                                  width: 327,
                                  decoration: BoxDecoration(
                                    color: Color(0xff1B6EF7),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Text(
                                    currentPage == newData.length - 1 ? "Get Started" : "Next",
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                  }
              ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int dotIndex) {
    return AnimatedContainer(
        duration: Duration(seconds: 1),
      height: 8,
      width: 8,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: currentPage==dotIndex?Color(0xff1B6EF7):Color(0xffCCE2FF),
        shape: BoxShape.circle,
      ),
    );
  }
}
