import 'dart:async';

import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());   // define it once at root level.
  }
}

  class SplashScreen extends StatefulWidget {
    @override
  Splash createState() => Splash();
  
}

class Splash extends State<SplashScreen>  {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
            Duration(seconds:3),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => Onboarding1())));

    var green = Colors.green;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align( alignment: Alignment.center),
            Text(
              "EcoNaija",
            style: TextStyle(color: Colors.white, fontSize: 70),
            textAlign: TextAlign.center,
            ),
            Text(
              "Reduce.Reuse.Recycle",
            style: TextStyle(color: Colors.white, fontSize: 19),
            textAlign: TextAlign.center,
              ),
          ],
        )
      ),
    );


   
}
  }
  

class Onboarding1 extends StatelessWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/Onboarding1pic.jpg'),
              SizedBox(height: 80),
              Text(
                'Reduce',
                style: TextStyle(
                  color: Color.fromARGB(202, 26, 236, 100),
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'cut down on waste as possible, and dispose properly',
                style: TextStyle(
                  color: Color.fromARGB(202, 26, 236, 100),
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
