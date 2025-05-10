
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onuche_david/Responsive/responsive_layout.dart';
import 'package:onuche_david/component.dart';
import 'package:onuche_david/mobile/politics_mobile.dart';

class Politic extends StatelessWidget {
  const Politic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
         body: ResponsiveLayout(desktopBody: Politics(), mobileBody: Politics2()),
    );
  }
}

class Politics extends StatelessWidget {
  const Politics({super.key});

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
                SizedBox(height: 40),
                PoliticsScreen(),
              ],
            ),
          ),
        ),
    );
  }
}


class PoliticsScreen extends StatelessWidget {
  const PoliticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //const SizedBox(height: 100,),
                  Text(
                    "My Politics Journey",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 32, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "I navigate the complexities of leadership with steadfast",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "integrity, driven by a vision of justice and equality.",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "From grassroots activism to national leadership,",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "championing change and progress.",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
               Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Container(
                  width: 420, // Set the width of the container
                  height: 520, // Set the height of the container
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(2), // Rounded corners
                 border: Border.all(
                color: Colors.transparent, // Border color 
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2), // Match inner radius with container's radius
              child: Image.asset("assets/Images/dave.png", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left:30.0, right: 30.0),
            child: Divider(thickness: 0.2, color: Color(0xFF143109),),
          ),
        //  const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0,top: 20.0, bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 490, // Set the width of the container
                    height: 320, // Set the height of the container
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15), // Rounded corners
                   border: Border.all(
                  color: Colors.transparent, // Border color 
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Match inner radius with container's radius
                child: Image.asset("assets/Images/department.png", fit: BoxFit.cover,), // Ensures the image fits the container
                ),
              ),
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Being the Departmental Head of Class:",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 25, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "As the Departmental Head of Class, I took on the responsibility of representing",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "my peers, coordinating academic activities, and fostering a supportive learning",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "environment. My role involved organizing meetings, liaising with faculty, and",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "ensuring clear communication between students and the department, all while",
                      style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 14, // Deep Green
                             fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "promoting teamwork and unity among coursemates.",
                      style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 14, // Deep Green
                             fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
             padding: EdgeInsets.only(left:30.0, right: 30.0),
             child: Divider(thickness: 0.2,color: Color(0xFF143109),),
          ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0,top: 20.0, bottom: 20.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Journey as GDG_OUI Co-lead:", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 25,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10,),
                    Text("Serving as the GDG_OUI Co-lead, I have played a key role in nurturing a", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14,
                            )),
                    Text("thriving tech community. From organizing workshops and hackathons to", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14,
                            )),
                    Text("mentoring developers, my journey has been about fostering innovation,", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14,
                            )),
                    Text("encouraging collaboration, and empowering others to excel in the ever", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14,
                            )),
                    Text("-evolving world of tech.", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14,
                            )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 480, // Set the width of the container
                    height: 320, // Set the height of the container
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20), // Rounded corners
                   border: Border.all(
                  color: Colors.transparent, // Border color 
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Match inner radius with container's radius
                child: Image.asset("assets/Images/Tech_gdg2.png", fit: BoxFit.cover,), // Ensures the image fits the container
                ),
              ),
              ),
                ],
          ),
        ),
        const Padding(
           padding: EdgeInsets.only(left:30.0, right: 30.0),
          child: Divider(
              color: Color(0xFF143109),
              thickness: 0.2,
            ),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0,top: 20.0, bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 480, // Set the width of the container
                    height: 320, // Set the height of the container
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20), // Rounded corners
                   border: Border.all(
                  color: Colors.transparent, // Border color 
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Match inner radius with container's radius
                child: Image.asset("assets/Images/Concert.png", fit: BoxFit.cover,), // Ensures the image fits the container
                ),
              ),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Being The President of 'Gratitude Concert':", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 25,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10,),
                      Text("As the President of the 'Gratitude Concert,' I spearheaded a team to organize", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,
                              )),
                      Text("a transformative musical event celebrating faith and thanksgiving. My role", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,
                              )),
                      Text("planning, coordinating performers, managing logistics, and ensuring the concert", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,
                              )),
                      Text("inspired attendees while fostering a sense of community and gratitude.", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,
                              )),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}