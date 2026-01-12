import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../core/AppRoute/app_route.dart';
import '../core/constants/app_strings.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 53),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 112),
            Center(
              child: Column(
                children: [
                  Text(
                    AppStrings.forgotPassword,
                    style: TextStyle(
                      color: Color(0xff2D2D2D),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),
                  SizedBox(
                    height: 44,
                    width: 227,
                    child: Text(
                      AppStrings.forgotDesc,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff636F85),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 36),

               Text(
                "Email Address",
                style: TextStyle(
                  color: Color(0xFF0F172A),
                  fontSize: 14,
                  fontFamily: "Medium",
                ),
                textAlign: TextAlign.left,
              ),


            SizedBox(height: 10),

               TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffCBD5E1)),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),


            SizedBox(height: 40),
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
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.resetScreen);
                    },
                    child: Text(
                      "Continue",
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
            ),
          ],
        ),
      ),
    );
  }
}
