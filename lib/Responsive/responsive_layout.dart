import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody; 

   const ResponsiveLayout({super.key, required this.desktopBody, required this.mobileBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth < 600) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      }
      );
  }
}