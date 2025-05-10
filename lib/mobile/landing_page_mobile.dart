
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onuche_david/Pages/business_ventures.dart';
import 'package:onuche_david/Pages/faith.dart';
import 'package:onuche_david/Pages/politics.dart';
import 'package:onuche_david/component.dart';
import 'package:onuche_david/main.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioScreen2 extends StatelessWidget {
  const PortfolioScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: constraints.maxHeight * 0.05),
                    const Introduction(),
                    SizedBox(height: constraints.maxHeight * 0.1),
                    const Services(),
                    const Services2(),
                    SizedBox(height: constraints.maxHeight * 0.12),
                    const Featured(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CircleAvatar(
          radius: 140,
          backgroundImage: AssetImage('assets/Images/david_logo0.png'),
        ),
        SizedBox(height: screenWidth * 0.05),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            children: [
              const ResponsiveText("David Onuche - Building, Leading"),
              const ResponsiveText("and impacting Lives"),
              SizedBox(height: screenWidth * 0.03),
              const Text(
                "A passionate software developer and entrepreneur dedicated "
                "to building valuable products, fostering growth and "
                "development, and making a positive impact through "
                "technology, business, politics, and faith.",
                style: TextStyle(fontSize: 9, color: Color(0xFF143109), fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenWidth * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const button(),
                  urlLauncher("assets/svgs/instagram.svg",
                      "https://www.instagram.com/david__onuche/"),
                  urlLauncher("assets/svgs/twitterx.svg",
                      "https://x.com/davidonuche0"),
                  urlLauncher("assets/svgs/linkedin.svg",
                      "https://www.linkedin.com/in/david-onuche-4b0782239/"),
                  urlLauncher("assets/svgs/github.svg", "https://github.com/davidonuche")
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ResponsiveText extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign textAlign;

  const ResponsiveText(
    this.text, {
    super.key,
    this.fontSize = 20,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.montserrat(
        color: const Color(0xFF143109),
        fontSize:  20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ResponsiveText("My Awesome Services", fontSize: 25),
        const ResponsiveText("Check out my CV in PDF below.",
        fontSize: 20
        ),
        SizedBox(height: screenWidth * 0.03),
        ElevatedButton(
          onPressed: () async {
            const url = 'https://www.linkedin.com/in/david-onuche-4b0782239/';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF143109),
          ),
          child: Text("Download CV", style: GoogleFonts.openSans(color: Colors.white, 
                            fontSize: 15,
                            fontWeight: FontWeight.bold,),),),
        SizedBox(height: screenWidth * 0.05),
      ],
    );
  }
}

class Services2 extends StatelessWidget {
  const Services2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AnimatedCard(
          imagePath: 'assets/Images/app_dev.png',
          text: "Mobile Applications",
          width: screenWidth * 0.8,
        ),
        SizedBox(height: screenWidth * 0.05),
        AnimatedCard(
          imagePath: 'assets/Images/web2.png',
          text: "Web Applications",
          fit: BoxFit.contain,
          reverse: true,
          width: screenWidth * 0.8,
        ),
        SizedBox(height: screenWidth * 0.05),
        AnimatedCard(
          imagePath: 'assets/Images/firebase2.png',
          text: "Backend With Firebase",
          fit: BoxFit.contain,
          width: screenWidth * 0.8,
        ),
      ],
    );
  }
}

class Featured extends StatelessWidget {
  const Featured({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          // Featured Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Featured Stories",
                      style: GoogleFonts.openSans(
                          color: const Color(0xFF143109),
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text("David Onuche -",
                      style: GoogleFonts.openSans(
                        color: const Color(0xFF143109),
                        fontSize: 9,
                      )),
                  Text("visionaries, creators, driving progress.",
                      style: GoogleFonts.openSans(
                        color: const Color(0xFF143109),
                        fontSize: 9,
                      )),
                  
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => const Business1()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF143109))),
                child: Text("Show more",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 11,
                    )),
              ),
            ],
          ),
          const Divider(color: Color(0xFF143109), thickness: 0.2),
          // Second Story: Politics Journey
          _buildStorySection(
              context,
              "Politics Journey",
              "Politics Story",
              "David Onuche navigates the complexities of leadership with steadfast integrity, driven by a vision of justice and equality.",
              "assets/Images/david_entr2.jpeg",
              const Politic(),
              isImageLeft: true),

          const Divider(color: Color(0xFF143109), thickness: 0.2),

          // Third Story: Faith Journey
          _buildStorySection(
              context,
              "Faith Journey",
              "Christianity Story",
              "David Onuche walk through life's challenges with faith, trusting in God's plan and embracing each moment as a blessing.",
              "assets/Images/christian.png",
              const Faith1()),
        ],
      ),
    );
  }

  // Story Section Builder
  Widget _buildStorySection(BuildContext context, String buttonText,
      String title, String description, String imagePath, Widget page,
      {bool isImageLeft = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: isImageLeft
          ? [
              _buildImage(imagePath),
              _buildTextContent(context, buttonText, title, description, page),
            ]
          : [
              _buildTextContent(context, buttonText, title, description, page),
              _buildImage(imagePath),
            ],
    );
  }

  // Image Widget
  Widget _buildImage(String imagePath) {
    return Container(
      width: 132,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.transparent),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }

  // Text Content Widget
  Widget _buildTextContent(BuildContext context, String buttonText,
      String title, String description, Widget page) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (builder) => page));
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color(0xFF143109))),
          child: Text(buttonText,
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: 11,
              )),
        ),
        const SizedBox(height: 20),
        Text(title,
            style: GoogleFonts.openSans(
                color: const Color(0xFF143109),
                fontSize: 14,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        SizedBox(
          width: 180, // Prevents text overflow
          child: Text(description,
              style: GoogleFonts.openSans(
                color: const Color(0xFF143109),
                fontSize: 9,
              )),
        ),
      ],
    );
  }
}