
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onuche_david/component.dart';
import 'package:onuche_david/main.dart';

class Portfolio2 extends StatelessWidget {
  const Portfolio2({super.key});

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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0), // Ensures uniform padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Portfolio4(),
              ExperienceScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class Portfolio4 extends StatelessWidget {
  const Portfolio4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Keep consistency
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 120, // Slightly smaller for better scaling
                backgroundImage: AssetImage('assets/Images/david1.jpeg'),
              ),
              const SizedBox(height: 20),
              Text(
                "Building Solutions, Leading Change,",
                textAlign: TextAlign.center, // Ensures alignment on all devices
                style: GoogleFonts.montserrat(
                  color: const Color(0xFF143109),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Spreading Light",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: const Color(0xFF143109),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  urlLauncher("assets/svgs/instagram.svg", "https://www.instagram.com/david__onuche/"),
                  const SizedBox(width: 7),
                  urlLauncher("assets/svgs/twitterx.svg", "https://x.com/davidonuche0"),
                  const SizedBox(width: 7),
                  urlLauncher("assets/svgs/linkedin.svg", "https://www.linkedin.com/in/david-onuche-4b0782239/"),
                  const SizedBox(width: 7),
                  urlLauncher("assets/svgs/github.svg", "https://github.com/davidonuche"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double contentWidth = screenWidth > 800 ? 600 : screenWidth * 0.9; // Keep max width

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: contentWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildSectionTitle("Work Experience"),
              const SizedBox(height: 20),
              _buildExperienceItem(
                logo: "assets/Images/polymarq_logo.png",
                title: "Mobile Developer at Polymarq (July 2024 - Sep 2024)",
              ),
              _buildExperienceItem(
                icon: Icons.laptop_mac_outlined,
                title: "Mobile Developer at Aride (Sep 2023 - April 2024)",
              ),
              _buildExperienceItem(
                logo: "assets/Images/berry_stamp_logo.png",
                title: "Mobile Developer at Berry Stamp (May 2023 - Aug 2023)",
              ),
              _buildExperienceItem(
                icon: Icons.laptop_mac_outlined,
                title: "Mobile Developer at Nexus Dating (Sep 2024 - Nov 2024)",
              ),
              _buildExperienceItem(
                logo: "assets/Images/chop_grub_logo.png",
                title: "Mobile Developer at ChopGrub (June 2024 - Nov 2024)",
              ),
              const SizedBox(height: 40),

              _buildSectionTitle("Volunteering & Recognition"),
              const SizedBox(height: 20),
              _buildExperienceItem(
                logo: "assets/Images/gdsc_logo.png",
                title: "GDSC_OUI Flutter Lead (Sep 2022 - Sep 2023)",
              ),
              _buildExperienceItem(
                logo: "assets/Images/gdsc_logo.png",
                title: "GDG_OUI Co_Lead (Sep 2024 - Present)",
              ),
              _buildExperienceItem(
                logo: "assets/Images/nasa_space_apps_logo.png",
                title: "NASA Space Apps Lead (Ile-Ife) (May 2023 - Present)",
              ),
              _buildExperienceItem(
                logo: "assets/Images/king_s_online_cyber_cafe_logo.png",
                title: "CEO of King's Online Cafe (July 2023 - Present)",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      textAlign: TextAlign.center, // Keeps it centered across devices
      style: GoogleFonts.montserrat(
        color: const Color(0xFF143109),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildExperienceItem({String? logo, IconData? icon, required String title}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // Keep items aligned
        children: [
          if (logo != null)
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.transparent),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(logo, fit: BoxFit.cover),
              ),
            )
          else if (icon != null)
            Icon(icon, size: 23, color: const Color(0xFF143109)),

          const SizedBox(width: 10),

          Expanded(
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                color: const Color(0xFF143109),
                fontSize: 12, // Slightly larger for readability
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}