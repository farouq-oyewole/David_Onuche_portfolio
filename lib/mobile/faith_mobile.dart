
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onuche_david/component.dart';
import 'package:url_launcher/url_launcher.dart';

class Faith2 extends StatelessWidget {
  const Faith2({super.key});

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
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 8),
                Faithpage1(),
              ],
            ),
          ),
        ),
    );
  }
}

class Faithpage1 extends StatelessWidget {
  const Faithpage1({super.key});

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
                  Text(
                    "Guided By Grace:",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 20, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "A Life of Faith",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 20, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "I walk through life's challenges",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 11, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "with faith, trusting in God's plan",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 11, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "and embracing each moment.",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 11, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
               Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Container(
                  width: 160, // Set the width of the container
                  height: 300, // Set the height of the container
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(2), // Rounded corners
                 border: Border.all(
                color: Colors.transparent, // Border color 
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2), // Match inner radius with container's radius
              child: Image.asset("assets/Images/christian.png", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left:10.0, right: 10.0),
            child: Divider(thickness: 0.2, color: Color(0xFF143109),),
          ),
        //  const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150, // Set the width of the container
                    height: 200, // Set the height of the container
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15), // Rounded corners
                   border: Border.all(
                  color: Colors.transparent, // Border color 
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Match inner radius with container's radius
                child: Image.asset("assets/Images/good_news.png", fit: BoxFit.cover,), // Ensures the image fits the container
                ),
              ),
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Spreading Good News",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "Faith is the cornerstone of",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "my life and the foundation of",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "everything I do. As a devout",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "Christian, I am passionate",
                      style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 11, // Deep Green
                             fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "about sharing the love, and",
                      style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 11, // Deep Green
                             fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "truth of Jesus Christ..",
                      style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 11, // Deep Green
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
                    Text("My Faith Journey:", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10,),
                    Text("Growing up in a Christian family", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11,
                            )),
                    Text("in Kogi State, Nigeria, I was", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11,
                            )),
                    Text("taught the importance of living", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11,
                            )),
                    Text("a life dedicated to God. Over", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11,
                            )),
                    Text("the years, my relationship with", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11,
                            )),
                    Text("Christ has deepened, shaping my", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11,
                            )),
                    Text("values, guiding my decisions,", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11,
                            )),
                    Text("and giving me a purpose bigger", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11,
                            )),
                    Text("than myself. Today, I am", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11,
                            )),
                    Text("committed to being a vessel", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11,
                            )),
                    Text(" for God’s glory.", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 11,
                            )),
                  ]
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 150, // Set the width of the container
                    height: 220, // Set the height of the container
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20), // Rounded corners
                   border: Border.all(
                  color: Colors.transparent, // Border color 
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Match inner radius with container's radius
                child: Image.asset("assets/Images/faith_journey.png", fit: BoxFit.cover,), // Ensures the image fits the container
                ),
              ),
              ),
                ],
          ),
        ),
        const Padding(
           padding: EdgeInsets.only(left:10.0, right: 10.0),
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
                    height: 200, // Set the height of the container
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20), // Rounded corners
                   border: Border.all(
                  color: Colors.transparent, // Border color 
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Match inner radius with container's radius
                child: Image.asset("assets/Images/Ministry.png", fit: BoxFit.cover,), // Ensures the image fits the container
                ),
              ),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ministry & Service", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10,),
                      Text("I actively serve in my local", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("church and as the Prayer", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("Coordinator for the Joint", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("Campus Christian Fellowship", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("in my university. I believe", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("in the power of prayer and", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("I strive to encourage growth.", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
           padding: EdgeInsets.only(left:10.0, right: 10.0),
          child: Divider(
              color: Color(0xFF143109),
              thickness: 0.2,
            ),
        ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Faith in Action", style: 
                                  GoogleFonts.openSans(color: const Color(0xFF143109), 
                                  fontSize: 14,fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10,),
                          Text("To me, faith is not just a belief", style: 
                                  GoogleFonts.openSans(color: const Color(0xFF143109), 
                                  fontSize: 11,
                                  )),
                          Text("it’s a way of life. Whether I’m", style: 
                                  GoogleFonts.openSans(color: const Color(0xFF143109), 
                                  fontSize: 11,
                                  )),
                          Text("creating innovative tech solutions,", style: 
                                  GoogleFonts.openSans(color: const Color(0xFF143109), 
                                  fontSize: 11,
                                  )),
                          Text("building businesses, or inspiring", style: 
                                  GoogleFonts.openSans(color: const Color(0xFF143109), 
                                  fontSize: 11,
                                  )),
                          Text("others topursue greatness, I seek", style: 
                                  GoogleFonts.openSans(color: const Color(0xFF143109), 
                                  fontSize: 11,
                                  )),
                          Text("to reflect Christ’s love and wisdom.", style: 
                                  GoogleFonts.openSans(color: const Color(0xFF143109), 
                                  fontSize: 11,
                                  )),
                        ],
                      ),
                      Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 135, // Set the width of the container
                    height: 200, // Set the height of the container
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20), // Rounded corners
                   border: Border.all(
                  color: Colors.transparent, // Border color 
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Match inner radius with container's radius
                child: Image.asset("assets/Images/action.png", fit: BoxFit.cover,), // Ensures the image fits the container
                ),
              ),
              ),
              ],
            ),
          ),
                    ],
                  ),
                ),
          const Padding(
           padding: EdgeInsets.only(left:10.0, right: 10.0),
          child: Divider(
              color: Color(0xFF143109),
              thickness: 0.2,
            ),
        ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 150, // Set the width of the container
                    height: 200, // Set the height of the container
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20), // Rounded corners
                   border: Border.all(
                  color: Colors.transparent, // Border color 
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Match inner radius with container's radius
                child: Image.asset("assets/Images/connect.png", fit: BoxFit.cover,), // Ensures the image fits the container
                ),
              ),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: () async {
              final Uri whatsappUri = Uri.parse(
                'https://wa.me/+2348022431346?text=Hello%20there!',
              );

              if (await canLaunchUrl(whatsappUri)) {
                await launchUrl(whatsappUri);
              } else {
                throw 'Could not launch $whatsappUri';
              }
              }, child: Text("Let’s Connect", style: GoogleFonts.openSans(color: const Color(0xFF143109),fontSize: 14,fontWeight: FontWeight.bold,),),), 
                      const SizedBox(height: 10,),
                      Text("If you’re looking for", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("mentorship or simply", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("someone to pray", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("with, I would be honored", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("to connect with you.", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("Together, let’s grow in", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("faith and live out the", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 11,
                              )),
                      Text("purpose God has for us.", style: 
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
