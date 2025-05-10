
// ignore_for_file: deprecated_member_use

import 'package:onuche_david/Pages/business_ventures.dart';
import 'package:onuche_david/Pages/contact.dart';
import 'package:onuche_david/Pages/faith.dart';
import 'package:onuche_david/Pages/politics.dart';
import 'package:onuche_david/component.dart';
import 'package:onuche_david/mobile/landing_page_mobile.dart';
import 'package:onuche_david/responsive/responsive_layout.dart';
import 'package:onuche_david/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDZhTcbFbkVDal4D-Dde9Dnr7pvsSF0Svk",
        authDomain: "onuche-david-a022f.firebaseapp.com",
        projectId: "onuche-david-a022f",
        storageBucket: "onuche-david-a022f.firebasestorage.app",
        messagingSenderId: "659899360025",
        appId: "1:659899360025:web:21cfefab7d1e046b535b88",
        measurementId: "G-QVWTBB8R94"
      )
    );
  }
  else{
    await Firebase.initializeApp();
  }
  runApp(
     const PortfolioApp(),
  );
}
class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortfolioPage(),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
         body: ResponsiveLayout(desktopBody: PortfolioScreen(), mobileBody: PortfolioScreen2()),
    );
  }
}

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                IntroductionImage(),
                SizedBox(height: 155),
                Services(),
                Services2(),
                SizedBox(height: 200),
                Featured(),
               // Footer(),
              ],
            ),
          ),
        ),
      );
  }
}

// Introduction section
class IntroductionImage extends StatelessWidget {
  const IntroductionImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          // Committed to helping others achieve their potential and spreading the Good News of Jesus Christ. A passionate software developer and entrepreneur dedicated to building valuable products, fostering growth and development, and making a positive impact through technology, business, politics, and faith.
          children: [
            Text(
              "David Onuche - Building, Leading,",
              style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                    fontSize: 35, // Deep Green
                    fontWeight: FontWeight.bold,
              ),
            ),
             Text(
              "and impacting Lives",
              style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                    fontSize: 35, // Deep Green
                    fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              "A passionate software developer and entrepreneur dedicated to building valuable products,",
              style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                    fontSize: 12,
                    fontWeight: FontWeight.bold, // Deep Green
              ),
            ),
            Text(
              "fostering growth and development, and making a positive impact through technology,",
              style:
                    GoogleFonts.openSans(color: const Color(0xFF143109), 
                    fontSize: 12,
                    fontWeight: FontWeight.bold, // Deep Green
              ),
            ),
            Text(
              "business, politics, and faith.",
              style:
                    GoogleFonts.openSans(color: const Color(0xFF143109), 
                    fontSize: 12,
                    fontWeight: FontWeight.bold, // Deep Green
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const button(),
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
                urlLauncher("assets/svgs/github.svg", "https://github.com/davidonuche"), 
                
              ],
            ),
          ],
        ),
        const CircleAvatar(
          radius: 160,
          backgroundImage: AssetImage('assets/Images/david_logo0.png'), // Replace with actual image
        ),
      ],
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("My awesome", style: 
                            GoogleFonts.openSans(color: const Color(0xFF143109), 
                            fontSize: 35,
                            fontWeight: FontWeight.bold, // Deep Green
                      ),),
                Text("Services", style: 
                            GoogleFonts.openSans(color: const Color(0xFF143109), 
                            fontSize: 35,
                            fontWeight: FontWeight.bold, // Deep Green
                      ),),
                Text("Check out my CV in PDF below.", style: 
                            GoogleFonts.openSans(color: const Color(0xFF143109), 
                            fontSize: 18, // Deep Green
                      ),),
                const SizedBox(height: 10,),
                ElevatedButton(onPressed:() async {
               const url = 'https://www.linkedin.com/in/david-onuche-4b0782239/'; // Replace with your actual CV link
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            }, style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color((0xFF143109)))), child: Text("Download CV", style: GoogleFonts.openSans(color: Colors.white, 
                            fontSize: 14,
                            fontWeight: FontWeight.bold,),),),
              ],
            ),
        const AnimatedCard(imagePath: 'assets/Images/app_dev.png', text: "Mobile Applications",fit: BoxFit.contain,),
            ],
          );
  }
}

