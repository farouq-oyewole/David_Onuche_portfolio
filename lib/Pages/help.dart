
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onuche_david/component.dart';
import 'package:onuche_david/mobile/help_mobile.dart';

import '../responsive/responsive_layout.dart';

class Help1 extends StatelessWidget {
  const Help1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
         body: ResponsiveLayout(desktopBody: Help(), mobileBody: Help2()),
    );
  }
}

class Help extends StatelessWidget {
  const Help({super.key});

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
        title: const TabsWebList(),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
            child: Column(
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
    return Column(
      children: [
          Text(
              "Help & Support",
              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                    fontSize: 35, // Deep Green
                    fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20,),
          Text(
              "Quick answers to questions you may have. Can't find what you're looking for? Check out my full documentation.",
              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                    fontSize: 14, // Deep Green
                    fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                  Column(
                    children: [
                       const Icon(Icons.rocket_launch_outlined),
                        Text(
                       "What do you do?",
                       style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                       fontSize: 13, // Deep Green
                       fontWeight: FontWeight.bold,
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                           "I develop dynamic, cross-platform mobile applications using Flutter,",
                           style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                           fontSize: 11, // Deep Green
                           fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                              "focusing on sleek designs and seamless functionality to deliver",
                              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 11, // Deep Green
                              fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                             "customized solutions that meet the unique needs of my clients.",
                             style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 11, // Deep Green
                             fontWeight: FontWeight.normal,
                      ),
                      ),
                        ],
                      ),
                  ],),
            
            Column(
                    children: [
                       const Icon(Icons.cloud_circle_outlined),
                        Text(
                       "Do you take freelance projects?",
                       style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                       fontSize: 13, // Deep Green
                       fontWeight: FontWeight.bold,
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                           "Yes, I take freelance projects and contract-based work, providing",
                           style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                           fontSize: 11, // Deep Green
                           fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                              "high-quality, custom app development services to clients",
                              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 11, // Deep Green
                              fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                              "across various industries and project scopes.",
                              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 11, // Deep Green
                       fontWeight: FontWeight.normal,
                      ),
                      ),
                        ],
                      ),
                  ],),
          ],),
          const SizedBox(height: 40,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                  Column(
                    children: [
                       const Icon(Icons.laptop_mac_outlined),
                        Text(
                       "Which industries have you served?",
                       style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                       fontSize: 13, // Deep Green
                       fontWeight: FontWeight.bold,
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                           "I have worked with industries like e-commerce, healthcare, education,",
                           style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                           fontSize: 11, // Deep Green
                           fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                              "and event management, creating applications that enhance",
                              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 11, // Deep Green
                              fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                             "user experiences and streamline business processes.",
                             style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 11, // Deep Green
                             fontWeight: FontWeight.normal,
                      ),
                      ),
                        ],
                      ),
                  ],),
            
            Column(
                    children: [
                       const Icon(Icons.timelapse_outlined),
                        Text(
                       "How long to build an app?",
                       style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                       fontSize: 13, // Deep Green
                       fontWeight: FontWeight.bold,
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                           "The timeline depends on the app’s complexity,",
                           style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                           fontSize: 11, // Deep Green
                           fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                              "but most projects take 4–12 weeks, including",
                              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 11, // Deep Green
                              fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                              "planning, development, testing, and deployment phases.",
                              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 11, // Deep Green
                       fontWeight: FontWeight.normal,
                      ),
                      ),
                        ],
                      ),
                  ],),
          ],),

          const SizedBox(height: 40,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                  Column(
                    children: [
                       const Icon(Icons.question_answer_outlined),
                        Text(
                       "Do you offer app maintenance?",
                       style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                       fontSize: 13, // Deep Green
                       fontWeight: FontWeight.bold,
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                           "Yes, I provide ongoing app maintenance, including updates,",
                           style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                           fontSize: 11, // Deep Green
                           fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                              "bug fixes, and feature enhancements, ensuring",
                              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 11, // Deep Green
                              fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                             "long-term performance and user satisfaction.",
                             style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 11, // Deep Green
                             fontWeight: FontWeight.normal,
                      ),
                      ),
                        ],
                      ),
                  ],),
            
            Column(
                    children: [
                       const Icon(Icons.query_stats_outlined),
                        Text(
                       "What tools do you use?",
                       style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                       fontSize: 13, // Deep Green
                       fontWeight: FontWeight.bold,
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                           "I use Flutter, Dart, Firebase, and other modern",
                           style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                           fontSize: 11, // Deep Green
                           fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                              "technologies to deliver high-performance, scalable,",
                              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 11, // Deep Green
                              fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                              "and visually appealing mobile applications.",
                              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 11, // Deep Green
                       fontWeight: FontWeight.normal,
                      ),
                      ),
                        ],
                      ),
                  ],),
          ],),
         const SizedBox(height: 40,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                  Column(
                    children: [
                       const Icon(Icons.safety_check_outlined),
                        Text(
                       "Can you help with app deployment?",
                       style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                       fontSize: 13, // Deep Green
                       fontWeight: FontWeight.bold,
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                           "Yes, I assist with deploying apps to app stores, ensuring",
                           style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                           fontSize: 11, // Deep Green
                           fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                              "they meet all requirements and are optimized for",
                              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 11, // Deep Green
                              fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                             "a smooth user experience across platforms.",
                             style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 11, // Deep Green
                             fontWeight: FontWeight.normal,
                      ),
                      ),
                        ],
                      ),
                  ],),
            
            Column(
                    children: [
                       const Icon(Icons.contact_mail_outlined),
                        Text(
                       "How can I contact you?",
                       style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                       fontSize: 13, // Deep Green
                       fontWeight: FontWeight.bold,
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                           "You can contact me via the form on my website,",
                           style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                           fontSize: 11, // Deep Green
                           fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                              "email, or connect through LinkedIn for",
                              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 11, // Deep Green
                              fontWeight: FontWeight.normal,
                          ),
                          ),
                          Text(
                              "project discussions or inquiries.",
                              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 11, // Deep Green
                       fontWeight: FontWeight.normal,
                      ),
                      ),
                        ],
                      ),
                  ],),
          ],),
        const SizedBox(height: 40,),
    ]);
  }
}

