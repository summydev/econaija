import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/onboarding1');
    });

    var green = Colors.green;
    return MaterialApp(
      home: Scaffold(
          backgroundColor: green,
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "EcoNaija",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
                "Reduce.Reuse.Recycle",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          )),
    );
  }
}

void timer(Duration duration, Null Function() param1) {}

Widget section(String title) {
  return Container(
    decoration: const BoxDecoration(),
    child: Text(title),
  );
}

void main() {
  runApp(MaterialApp(
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => SplashScreen(),
      '/boarding1': (context) => Onboarding1(),
    },
  ));
}

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    var green = Colors.green;
    return Scaffold(
      backgroundColor: green,
    );
  }
}
