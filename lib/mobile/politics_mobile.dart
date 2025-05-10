
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onuche_david/component.dart';

class Politics2 extends StatelessWidget {
  const Politics2({super.key});

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
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "I navigate the complexities",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 10, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "of leadership with steadfast",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 10, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "integrity, driven by a vision",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 10, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "of justice and equality. From",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 10, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                Text(
                    "grassroots activism to national",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 10, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                Text(
                    "leadership,championing change.",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 10, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
               Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Container(
                  width: 175, // Set the width of the container
                  height: 290, // Set the height of the container
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
            padding: EdgeInsets.only(left:5.0, right: 5.0),
            child: Divider(thickness: 0.2, color: Color(0xFF143109),),
          ),
        //  const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 160, // Set the width of the container
                    height: 290, // Set the height of the container
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
                      "Being the HOC",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 15, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "As the Departmental Head",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "of class, I took on the",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "responsibility of representing",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "my peers, managing academic",
                      style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 10, // Deep Green
                             fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "activities, and fostering",
                      style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 10, // Deep Green
                             fontWeight: FontWeight.normal,
                      ),
                    ),
                  Text(
                      "teamwork among coursemates.",
                      style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 10, // Deep Green
                             fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
             padding: EdgeInsets.only(left:10.0, right: 10.0),
             child: Divider(thickness: 0.2,color: Color(0xFF143109),),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("GDG_OUI Co-lead:", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 15,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10,),
                    Text("Serving as the GDG_OUI Co-lead,", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10,
                            )),
                    Text("I have played a key role in", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10,
                            )),
                    Text("nurturing a thriving tech", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10,
                            )),
                    Text("community. From organizing", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10,
                            )),
                    Text("programs to mentoring", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10,
                            )),
                    Text("developers, my journey", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10,
                            )),
                    Text("has been about fostering", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10,
                            )),
                    Text("innovation encouraging", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10,
                            )),
                  Text("collaboration and", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10,
                            )),
                  Text("empowering others", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10,
                            )),
                  Text("to excel.", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 10,
                            )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 165, // Set the width of the container
                    height: 290, // Set the height of the container
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
           padding: EdgeInsets.only(left:5.0, right: 5.0),
          child: Divider(
              color: Color(0xFF143109),
              thickness: 0.2,
            ),
        ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 150, // Set the width of the container
                    height: 290, // Set the height of the container
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
                      Text("'Gratitude Concert'", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10,),
                      Text("As the President of the", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("'Gratitude Concert' I", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("spearheaded a team to", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("organize a transformative", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("musical event celebrating", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("faith and inspired attendees", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("while fostering a sense of", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("community and gratitude.", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
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