import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/core/constants/app_strings.dart';

import '../Utills/AppImage/app_image.dart';
import '../core/AppRoute/app_route.dart';

class LocationAccessScreen extends StatefulWidget {
  const LocationAccessScreen({super.key});

  @override
  State<LocationAccessScreen> createState() => _LocationAccessScreenState();
}

class _LocationAccessScreenState extends State<LocationAccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 218),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    AppImage.maps,
                    height: 148,
                    width: 148,
                  ),

                  SizedBox(height: 10),
                  Text(
                    AppStrings.location,
                    style: TextStyle(
                      color: Color(0xff2D2D2D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 12),
                  SizedBox(
                    height: 62,
                    width: 286,
                    child: Text(
                      AppStrings.locationDes,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff636F85),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  SizedBox(height: 24),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.selectScreen);
                    },
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 56,
                        width: 327,
                        decoration: BoxDecoration(
                          color: Color(0xff1B6EF7),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Enable",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 24),
                  GestureDetector(
                    onTap: () {

                      Get.toNamed(AppRoute.setScreen);
                    },
                    child: const Text(
                      "Skip, Not Now",
                      style: TextStyle(
                        color: Color(0xff2D2D2D),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
