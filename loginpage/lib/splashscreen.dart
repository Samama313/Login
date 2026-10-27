
import 'package:flutter/material.dart';
import 'loginscreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          Future.delayed(const Duration(seconds: 5), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          });

          return const Scaffold(
            body: Center(
              child: Text("My Application"),
            ),
          );
        },
      ),
    );
  }
}
