
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_project/Utills/AppImage/app_image.dart';
import 'package:task_project/core/AppRoute/app_route.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            _buildHeader(),

            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 19),
              child: Row(
                children: [
                  _buildTabButton("Ongoing", true),
                  SizedBox(width: 16),
                  _buildTabButton("Upcoming", false),
                ],
              ),
            ),

            SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 20),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  _buildProductCard("Headphone", "\$22.50", "assets/images/headphone.png"),
                  _buildProductCard("Smartphone", "\$10.99", "assets/images/mobile.png"),
                  _buildProductCard("LED Light", "\$13.00", "assets/images/light.png"),
                  _buildProductCard("Table Fan", "\$15.99", "assets/images/fan.png"),
                ],
              ),
            ),

            SizedBox(height: 10),
            GestureDetector(
              onTap: (){

              },

              child: Container(
                alignment: Alignment.center,
                height: 56,
                width: 380,
                decoration: BoxDecoration(
                  color: Color(0xff1B6EF7),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.myScreen);
                  },
                  child: Text(
                    "Create Product",
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

            SizedBox(height: 80),

          ],
        ),
      ),
    );
  }

  _buildHeader() {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Color(0xFF1E66FF),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(backgroundColor: Colors.grey[300],
                child: Image.asset(
                  AppImage.man,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi, Wade Warren!", style: TextStyle(color: Colors.white, fontSize: 14)),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white, size: 14),
                      Text(" Golder Avenue, Abuja", style: TextStyle(color: Colors.white70, fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Text("My Services", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  // Tab Button Widget
  Widget _buildTabButton(String title, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF1B6EF7) : Color(0xFFF9F9FD),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        style: TextStyle(color: isActive ? Color(0xFFFFFFFF) : Color(0xFF5C5C5C), fontWeight: FontWeight.normal,fontSize: 16),
      ),
    );
  }

  _buildProductCard(String name, String price, String imgPath) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFEDEEF4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                ),
                child: ClipRRect(
                  child: Image.asset(
                    imgPath,
                    fit: BoxFit.contain,
                  ),
                )
              ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              name,
              style: TextStyle(
                color: Color(0xFF2D2D2D),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(width: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){},
                  child: Text("View Details",
                    style: TextStyle(
                      color: Color(0xff1B6EF7),
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
              ),

              TextButton(onPressed: (){},
                child: Text("Edit",
                  style: TextStyle(
                    color: Color(0xff7F7F8A),
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}



