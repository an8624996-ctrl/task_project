import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_project/core/AppRoute/app_route.dart';

import '../Utills/AppImage/app_image.dart';
import '../core/constants/app_strings.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {

  final TextEditingController otpController = TextEditingController();

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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    AppImage.box,
                    height: 134,
                    width: 134,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "Success",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2D2D2D),
                  ),
                ),
                SizedBox(height: 4),
                SizedBox(
                  height: 44,
                  width: 208,
                  child: Text(
                    "Your password is succesfully created",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xff94A3B8),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 48,
                    width: 182,
                    decoration: BoxDecoration(
                      color: Color(0xff1B6EF7),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoute.locationScreen);
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
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
        padding: EdgeInsets.symmetric(horizontal: 53),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 112),
            Center(
              child: Column(
                children: [
                  Text(
                    AppStrings.verifyCode,
                    style: TextStyle(
                      color: Color(0xff2D2D2D),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),
                  SizedBox(
                    height: 80,
                    width: 227,
                    child: Text(
                      AppStrings.verifyDes,
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

                  SizedBox(height: 44),
                  PinCodeTextField(
                    appContext: context,
                    length: 4,
                    controller: otpController,
                    keyboardType: TextInputType.number,
                    obscuringCharacter: '●',
                    obscureText: true,
                    autoDismissKeyboard: true,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(12),
                      fieldOuterPadding: const EdgeInsets.symmetric(horizontal: 10),
                      fieldHeight: 56,
                      fieldWidth: 56,
                      activeFillColor: Color(0xFF808080),
                      selectedFillColor: Color(0xFF808080),
                      inactiveFillColor:Color(0xFF808080),
                      activeColor: Color(0xFF808080),
                      selectedColor: Color(0xFF808080),
                      inactiveColor: Color(0xFF808080),
                    ),

                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),

                  SizedBox(height: 144),
                  GestureDetector(
                    onTap: () => showSuccessDialog(),
                    child: Center(
                     child: Text("Resend code in 00:48",
                       style: TextStyle(
                         color: Color(0xff636F85),
                         fontSize: 14,
                         fontWeight: FontWeight.normal,
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





