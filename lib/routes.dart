import 'package:onuche_david/Pages/Projects/crypto_projects.dart';
import 'package:onuche_david/Pages/contact.dart';
import 'package:onuche_david/main.dart';
import 'package:onuche_david/mobile/contact_mobile.dart';
import 'package:onuche_david/mobile/landing_page_mobile.dart';
import 'package:onuche_david/mobile/project_mobile.dart';
import 'package:flutter/material.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const PortfolioScreen();
            } else {
              return const PortfolioScreen2();
            }
          }),
        );
      case '/contact':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return const ContactWeb();
                  } else {
                    return const ContactMobile();
                  }
                }),
            settings: settings);
      case '/works':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return const Projects1();
                  } else {
                    return const Projects2();
                  }
                }),
            settings: settings);
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const PortfolioScreen();
            } else {
              return const PortfolioScreen2();
            }
          }),
        );
    }
  }
}
