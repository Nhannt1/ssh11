import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF121212),
        body: SafeArea(
            child: Center(
          child: Container(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "asset/images/anh2.png",
                width: 150,
                height: 130,
                fit: BoxFit.contain,
              ),
            ],
          )),
        )));
  }
}
