import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(
      Duration(milliseconds: 1500),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage1(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 188, 189),
      body: Center(
        child: Column(children: [
          Expanded(
            child: _getLogo(),
          ),
        ]),
      ),
    );
  }

  Widget _getLogo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo.png",
          height: 250,
          width: 400,
        ),
        const Text(
          "Bienvenido a FoodMet",
          style: TextStyle(
              fontSize: 32, color: Colors.white, fontWeight: FontWeight.w900),
        ),
        const Text("Nutricion de altra cocina",
            style: TextStyle(
                fontFamily: 'RobotoMono', fontSize: 18, color: Colors.white))
      ],
    );
  }
}
