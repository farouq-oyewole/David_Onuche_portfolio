
import 'package:flutter/material.dart';
import 'package:onuche_david/component.dart';
import 'package:onuche_david/mobile/contact_mobile.dart';

import '../responsive/responsive_layout.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
         body: ResponsiveLayout(desktopBody: ContactWeb(), mobileBody: ContactMobile()),
    );
  }
}

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer2(),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(size: 25.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/Images/da_logo.jpeg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: const TabsWebList(),
            ),
          ];
        },
        body: const SingleChildScrollView(
          child: ContactFormWeb2(),
        ),
      ),
    );
  }
}
