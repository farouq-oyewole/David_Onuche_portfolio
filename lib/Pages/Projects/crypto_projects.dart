// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: camel_case_types, file_names


import 'package:onuche_david/component.dart';
import 'package:onuche_david/mobile/project_mobile.dart';
import 'package:onuche_david/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(desktopBody: Projects1(), mobileBody: Projects2()),
    );
  }
}




class Projects1 extends StatefulWidget {
  const Projects1({super.key});

  @override
  State<Projects1> createState() => _Projects1State();
}

class _Projects1State extends State<Projects1> {
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
                Cryptoprojects(),
              ],
            ),
          ),
        ),
    );
  }
}


class Cryptoprojects extends StatelessWidget {
  const Cryptoprojects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                      "Crypto Tracker: Real-Time",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                 Text(
                  "Market Insights",
                  style: GoogleFonts.montserrat(color: const Color(0xFF143109), 
                        fontSize: 34, // Deep Green
                        fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  "Track real-time cryptocurrency prices, monitor market trends, compare",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "coins convert values, and manage your portfolio seamlessly with our",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "intuitive, all-in-one crypto app.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
              ],
            ),
            Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 250, // Set the width of the container
                      height: 480, // Set the height of the container
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), // Rounded corners
                     border: Border.all(
                    color: Colors.transparent, // Border color 
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
                  child: Image.asset("assets/Images/crypt.png", fit: BoxFit.cover,), // Ensures the image fits the container
                  ),
                ),
                ),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 250, // Set the width of the container
                      height: 480, // Set the height of the container
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), // Rounded corners
                     border: Border.all(
                    color: Colors.transparent, // Border color 
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
                  child: Image.asset("assets/Images/Berrystamp.png", fit: BoxFit.cover,), // Ensures the image fits the container
                  ),
                ),
                ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                      "Berrystamp App Interface",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Discover trending designs and top artists like Mohh_Jumah on",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "Berrystamp!. Explore creative artworks, rate artists, and engage",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "with vibrant designs tailored for art enthusiasts.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                      "Simplify Healthcare",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "with MediMart",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Discover MediMart for easy access to doctors, essential medications,",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "and exciting promotions! Order medicines effortlessly and connect",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "with the community for a healthier lifestyle.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
              ],
            ),
             Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 250, // Set the width of the container
                      height: 480, // Set the height of the container
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), // Rounded corners
                     border: Border.all(
                    color: Colors.transparent, // Border color 
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
                  child: Image.asset("assets/Images/medimart.png", fit: BoxFit.cover,), // Ensures the image fits the container
                  ),
                ),
                ),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 250, // Set the width of the container
                      height: 480, // Set the height of the container
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), // Rounded corners
                     border: Border.all(
                    color: Colors.transparent, // Border color 
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
                  child: Image.asset("assets/Images/Network_codes.png", fit: BoxFit.cover,), // Ensures the image fits the container
                  ),
                ),
                ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                      "Stay Connected with",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Nigeria Network Codes",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Explore all the essential codes you need in one place!.",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "Access general codes, bank USSD services, network confirmation tools,",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "and swift bank codes with ease.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                      "Vail Wallet: ",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Simplifying Transactions",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Vail Wallet offers seamless payment solutions, enabling users to send,",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "receive, and manage funds effortlessly. With added features like ",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "cashback rewards, it's a reliable app for secure financial transactions.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
              ],
            ),
            Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 250, // Set the width of the container
                      height: 480, // Set the height of the container
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), // Rounded corners
                     border: Border.all(
                    color: Colors.transparent, // Border color 
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
                  child: Image.asset("assets/Images/Vail_wallet.png", fit: BoxFit.cover,), // Ensures the image fits the container
                  ),
                ),
                ),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 250, // Set the width of the container
                      height: 480, // Set the height of the container
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), // Rounded corners
                     border: Border.all(
                    color: Colors.transparent, // Border color 
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
                  child: Image.asset("assets/Images/Aride_driver_app.png", fit: BoxFit.cover,), // Ensures the image fits the container
                  ),
                ),
                ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                      "Aride Driver:",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Simplify Your Ride Requests",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Aride Driver app offers a user-friendly platform for booking",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "rides quickly. Featuring real-time location tracking and an",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "intuitive interface.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
              ],
            ),
          ],
        ),
         const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                      "Chop Grub Merchant:",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Your Business at Your Fingertips",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Chop Grub Merchant app provides merchants with a comprehensive",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "dashboard to manage orders, customers, and revenue effortlessly.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "Featuring insights like total sales, most sold items, and so on.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
              ],
            ),
            Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 250, // Set the width of the container
                      height: 480, // Set the height of the container
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), // Rounded corners
                     border: Border.all(
                    color: Colors.transparent, // Border color 
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
                  child: Image.asset("assets/Images/Chop_grub_merchant.png", fit: BoxFit.cover,), // Ensures the image fits the container
                  ),
                ),
                ),
          ],
        ),
         const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 250, // Set the width of the container
                      height: 480, // Set the height of the container
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), // Rounded corners
                     border: Border.all(
                    color: Colors.transparent, // Border color 
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16), // Match inner radius with container's radius
                  child: Image.asset("assets/Images/Chop_grub_user_application.png", fit: BoxFit.cover,), // Ensures the image fits the container
                  ),
                ),
                ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                      "Chop Grub User Application:",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Discover Restaurants Easily",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 34, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Chop Grub User Application is your go-to app",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "for exploring restaurants nearby. With a sleek design and",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "intuitive interface, users can browse a variety of cuisines.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 16,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
