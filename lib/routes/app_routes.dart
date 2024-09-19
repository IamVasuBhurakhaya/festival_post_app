import 'package:festival_post_app/views/detail_page/detail_page.dart';
import 'package:festival_post_app/views/home_page/home_page.dart';
import 'package:festival_post_app/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static String splashscreen = "/";
  static String homePage = "home_page";
  static String detailPage = "detail_page";

  static Map<String, Widget Function(BuildContext)> routes = {
    splashscreen: (context) => const SplashScreen(),
    homePage: (context) => const HomePage(),
    detailPage: (context) => const DetailPage(),
  };
}
