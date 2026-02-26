import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/core/AppRoute/app_route.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF2D2D2D)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Service Detail",
          style: TextStyle(
            color: Color(0xFF2D2D2D),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_outline, color: Color(0xFFF34235)),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(25, 10, 25, 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Container(
                        height: 230,
                        width: double.infinity,
                        color: const Color(0xFFF2F2F2),
                        child: Image.asset(
                          "assets/images/headphone.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 12,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "ELECTRONICS",
                            style: TextStyle(
                              color: Color(0xFF7172CC),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Headphone",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: const [
                            Icon(Icons.check_circle, color: Color(0xFF52D238), size: 16),
                            SizedBox(width: 5),
                            Text(
                              "In Stock",
                              style: TextStyle(color: Color(0xFF52D238), fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          "\$22.50",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Discount \$10",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                const Text(
                  "Corsair Gaming Headphones",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),


                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    _buildTag("Peripherals Categorie"),
                    _buildTag("Gaming"),
                    _buildTag("Corsair Brand"),
                    _buildTag("Weight: 0.9"),
                    _buildTag("Dimensions: 45 x 13 x 2.5 cm"),
                  ],
                ),
                const SizedBox(height: 25),


                const Text(
                  "Description",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Color(0xFF78828A), fontSize: 14, height: 1.5),
                    children: [
                      TextSpan(text: "PipeMaster Plumbing is not just a service; it's a commitment to providing reliable and efficient plumbing solutions, ensuring your home or business runs smoothly... "),
                      TextSpan(
                        text: "Read More",
                        style: TextStyle(color: Color(0xFF1B6EF7), fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Sticky Bottom Button
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding:  EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 100),
              color: Colors.white,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B6EF7),
                  minimumSize: const Size(double.infinity, 54),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  elevation: 0,
                ),
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.editScreen);
                  },
                  child: const Text(
                    "Edit Product",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildTag(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF7172CC),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 13),
      ),
    );
  }
}