class Services2 extends StatelessWidget {
  const Services2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: 450,),
        AnimatedCard(imagePath: 'assets/Images/web2.png', text: "Web Applications",fit: BoxFit.contain,),
        SizedBox(width: 50,),
        Column(
          children: [
            SizedBox(height: 70,),
            AnimatedCard(imagePath: 'assets/Images/firebase2.png', text: "Backend With Firebase",fit: BoxFit.contain,),
          ],
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
      padding: const EdgeInsets.only(left: 30.0, right: 30.0,top: 20.0, bottom: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Featured Stories", style: 
                          GoogleFonts.openSans(color: const Color(0xFF143109), 
                          fontSize: 28,fontWeight: FontWeight.bold)),
                  Text("David Onuche - ", style: 
                          GoogleFonts.openSans(color: const Color(0xFF143109), 
                          fontSize: 14,
                          )),
                  Text("visionaries, creators, and change-makers driving progress.", style: 
                          GoogleFonts.openSans(color: const Color(0xFF143109), 
                          fontSize: 14,
                          )),
                  const SizedBox(height: 20,),
                ],
              ),
              const SizedBox(width: 50,),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Business1()));
              }, 
                style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xFF143109))),child: Text("Show more", style: 
                          GoogleFonts.openSans(color: Colors.white,  
                          fontSize: 14,)),),
            ],
          ),
         const Divider(
            color: Color(0xFF143109),
            thickness: 0.2,
          ),
          
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 480, // Set the width of the container
                  height: 360, // Set the height of the container
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20), // Rounded corners
                 border: Border.all(
                color: Colors.transparent, // Border color 
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
              child: Image.asset("assets/Images/david_entr2.jpeg", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Politic()));
                    }, style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xFF143109))),child: Text("Politics Journey", style: 
                            GoogleFonts.openSans(color: Colors.white,  
                            fontSize: 14,)),),
                    const SizedBox(height: 20,),
                    Text("Politics Story", style: 
                            GoogleFonts.openSans(color: const Color(0xFF143109), 
                            fontSize: 23,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10,),
                    Text("David Onuche navigates the complexities of leadership with steadfast", style: 
                            GoogleFonts.openSans(color: const Color(0xFF143109), 
                            fontSize: 12,
                            )),
                    Text("integrity, driven by a vision of justice and equality.", style: 
                            GoogleFonts.openSans(color: const Color(0xFF143109), 
                            fontSize: 12,
                            )),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            color: Color(0xFF143109),
            thickness: 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Faith1()));
                  }, style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xFF143109))),child: Text("Faith Journey", style: 
                          GoogleFonts.openSans(color: Colors.white,  
                          fontSize: 14,)),),
                  const SizedBox(height: 20,),
                  Text("Christianity Story", style: 
                          GoogleFonts.openSans(color: const Color(0xFF143109), 
                          fontSize: 23,fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10,),
                  Text("David Onuche walk through life's challenges with faith, trusting in", style: 
                          GoogleFonts.openSans(color: const Color(0xFF143109), 
                          fontSize: 12,
                          )),
                  Text("God's plan and embracing each moment as a blessing.", style: 
                          GoogleFonts.openSans(color: const Color(0xFF143109), 
                          fontSize: 12,
                          )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 450, // Set the width of the container
                  height: 420, // Set the height of the container
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(16), // Rounded corners
                 border: Border.all(
                color: Colors.transparent, // Border color 
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
              child: Image.asset("assets/Images/christian.png", fit: BoxFit.cover,), // Ensures the image fits the container
              ),
            ),
            ),
            ],
          ),
         // const Divider(
         //   color: Color(0xFF143109),
         //   thickness: 0.2,
        //  ),
        ],
      ),
    );
  }
}


// ignore: camel_case_types
class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        ElevatedButton(
          onPressed: ()  {
              Navigator.push(context, (MaterialPageRoute(builder: (builder) => const Contact())));
            },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF143109), // Button color (Deep Green)
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child: Text(
            'Contact Me',
            style: GoogleFonts.montserrat(color: Colors.white,
          ),
        ),
        );
  }
}
urlLauncher(String imgPath, String url) {
 return IconButton(
   icon: SvgPicture.asset(imgPath, color: const Color((0xFF143109)), width: 30),
  onPressed: () async {
    await launchUrl(Uri.parse(url));
    },
  );
}

String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

