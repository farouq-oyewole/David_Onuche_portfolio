// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onuche_david/Responsive/responsive_layout.dart';
import 'package:onuche_david/component.dart';
import 'package:onuche_david/main.dart';
import 'package:onuche_david/mobile/portfolio_mobile.dart';


class Port extends StatefulWidget {
  const Port({super.key});

  @override
  State<Port> createState() => _PortState();
}

class _PortState extends State<Port> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(desktopBody: Portfolio1(), mobileBody: Portfolio2()),
    );
  }
}


class Portfolio1 extends StatelessWidget {
  const Portfolio1({super.key});

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
                SizedBox(height: 100),
                Portfolio(),
              ],
            ),
          ),
        ),
    );
  }
}


class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              radius: 160,
              backgroundImage: AssetImage('assets/Images/david1.jpeg'), // Replace with actual image
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              // Committed to helping others achieve their potential and spreading the Good News of Jesus Christ. A passionate software developer and entrepreneur dedicated to building valuable products, fostering growth and development, and making a positive impact through technology, business, politics, and faith.
              children: [
                Text(
                  "Building Solutions, Leading Change,",
                  style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                        fontSize: 28, // Deep Green
                        fontWeight: FontWeight.bold,
                  ),
                ),
                 Text(
                  "Spreading Light",
                  style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                        fontSize: 28, // Deep Green
                        fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                   // const button(),
                    const SizedBox(width: 10,),
                    urlLauncher("assets/svgs/instagram.svg",
                      "https://www.instagram.com/david__onuche/"),
                      const SizedBox(width: 10,),
                    urlLauncher(
                      "assets/svgs/twitterx.svg", "https://x.com/davidonuche0"),
                      const SizedBox(width: 10,),
                    urlLauncher("assets/svgs/linkedin.svg",
                      "https://www.linkedin.com/in/david-onuche-4b0782239/"), 
                    const SizedBox(width: 10,),
                    urlLauncher(
                      "assets/svgs/github.svg", "https://github.com/davidonuche"),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 100,),
       // const Divider(thickness: 1,),
        Padding(
          padding: const EdgeInsets.only(left:100.0,right: 100.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                    "Working Experience",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 25, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Row(
                    children: [
                      Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  width: 35, // Set the width of the container
                  height: 35, // Set the height of the container
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20), // Rounded corners
                 border: Border.all(
                color: Colors.transparent, // Border color 
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
              child: Image.asset("assets/Images/polymarq_logo.png", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
                      const SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                              Text(
                    "Mobile Developer at Polymarq",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 13, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                        Text(
                    "July 2024 - September 2024",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 11, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                         ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const SizedBox(width: 15,),
                      const Icon(Icons.laptop_mac_outlined),
                      const SizedBox(width: 17,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                              Text(
                    "Mobile Developer at Aride",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 13, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                        Text(
                    "September 2023 - April 2024",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 11, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  
                         ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: 20, // Set the width of the container
                  height: 20, // Set the height of the container
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20), // Rounded corners
                 border: Border.all(
                color: Colors.transparent, // Border color 
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
              child: Image.asset("assets/Images/berry_stamp_logo.png", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                              Text(
                    "Mobile Developer at Berry Stamp",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 13, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                        Text(
                    "May 2023 - August 2023",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 11, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  
                         ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const  SizedBox(width: 15,),
                      const Icon(Icons.laptop_mac_outlined,size: 28,),
                      const SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                              Text(
                    "Mobile Developer at Nexus Dating",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 13, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                        Text(
                    "September 2024 - November 2024",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 11, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  
                         ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 25, // Set the width of the container
                  height: 25, // Set the height of the container
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20), // Rounded corners
                 border: Border.all(
                color: Colors.transparent, // Border color 
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
              child: Image.asset("assets/Images/chop_grub_logo.png", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                              Text(
                    "Mobile Developer at ChopGrub",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 13, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                        Text(
                    "June 2024 - November 2024",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 11, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  
                         ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    "Volunteering & Recognition",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 25, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Row(
                    children: [
                      Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 25, // Set the width of the container
                  height: 25, // Set the height of the container
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20), // Rounded corners
                 border: Border.all(
                color: Colors.transparent, // Border color 
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
              child: Image.asset("assets/Images/gdsc_logo.png", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
                     // const SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                              Text(
                    "GDSC_OUI Flutter Lead",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 13, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                        Text(
                    "September 2022 - September 2023",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 11, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                         ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 25, // Set the width of the container
                  height: 25, // Set the height of the container
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20), // Rounded corners
                 border: Border.all(
                color: Colors.transparent, // Border color 
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
              child: Image.asset("assets/Images/gdsc_logo.png", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
                      //const SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                              Text(
                    "GDG_OUI Co_Lead",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 13, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                        Text(
                    "September 2024 - Present",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 11, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                         ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 25, // Set the width of the container
                  height: 25, // Set the height of the container
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20), // Rounded corners
                 border: Border.all(
                color: Colors.transparent, // Border color 
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
              child: Image.asset("assets/Images/nasa_space_apps_logo.png", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
                      //const SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                              Text(
                    "NASA Space Apps lead {ile_ife}",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 13, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                        Text(
                    "May 2023 - Present",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 11, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                         ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 25, // Set the width of the container
                  height: 25, // Set the height of the container
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20), // Rounded corners
                 border: Border.all(
                color: Colors.transparent, // Border color 
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
              child: Image.asset("assets/Images/king_s_online_cyber_cafe_logo.png", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
                      //const SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                              Text(
                    "CEO of King's online cafe",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 13, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                        Text(
                    "July 2023 - Present",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 11, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                         ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}