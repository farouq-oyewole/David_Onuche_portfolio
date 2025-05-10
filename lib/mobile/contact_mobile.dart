import 'package:flutter/material.dart';
import 'package:onuche_david/component.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        endDrawer: const Drawer2(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: const IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/Images/contactss.jpeg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              )
            ];
          },
          body: const SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: ContactFormMobile2(),
          ),
        ),
      ),
    );
  }
}
