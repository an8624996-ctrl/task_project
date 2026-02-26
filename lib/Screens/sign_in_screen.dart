import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/Utills/AppImage/app_image.dart';
import 'package:task_project/core/constants/app_strings.dart';
import '../core/AppRoute/app_route.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 36),
            Center(
              child: Image.asset(
                AppImage.bulb,
                height: 70,
                width: 70,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                AppStrings.welcome,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff2D2D2D),
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                AppStrings.loginDescription,
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff64748B), fontSize: 14),
              ),
            ),
            SizedBox(height: 41),
            Text(
              "Email Address",
              style: TextStyle(
                  color: Color(0xFF0F172A),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 56,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffCBD5E1)),
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Password",
              style: TextStyle(
                  color: Color(0xFF0F172A),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 56,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffCBD5E1)),
                      borderRadius: BorderRadius.circular(100)),
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
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        color: Color(0xff1B6EF7),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Icon(Icons.check, size: 12, color: Colors.white),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Remember Me",
                      style: TextStyle(
                          color: Color(0xff64748B),
                          fontSize: 14,
                          fontFamily: "Medium"),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.forgotScreen);
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Medium",
                        color: Color(0xff64748B)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoute.homeScreen);
              },
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 56,
                  width: 327,
                  decoration: BoxDecoration(
                      color: Color(0xff1B6EF7),
                      borderRadius: BorderRadius.circular(100)),
                  child:  Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New to Theory Test?",
                    style: TextStyle(
                        color: Color(0xff64748B),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoute.signupScreen);
                    },
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                          color: Color(0xff1B6EF7),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
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


