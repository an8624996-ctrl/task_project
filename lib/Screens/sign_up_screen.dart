import 'package:flutter/material.dart';
import 'package:task_project/core/constants/app_strings.dart';

import '../Utills/AppImage/app_image.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  void showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.close, color: Colors.grey),
                  ),
                ),

                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xff1B6EF7).withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.check_circle, color: Color(0xff1B6EF7), size: 50),
                ),
                SizedBox(height: 24),
                Text(
                  AppStrings.successful,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2D2D2D),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  AppStrings.popupDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff94A3B8),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 22),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff1B6EF7),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: 136),
             Align(
               alignment: Alignment.centerLeft,
               child: Text(
                 AppStrings.signup,
                 style: TextStyle(
                   color: Color(0xff2D2D2D),
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),

              SizedBox(height: 8),

              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 327,
                    child: Text(
                      AppStrings.signupDescription,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff636F85),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                ),
              ),

              SizedBox(height: 36),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email Address",
                  style: TextStyle(
                    color: Color(0xFF2D2D2D),
                    fontSize: 14,
                    fontFamily: "Medium",
                  ),
                ),
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
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),




              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Full Name",
                  style: TextStyle(
                    color: Color(0xFF2D2D2D),
                    fontSize: 14,
                    fontFamily: "Medium",
                  ),
                ),
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
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: Color(0xFF2D2D2D),
                    fontSize: 14,
                    fontFamily: "Medium",
                  ),
                ),
              ),

              SizedBox(height: 8),
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

              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImage.bar,
                    height: 3,
                    width: 212,
                  ),
                  
                  Text("Strong",
                    style: TextStyle(
                      color: Color(0xff1B6EF7),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 8),
              Row(
                children: [
                  Image.asset(
                    AppImage.circle_check,
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 8),
                  SizedBox(
                    height: 40,
                    width: 299,
                    child: Text("At least 8 characters with a combination of letters and numbers",
                      style: TextStyle(
                        color: Color(0xff23AA26),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),
              GestureDetector(
                onTap: () => showSuccessDialog(),
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
                      "Label",
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

              SizedBox(height: 16),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Color(0xff636F85),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color(0xff1B6EF7),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
