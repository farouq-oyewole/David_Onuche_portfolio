
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onuche_david/Responsive/responsive_layout.dart';
import 'package:onuche_david/component.dart';
import 'package:onuche_david/mobile/faith_mobile.dart';
import 'package:url_launcher/url_launcher.dart';


class Faith1 extends StatelessWidget {
  const Faith1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
         body: ResponsiveLayout(desktopBody: Faith(), mobileBody: Faith2()),
    );
}
}


class Faith extends StatelessWidget {
  const Faith({super.key});

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
                Faithpage(),
              ],
            ),
          ),
        ),
    );
  }
}

class Faithpage extends StatelessWidget {
  const Faithpage({super.key});

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
                    "Guided By Grace",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 32, // Deep Green
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "I walk through life's challenges with faith",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "trusting in God's plan and embracing",
                    style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                          fontSize: 16, // Deep Green
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "each moment as a blessing.",
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
              child: Image.asset("assets/Images/christian.png", fit: BoxFit.cover,), // Ensures the image fits the container
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
                child: Image.asset("assets/Images/good_news.png", fit: BoxFit.cover,), // Ensures the image fits the container
                ),
              ),
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Spreading the Good News of Jesus Christ:",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 25, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "Faith is the cornerstone of my life and the foundation of everything I do.",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "As a devout Christian, I am passionate about sharing the love, hope, and truth",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "of Jesus Christ with the world. My journey in faith has been one of constant",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14, // Deep Green
                            fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "growth, learning, and service, and it inspires me to positively impact lives",
                      style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                             fontSize: 14, // Deep Green
                             fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "and glorify God in all my endeavors.",
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
                    Text("My Faith Journey:", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 25,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10,),
                    Text("Growing up in a Christian family in Kogi State, Nigeria, I was taught", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14,
                            )),
                    Text("the importance of living a life dedicated to God. Over the years, my", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14,
                            )),
                    Text("relationship with Christ has deepened, shaping my values, guiding my", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14,
                            )),
                    Text("decisions, and giving me a purpose bigger than myself. Today, I am", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14,
                            )),
                    Text("committed to being a vessel for God’s glory, whether in my personal", style: 
                            GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 14,
                            )),
                    Text("life, career, or interactions with others.", style: 
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
                child: Image.asset("assets/Images/faith_journey.png", fit: BoxFit.cover,), // Ensures the image fits the container
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
                      Text("Ministry and Service", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 25,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10,),
                      Text("I actively serve in my local church and as the Prayer Coordinator for the Joint", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,
                              )),
                      Text("Campus Christian Fellowship (JCCF) in my university. I believe in the power of", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,
                              )),
                      Text("prayer and community, and I strive to encourage spiritual growth among young", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,
                              )),
                      Text("people. Through teaching, mentoring, and outreach programs, I aim to help", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,
                              )),
                      Text("others find hope and purpose in Christ.", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,
                              )),
                    ],
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
                                  fontSize: 25,fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10,),
                          Text("To me, faith is not just a belief—it’s a way of life. Whether I’m creating", style: 
                                  GoogleFonts.openSans(color: const Color(0xFF143109), 
                                  fontSize: 14,
                                  )),
                          Text("innovative tech solutions, building businesses, or inspiring others to pursue", style: 
                                  GoogleFonts.openSans(color: const Color(0xFF143109), 
                                  fontSize: 14,
                                  )),
                          Text("greatness, I seek to reflect Christ’s love and wisdom. My faith reminds me to", style: 
                                  GoogleFonts.openSans(color: const Color(0xFF143109), 
                                  fontSize: 14,
                                  )),
                          Text("lead with integrity, serve selflessly, and trust God’s plan for my life.", style: 
                                  GoogleFonts.openSans(color: const Color(0xFF143109), 
                                  fontSize: 14,
                                  )),
                        ],
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
              }, child: Text("Let’s Connect", style: GoogleFonts.openSans(color: const Color(0xFF143109),fontSize: 25,fontWeight: FontWeight.bold,),),), 
                      const SizedBox(height: 10,),
                      Text("If you’re looking for encouragement, mentorship, or simply someone", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,
                              )),
                      Text("to pray with, I would be honored to connect with you. Together,", style: 
                              GoogleFonts.openSans(color: const Color(0xFF143109), 
                              fontSize: 14,
                              )),
                      Text("let’s grow in faith and live out the purpose God has for us.", style: 
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
