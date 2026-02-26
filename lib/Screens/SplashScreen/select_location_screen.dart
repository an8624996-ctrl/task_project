import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/AppRoute/app_route.dart';




class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({super.key});

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {

  String selectedLanguage = "English (US)";

  final List<Map<String, String>> languages = [
    {"name": "English (US)", "flag": "🇺🇸"},
    {"name": "Indonesia", "flag": "🇮🇩"},
    {"name": "Afghanistan", "flag": "🇦🇫"},
    {"name": "Algeria", "flag": "🇩🇿"},
    {"name": "Malaysia", "flag": "🇲🇾"},
    {"name": "Arabic", "flag": "🇸🇦"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF1C1C1E), size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "What is Your Mother Language",
                    style: TextStyle(
                      color: Color(0xFF2D2D2D),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Discover what is a podcast description and podcast summary.",
                    style: TextStyle(
                      color: Color(0xFF636F85),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 30),

                  /// Language List
                  ListView.builder(
                    itemCount: languages.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final language = languages[index];
                      bool isSelected = selectedLanguage == language['name'];

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedLanguage = language['name']!;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: isSelected ? const Color(0xFF1B6EF7).withOpacity(0.1) : Colors.transparent,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.04),
                                blurRadius: 15,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Text(
                                language['flag']!,
                                style: const TextStyle(fontSize: 22),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  language['name']!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF1C1C1E),
                                  ),
                                ),
                              ),


                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: isSelected ? const Color(0xFF1B6EF7) : const Color(0xFFF5F7FA),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    if (isSelected)
                                      const Icon(Icons.check, color: Colors.white, size: 14),
                                    if (isSelected) const SizedBox(width: 6),
                                    Text(
                                      isSelected ? "Selected" : "Select",
                                      style: TextStyle(
                                        color: isSelected ? Colors.white : const Color(0xFF979797),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          // --- Bottom Continue Button ---
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 10, 24, 40),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(AppRoute.setScreen);
              },
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xFF1B6EF7),
                  borderRadius: BorderRadius.circular(100),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


