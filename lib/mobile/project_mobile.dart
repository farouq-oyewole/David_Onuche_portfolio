
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onuche_david/component.dart';

class Projects2 extends StatefulWidget {
  const Projects2({super.key});

  @override
  State<Projects2> createState() => _Projects2State();
}

class _Projects2State extends State<Projects2> {
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
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Cryptoprojects1(),
               // SizedBox(height: 60,),
              ],
            ),
          ),
        ),
    );
  }
}


class Cryptoprojects1 extends StatefulWidget {
  const Cryptoprojects1({super.key});

  @override
  State<Cryptoprojects1> createState() => _Cryptoprojects1State();
}

class _Cryptoprojects1State extends State<Cryptoprojects1> {
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
                      "Crypto Tracker",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 19, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Track real-time cryptocurrency prices,",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "monitor market trends, compare coins",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "convert values, and manage your",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "portfolio seamlessly.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
              ],
            ),
            Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 125, // Set the width of the container
                      height: 240, // Set the height of the container
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20), // Rounded corners
                     border: Border.all(
                    color: Colors.transparent, // Border color 
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Match inner radius with container's radius
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
                      width: 130, // Set the width of the container
                      height: 250, // Set the height of the container
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
                      "Berrystamp",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 19, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Discover trending designs and artists",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "on Berrystamp. Explore creative",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "artworks, rate artists, and engage",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "vibrant designs.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
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
                      "MediMart Health",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 19, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Discover MediMart for easy access",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "to doctors, essential medications,",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "and exciting promotions!.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
              ],
            ),
             Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 125, // Set the width of the container
                      height: 240, // Set the height of the container
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
                      width: 125, // Set the width of the container
                      height: 240, // Set the height of the container
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
                      "Network Codes",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 19, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Explore all the essential codes",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  " you need in one place! Access",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "general codes and bank USSD.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
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
                      "Vail Wallet",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 19, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Vail Wallet offers seamless payment",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "solutions, enabling users to send,",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "receive, and manage funds easily. A",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "reliable app for secure transactions.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
              ],
            ),
            Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 120, // Set the width of the container
                      height: 240, // Set the height of the container
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
                      width: 120, // Set the width of the container
                      height: 250, // Set the height of the container
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
                      "Aride Driver",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 19, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Aride Driver app offers a user-",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "friendly platform for booking rides",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "quickly. Featuring real-time location",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "tracking and an intuitive interface.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
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
                      "Chop Grub App",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 19, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Chop Grub Merchant app provides",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "merchants with a comprehensive",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "dashboard to manage orders,",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "customers, effortlessly.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
              ],
            ),
            Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 120, // Set the width of the container
                      height: 240, // Set the height of the container
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
                      width: 120, // Set the width of the container
                      height: 250, // Set the height of the container
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
                      "Chop Grub User",
                      style:  GoogleFonts.montserrat(color: const Color(0xFF143109), 
                            fontSize: 18, // Deep Green
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                const SizedBox(height: 10,),
                Text(
                  "Chop Grub User Application",
                  style: GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "is your go-to app for",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "exploring restaurants",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
                        fontWeight: FontWeight.normal, // Deep Green
                  ),
                ),
                Text(
                  "nearby.",
                  style:
                        GoogleFonts.openSans(color: const Color(0xFF143109), 
                        fontSize: 10,
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


