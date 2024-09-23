import 'dart:async';
import 'package:festival_post_app/routes/app_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.homePage);
        timer.cancel();
      },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("data"),
        //   child: kIsWeb
        //       ? Image.network("lib/assets/gifs/quotes.gif")
        //       : Image.asset("lib/assets/gifs/quotes.gif"),
      ),
    );
  }
}
