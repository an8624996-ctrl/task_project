import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/core/AppRoute/app_route.dart';

import '../../Utills/AppImage/app_image.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Profile",
              style: TextStyle(
                color: Color(0xFF2D2D2D),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 39),
            Center(
              child: Image.asset(
                AppImage.man,
                height: 88,
                width: 88,
              ),
            ),

            SizedBox(height: 16),
            Center(
              child: GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoute.homeScreen);
                },
                child: Text("Wade Warren",
                  style: TextStyle(
                    color: Color(0xff2D2D2D),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 48),
            Image.asset(
              AppImage.line,
              //height: 0,
              width: 375,
            ),

            SizedBox(height: 17),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  _buildMenuItem(Icons.edit_outlined, "Edit Profile"),
                  _buildDivider(),
                  _buildMenuItem(Icons.verified_outlined, "Support"),
                  _buildDivider(),
                  _buildMenuItem(Icons.headset_mic_outlined, "Privacy"),
                  _buildDivider(),
                  _buildMenuItem(Icons.logout, "Logout", isLogout: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildMenuItem(
      IconData icon,
      String title,
      {bool isLogout = false}) {
    return ListTile(
      leading: Icon(
        icon,
        color:isLogout?Color(0xffFFC72C) :Color(0xFF2D2D2D),
        size: 24,
      ),

      title: Text(
        title,
        style: TextStyle(
          color: isLogout?Color(0xffFFC72C) :Color(0xFF2D2D2D),
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
  _buildDivider() {
    return Divider(
      height: 1,
      thickness: 1,
      endIndent: 16,
      indent: 16,
      color: Colors.grey.shade100,
    );
  }
}




