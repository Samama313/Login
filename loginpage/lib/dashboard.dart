
import 'package:flutter/material.dart';
import 'loginscreen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text("Menu")),
            ListTile(
              title: const Text("Home"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text("Login"),
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
      body: const Center(child: Text("Welcome to Dashboard!")),
    );
  }
}
