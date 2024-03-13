import 'dart:async';

import 'package:flutter/material.dart';

import 'SignupPage.dart';

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
            style: TextStyle(color: Colors.white, fontSize: 64),
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
              SizedBox(height: 10),
              Text(
                'Cut down on waste as possible, and dispose properly',
                style: TextStyle(
                  color: Color.fromARGB(202, 26, 236, 100),
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20),
              Image.asset('assets/image/On1scroll.jpg'),
              SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 120),
            backgroundColor: Colors.green,
            elevation: 0,
          ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => onboarding2())); 
              },
              child: Text('Next',
              style: TextStyle(color: Colors.white),
              ),
             ),
  ],
          ),
        ),
      ),
    );
  }
}


class onboarding2 extends StatelessWidget {
  const onboarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/onboarding2pic.jpg'),
              SizedBox(height: 80),
              Text(
                'Reuse',
                style: TextStyle(
                  color: Color.fromARGB(202, 26, 236, 100),
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Give new life to old items, and avoid waste',
                style: TextStyle(
                  color: Color.fromARGB(202, 26, 236, 100),
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20),
              Image.asset('assets/image/On2scroll.jpg'),
              SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 120),
            backgroundColor: Colors.green,
            elevation: 0,
          ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => onboarding3())); 
              },   
              child: Text('Next',
              style: TextStyle(color: Colors.white),
              ), 
             ),
            ],
          ),
        ),
      ),
    );
  }
  }


class onboarding3 extends StatelessWidget {
  const onboarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/onboarding3pic.jpg'),
              SizedBox(height: 80),
              Text(
                'Recycle',
                style: TextStyle(
                  color: Color.fromARGB(202, 26, 236, 100),
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Sort, recycle, and contribute to a circular economy',
                style: TextStyle(
                  color: Color.fromARGB(202, 26, 236, 100),
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20),
              Image.asset('assets/image/on3scroll.jpg'),
              SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 120),
            backgroundColor: Colors.green,
            elevation: 0,
          ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => SignupPage())); 
              },   
              child: Text('Get Started',
              style: TextStyle(color: Colors.white),
              ), 
             ),
             ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 120),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => onboarding3())); 
              },   
              child: Text('Log In',
              style: TextStyle(color: Colors.green),
              ), 
             ),
            ],
          ),
        ),
      ),
    );
  }
  }