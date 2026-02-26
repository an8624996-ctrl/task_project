import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/AppImage/app_image.dart';
import '../../../core/AppRoute/app_route.dart';
import '../../../core/constants/app_strings.dart';

class SetUpProfileScreen extends StatefulWidget {
  const SetUpProfileScreen({super.key});

  @override
  State<SetUpProfileScreen> createState() => _SetUpProfileScreenState();
}

class _SetUpProfileScreenState extends State<SetUpProfileScreen> {


  void showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
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
                    AppImage.star,
                    height: 90,
                    width: 90,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Congratulations!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2D2D2D),
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  height: 44,
                  width: 208,
                  child: Text(
                    "Your account is ready to use. You will be redirected to the home page in a few seconds",
                    textAlign: TextAlign.start,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xff6B6B6B),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Center(
                  child: Image.asset(
                    AppImage.loader,
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  TextEditingController dobController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 32,vertical: 60),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  AppStrings.setProfile,
                  style: TextStyle(
                    color: Color(0xff2D2D2D),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  AppImage.set_profile,
                  height: 88,
                  width: 88,
                ),
              ),

              SizedBox(height: 10),
              Center(
                child: Text("Upload profile picture",
                  style: TextStyle(
                    color: Color(0xff00214F),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),

              SizedBox(height: 40),
              Text("About Us",
                style: TextStyle(
                  color: Color(0xff2D2D2D),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),
              Container(
                height: 216,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFF9F9FB),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: SizedBox(
                    height: 176,
                    width: 298,
                    child: Text(
                      "We are a dedicated home service provider offering a wide range of expert solutions to make your life easier."
                          " From plumbing, electrical work, and carpentry to cleaning, painting, and appliance repair,"
                          " our skilled team is here to tackle any task with precision and care.",
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFF636F85),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Text("Date of Birth",
                style: TextStyle(
                  color: Color(0xff2D2D2D),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),
              Container(
                height: 52,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFF9F9FB),
                ),

                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Date of birth",
                          style: TextStyle(
                            color: Color(0xFF636F85),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 14),
                      child: Icon(Icons.calendar_today_outlined,
                        size: 24,
                        color: Color(0xFF636F85),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              GestureDetector(
                onTap: () => showSuccessDialog(),
                child: Text(
                  "Gender",
                  style: TextStyle(
                    color: Color(0xff2D2D2D),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 10),
              Container(
                height: 52,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFF9F9FB),
                ),

                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: GestureDetector(
                          onTap: (){
                            Get.toNamed(AppRoute.newScreen);
                          },
                          child: Text(
                            "Gender",
                            style: TextStyle(
                              color: Color(0xFF636F85),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 14),
                      child: Icon(Icons.arrow_drop_down,
                        size: 34,
                        color: Color(0xFF636F85),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoute.newScreen);
                },
                  child: Container(
                    alignment: Alignment.center,
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff1B6EF7),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      "Next",
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
      ),
    );
  }
}



