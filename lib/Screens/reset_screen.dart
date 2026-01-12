import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/core/constants/app_strings.dart';

import '../Utills/AppImage/app_image.dart';
import '../core/AppRoute/app_route.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 112),
            Center(
              child: Column(
                children: [
                  Text(
                    AppStrings.resetPassword,
                    style: TextStyle(
                      color: Color(0xff2D2D2D),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),
                  SizedBox(
                    height: 66,
                    width: 315,
                    child: Text(
                      AppStrings.resetDes,
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

                  SizedBox(height: 14),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "New Password",
                      style: TextStyle(
                        color: Color(0xFF0F172A),
                        fontSize: 14,
                        fontFamily: "Medium",
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 56,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffCBD5E1)),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(right: 14),
                                child: Image.asset(
                                  AppImage.hide,
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Confirm New Password",
                      style: TextStyle(
                        color: Color(0xFF0F172A),
                        fontSize: 14,
                        fontFamily: "Medium",
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 56,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffCBD5E1)),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(right: 14),
                                child: Image.asset(
                                  AppImage.hide,
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 32),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.verifyScreen);
                    },
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 56,
                        width: 327,
                        decoration: BoxDecoration(
                          color: Color(0xff1B6EF7),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text(
                          "Submit",
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
