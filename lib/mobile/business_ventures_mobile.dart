
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onuche_david/component.dart';
import 'package:url_launcher/url_launcher.dart';

class Business2 extends StatelessWidget {
  const Business2({super.key});

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
        padding: EdgeInsets.only(left:16.0, right:16.0),
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 8),
                business(),
              ],
            ),
          ),
        ),
    );
  }
}


// ignore: camel_case_types
class business extends StatelessWidget {
  const business({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             Text(
                    "My Entrepreneurship Story",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                 const SizedBox(height: 20,),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "A vibrant online café for students,",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10.80, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "and inspiration in a digital space.",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10.80, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                //const SizedBox(width: 600,),
                 ElevatedButton(
              onPressed: () 
                async {
              final Uri whatsappUri = Uri.parse(
                'https://wa.me/+2348022431346?text=Hello%20there!',
              );

              if (await canLaunchUrl(whatsappUri)) {
                await launchUrl(whatsappUri);
              } else {
                throw 'Could not launch $whatsappUri';
              }
              },
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF143109), // Button color (Deep Green)
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
             ),
          child: Text(
            "Let's talk",
            style: GoogleFonts.montserrat(color: Colors.white,
          ),
        ),
        ),
        const SizedBox(height: 40,),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Container(
                  width: 600, // Set the width of the container
                  height: 400, // Set the height of the container
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20), // Rounded corners
                 border: Border.all(
                color: Colors.transparent, // Border color 
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
              child: Image.asset("assets/Images/david_proffessional.png", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Text(
                    "My Story",
                      style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                              fontSize: 13, // Deep Green
                              fontWeight: FontWeight.bold,
                          ),
                        ),
              Padding(
                padding: const EdgeInsets.all(15.0),
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
              child: Image.asset("assets/Images/king_s_online_cyber_cafe_logo.png", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
            ],
          ),
          const SizedBox(height: 10,),
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             Text(
                    "An inspiring entrepreneurial journey began with owning a vibrant game store sparking a passion",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                   Text(
                    "for business. The venture evolved into selling elegant jewelry, combining creativity with commerce.",
                    style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
              Text(
                    "Next came a leap into the footwear market, offering stylish shoes and refining customer service",
                    style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "skills. Finally, these diverse experiences converged to create a dynamic online cyber café—a",
                    style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "digital haven for students, blending innovation, collaboration, and learning in one virtual space.",
                    style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
        ],
      ),
        ],
      ),
    );
  }
}