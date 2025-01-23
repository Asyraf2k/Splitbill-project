import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ambil argument yang dikirim dari LoginPage
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String username = args['username'] as String;

    return Scaffold(
      appBar: AppBar(title: Text("Welcome")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello, $username!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke login page
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
