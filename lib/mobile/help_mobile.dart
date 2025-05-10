
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onuche_david/component.dart';

class Help2 extends StatelessWidget {
  const Help2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: const Drawer2(),
      appBar: AppBar(
         backgroundColor: Colors.white,
         iconTheme: const IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: const TabsWebList1(),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: const Padding(
        padding: EdgeInsets.only(left:16.0, right: 16.0),
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 8),
                Helppage(),
              ],
            ),
          ),
        ),
    );
  }
}


class Helppage extends StatelessWidget {
  const Helppage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Adjust font sizes based on screen width
    double titleFontSize = screenWidth > 600 ? 24 : 20;
    double subtitleFontSize = screenWidth > 600 ? 14 : 12;
    double textFontSize = screenWidth > 600 ? 12 : 10;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // 5% padding on the sides
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.05), // Space at the top
          Text(
            "Help & Support",
            style: GoogleFonts.montserrat(
              color: const Color(0xFF143109),
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenHeight * 0.02), // Adjusting spacing based on screen size
          Text(
            "Quick answers to questions you may have.",
            style: GoogleFonts.montserrat(
              color: const Color(0xFF143109),
              fontSize: subtitleFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Check out my full documentation.",
            style: GoogleFonts.montserrat(
              color: const Color(0xFF143109),
              fontSize: subtitleFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          
          // Icon and text blocks with centered alignment
          _buildInfoBlock(
            icon: Icons.rocket_launch_outlined,
            title: "What do you do?",
            content: [
              "I develop dynamic, cross-platform mobile applications",
              "using Flutter, focusing on sleek designs and seamless functionality",
              "to deliver customized solutions that meet the unique needs of my clients."
            ],
            fontSize: textFontSize,
            screenHeight: screenHeight,
          ),

          SizedBox(height: screenHeight * 0.02),

          _buildInfoBlock(
            icon: Icons.cloud_circle_outlined,
            title: "Do you take freelance projects?",
            content: [
              "Yes, I take freelance projects and contract-based work,",
              "providing high-quality, custom app development services",
              "to clients across various industries and project scopes."
            ],
            fontSize: textFontSize,
            screenHeight: screenHeight,
          ),

          SizedBox(height: screenHeight * 0.02),

          _buildInfoBlock(
            icon: Icons.laptop_mac_outlined,
            title: "Which industries have you served?",
            content: [
              "I have worked with industries like e-commerce, healthcare,",
              "education, and event management, creating applications",
              "that enhance user experiences and streamline business."
            ],
            fontSize: textFontSize,
            screenHeight: screenHeight,
          ),

          SizedBox(height: screenHeight * 0.02),

          _buildInfoBlock(
            icon: Icons.timelapse_outlined,
            title: "How long to build an app?",
            content: [
              "The timeline depends on the app’s complexity, but most projects",
              "take 4–12 weeks, including planning, development, testing, and",
              "deployment phases."
            ],
            fontSize: textFontSize,
            screenHeight: screenHeight,
          ),

          SizedBox(height: screenHeight * 0.02),

          _buildInfoBlock(
            icon: Icons.question_answer_outlined,
            title: "Do you offer app maintenance?",
            content: [
              "Yes, I provide ongoing app maintenance, including updates,",
              "bug fixes, and feature enhancements, ensuring long-term",
              "performance and user satisfaction."
            ],
            fontSize: textFontSize,
            screenHeight: screenHeight,
          ),

          SizedBox(height: screenHeight * 0.02),

          _buildInfoBlock(
            icon: Icons.query_stats_outlined,
            title: "What tools do you use?",
            content: [
              "I use Flutter, Dart, Firebase, and other modern technologies",
              "to deliver high-performance, scalable, and visually appealing",
              "mobile applications."
            ],
            fontSize: textFontSize,
            screenHeight: screenHeight,
          ),

          SizedBox(height: screenHeight * 0.02),

          _buildInfoBlock(
            icon: Icons.safety_check_outlined,
            title: "Can you help with app deployment?",
            content: [
              "Yes, I assist with deploying apps to app stores, ensuring they",
              "meet all requirements and are optimized for a smooth user",
              "experience across platforms."
            ],
            fontSize: textFontSize,
            screenHeight: screenHeight,
          ),

          SizedBox(height: screenHeight * 0.02),

          _buildInfoBlock(
            icon: Icons.contact_mail_outlined,
            title: "How can I contact you?",
            content: [
              "You can contact me via the form on my website, email, or",
              "connect through LinkedIn for project discussions or inquiries."
            ],
            fontSize: textFontSize,
            screenHeight: screenHeight,
          ),

          SizedBox(height: screenHeight * 0.02),

        ],
      ),
    );
  }

  // Helper method to build each info block with centered content
  Widget _buildInfoBlock({
    required IconData icon,
    required String title,
    required List<String> content,
    required double fontSize,
    required double screenHeight,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,  // Centering the icon and title
          children: [
            Icon(icon, size: fontSize * 2, color: const Color(0xFF143109)),
            const SizedBox(width: 10),
            Text(
              title,
              style: GoogleFonts.montserrat(
                color: const Color(0xFF143109),
                fontSize: fontSize + 3, // Slightly larger title
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.01),
        // Centering the content text
        ...content.map(
          (text) => Text(
            text,
            textAlign: TextAlign.center,  // Center-align the content text
            style: GoogleFonts.montserrat(
              color: const Color(0xFF143109),
              fontSize: fontSize,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}