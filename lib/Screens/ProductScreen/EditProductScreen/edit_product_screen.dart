import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/core/AppRoute/app_route.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({super.key});

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Color(0xFF2D2D2D), size: 24),
        title: const Text(
          "Edit Product",
          style: TextStyle(color: Color(0xFF2D2D2D), fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),

            // --- Image Upload Section ---
            Center(
              child: Column(
                children: [
                  const Icon(Icons.cloud_upload_outlined, color: Color(0xFF2D2D2D), size: 44),
                  const SizedBox(height: 9),
                  const Text("Upload photo",
                      style: TextStyle(color: Color(0xFF2D2D2D), fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  const Text("Upload the front side of your document",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF636F85), fontSize: 12)),
                  const Text("Supports: JPG, PNG, PDF",
                      style: TextStyle(color: Color(0xFF636F85), fontSize: 12)),
                  const SizedBox(height: 14),
                  Container(
                    height: 35,
                    width: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade400),
                    ),
                    child: const Center(
                      child: Text("Choose a file", style: TextStyle(color: Color(0xFF2D2D2D), fontSize: 12)),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // --- Form Fields (Column Format) ---

            customLabel("Product Name"),
            customTextField("Type product name"),

            customLabel("Select category"),
            customDropdownField("Select Catagories"),

            customLabel("Description"),
            customTextField("Type Description", maxLines: 3),

            customLabel("Price"),
            customTextField("Type Price"),

            customLabel("Brand"),
            customDropdownField("Select Brand"),

            customLabel("Discount"),
            customTextField("Type Discount"),

            customLabel("Active"),
            customDropdownField("Select Status"),

            customLabel("Stock"),
            customDropdownField("Select Stoke"),

            customLabel("Tags"),
            customTextField("Select Tag"),

            customLabel("Weight"),
            customTextField("Type weight "),

            customLabel("Colors"),
            customDropdownField("Select Color"),

            customLabel("Dimensions"),
            customTextField("Type dimensions"),

            const SizedBox(height: 40),

            // --- Submit Button ---
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoute.addScreen);
              },
              child: Container(
                alignment: Alignment.center,
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff1B6EF7),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.addScreen);
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40), // Bottom spacing
          ],
        ),
      ),
    );
  }

  // Helper Widget: Label
  Widget customLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8),
      child: Text(
        text,
        style: const TextStyle(color: Color(0xFF2D2D2D), fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }

  // Helper Widget: TextField
  Widget customTextField(String hint, {int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Color(0xFF979797), fontSize: 14),
          filled: true,
          fillColor: const Color(0xffF5F5F5),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xff1B6EF7)),
          )),
    );
  }

  // Helper Widget: Dropdown
  Widget customDropdownField(String hint) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xffF5F5F5),
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(hint, style: const TextStyle(color: Color(0xFF979797), fontSize: 14)),
          const Icon(Icons.keyboard_arrow_down, color: Color(0xFF636F85), size: 22),
        ],
      ),
    );
  }
}

